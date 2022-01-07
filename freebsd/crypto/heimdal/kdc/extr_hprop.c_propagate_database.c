
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct prop_data {int sock; int * auth_context; int context; } ;
typedef int portstr ;
typedef int krb5_realm ;
typedef int krb5_principal ;
typedef int krb5_error_code ;
typedef int krb5_data ;
typedef int krb5_context ;
typedef int krb5_ccache ;
typedef int * krb5_auth_context ;
typedef int HDB ;


 int AP_OPTS_MUTUAL_REQUIRED ;
 int AP_OPTS_USE_SUBKEY ;
 int HPROP_NAME ;
 int HPROP_PORT ;
 int HPROP_VERSION ;
 int KRB5_NT_SRV_HST ;
 int NI_MAXSERV ;
 int close (int) ;
 int errno ;
 int iterate (int ,char const*,int *,int,struct prop_data*) ;
 int krb5_auth_con_free (int ,int *) ;
 int krb5_data_free (int *) ;
 int krb5_data_zero (int *) ;
 int krb5_free_principal (int ,int ) ;
 int krb5_get_default_realm (int ,int *) ;
 int krb5_getportbyname (int ,char*,char*,int ) ;
 int krb5_principal_set_realm (int ,int ,int ) ;
 int krb5_read_priv_message (int ,int *,int*,int *) ;
 int krb5_sendauth (int ,int **,int*,int ,int *,int ,int,int *,int *,int ,int *,int *,int *) ;
 int krb5_sname_to_principal (int ,char*,int ,int ,int *) ;
 int krb5_warn (int ,int ,char*,...) ;
 int krb5_warnx (int ,char*,char*) ;
 int krb5_write_priv_message (int ,int *,int*,int *) ;
 int krb5_xfree (int ) ;
 scalar_t__ local_realm ;
 int ntohs (int ) ;
 int open_socket (int ,char*,char*) ;
 int snprintf (char*,int,char*,int) ;
 char* strchr (char*,char) ;

__attribute__((used)) static int
propagate_database (krb5_context context, int type,
      const char *database_name,
      HDB *db, krb5_ccache ccache,
      int optidx, int argc, char **argv)
{
    krb5_principal server;
    krb5_error_code ret;
    int i, failed = 0;

    for(i = optidx; i < argc; i++){
 krb5_auth_context auth_context;
 int fd;
 struct prop_data pd;
 krb5_data data;

 char *port, portstr[NI_MAXSERV];
 char *host = argv[i];

 port = strchr(host, ':');
 if(port == ((void*)0)) {
     snprintf(portstr, sizeof(portstr), "%u",
       ntohs(krb5_getportbyname (context, "hprop", "tcp",
            HPROP_PORT)));
     port = portstr;
 } else
     *port++ = '\0';

 fd = open_socket(context, host, port);
 if(fd < 0) {
     failed++;
     krb5_warn (context, errno, "connect %s", host);
     continue;
 }

 ret = krb5_sname_to_principal(context, argv[i],
          HPROP_NAME, KRB5_NT_SRV_HST, &server);
 if(ret) {
     failed++;
     krb5_warn(context, ret, "krb5_sname_to_principal(%s)", host);
     close(fd);
     continue;
 }

        if (local_realm) {
            krb5_realm my_realm;
            krb5_get_default_realm(context,&my_realm);
            krb5_principal_set_realm(context,server,my_realm);
     krb5_xfree(my_realm);
        }

 auth_context = ((void*)0);
 ret = krb5_sendauth(context,
       &auth_context,
       &fd,
       HPROP_VERSION,
       ((void*)0),
       server,
       AP_OPTS_MUTUAL_REQUIRED | AP_OPTS_USE_SUBKEY,
       ((void*)0),
       ((void*)0),
       ccache,
       ((void*)0),
       ((void*)0),
       ((void*)0));

 krb5_free_principal(context, server);

 if(ret) {
     failed++;
     krb5_warn(context, ret, "krb5_sendauth (%s)", host);
     close(fd);
     goto next_host;
 }

 pd.context = context;
 pd.auth_context = auth_context;
 pd.sock = fd;

 ret = iterate (context, database_name, db, type, &pd);
 if (ret) {
     krb5_warnx(context, "iterate to host %s failed", host);
     failed++;
     goto next_host;
 }

 krb5_data_zero (&data);
 ret = krb5_write_priv_message(context, auth_context, &fd, &data);
 if(ret) {
     krb5_warn(context, ret, "krb5_write_priv_message");
     failed++;
     goto next_host;
 }

 ret = krb5_read_priv_message(context, auth_context, &fd, &data);
 if(ret) {
     krb5_warn(context, ret, "krb5_read_priv_message: %s", host);
     failed++;
     goto next_host;
 } else
     krb5_data_free (&data);

    next_host:
 krb5_auth_con_free(context, auth_context);
 close(fd);
    }
    if (failed)
 return 1;
    return 0;
}
