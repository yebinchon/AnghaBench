
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_30__ TYPE_5__ ;
typedef struct TYPE_29__ TYPE_4__ ;
typedef struct TYPE_28__ TYPE_3__ ;
typedef struct TYPE_27__ TYPE_2__ ;
typedef struct TYPE_26__ TYPE_20__ ;
typedef struct TYPE_25__ TYPE_1__ ;


struct sockaddr_storage {int dummy; } ;
struct sockaddr {int sa_family; } ;
typedef int ss ;
typedef int socklen_t ;
struct TYPE_25__ {int server; } ;
typedef TYPE_1__ krb5_ticket ;
typedef int krb5_socket_t ;
typedef int krb5_principal ;
typedef int krb5_log_facility ;
typedef int krb5_keytab ;
typedef scalar_t__ krb5_error_code ;
struct TYPE_27__ {scalar_t__ length; int * data; } ;
typedef TYPE_2__ krb5_data ;
typedef int krb5_context ;
typedef TYPE_3__* krb5_authenticator ;
typedef int * krb5_auth_context ;
struct TYPE_26__ {int principal; } ;
struct TYPE_29__ {TYPE_20__ entry; } ;
typedef TYPE_4__ hdb_entry_ex ;
typedef int entry ;
typedef int addr_name ;
struct TYPE_30__ {scalar_t__ (* hdb_store ) (int ,TYPE_5__*,int ,TYPE_4__*) ;scalar_t__ (* hdb_rename ) (int ,TYPE_5__*,int *) ;scalar_t__ (* hdb_close ) (int ,TYPE_5__*) ;scalar_t__ (* hdb_open ) (int ,TYPE_5__*,int,int) ;} ;
struct TYPE_28__ {int crealm; int cname; } ;
typedef TYPE_5__ HDB ;


 scalar_t__ HDB_ERR_EXISTS ;
 scalar_t__ HEIM_ERR_EOF ;
 int HPROP_PORT ;
 int HPROP_VERSION ;
 int O_CREAT ;
 int O_RDWR ;
 int O_TRUNC ;
 int STDIN_FILENO ;
 int _krb5_principalname2krb5_principal (int ,int *,int ,int ) ;
 int args ;
 int asprintf (char**,char*,int *) ;
 int * database ;
 scalar_t__ errno ;
 int errx (int,char*) ;
 int exit (int) ;
 int free (char*) ;
 scalar_t__ from_stdin ;
 scalar_t__ getarg (int ,int ,int,char**,int*) ;
 scalar_t__ getpeername (int ,struct sockaddr*,int*) ;
 scalar_t__ hdb_create (int ,TYPE_5__**,char*) ;
 int * hdb_default_db (int ) ;
 int hdb_free_entry (int ,TYPE_4__*) ;
 int hdb_kt_ops ;
 int hdb_print_entry (int ,TYPE_5__*,TYPE_4__*,int ) ;
 scalar_t__ hdb_value2entry (int ,TYPE_2__*,TYPE_20__*) ;
 scalar_t__ help_flag ;
 int * inet_ntop (int ,int ,char*,int) ;
 int inetd_flag ;
 scalar_t__ krb5_auth_con_getauthenticator (int ,int *,TYPE_3__**) ;
 int krb5_data_free (TYPE_2__*) ;
 int krb5_err (int ,int,scalar_t__,char*,...) ;
 int krb5_errx (int ,int,char*,char*) ;
 int krb5_free_principal (int ,int ) ;
 int krb5_free_ticket (int ,TYPE_1__*) ;
 int krb5_getportbyname (int ,char*,char*,int ) ;
 scalar_t__ krb5_init_context (int *) ;
 scalar_t__ krb5_kt_close (int ,int ) ;
 scalar_t__ krb5_kt_default (int ,int *) ;
 scalar_t__ krb5_kt_register (int ,int *) ;
 scalar_t__ krb5_kt_resolve (int ,int *,int *) ;
 int krb5_log (int ,int *,int ,char*,...) ;
 scalar_t__ krb5_make_principal (int ,int *,int *,char*,char*,int *) ;
 scalar_t__ krb5_openlog (int ,char*,int **) ;
 int krb5_principal_compare (int ,int ,int ) ;
 scalar_t__ krb5_read_message (int ,int *,TYPE_2__*) ;
 scalar_t__ krb5_read_priv_message (int ,int *,int *,TYPE_2__*) ;
 scalar_t__ krb5_recvauth (int ,int **,int *,int ,int *,int ,int ,TYPE_1__**) ;
 int krb5_set_default_realm (int ,int *) ;
 int krb5_set_warn_dest (int ,int *) ;
 scalar_t__ krb5_unparse_name (int ,int ,char**) ;
 int krb5_warnx (int ,char*,char*) ;
 int krb5_write_priv_message (int ,int *,int *,TYPE_2__*) ;
 int * ktname ;
 int * local_realm ;
 int memset (TYPE_4__*,int ,int) ;
 int mini_inetd (int ,int *) ;
 int num_args ;
 scalar_t__ print_dump ;
 int print_version (int *) ;
 int rk_INVALID_SOCKET ;
 int rk_closesocket (int ) ;
 int setprogname (char*) ;
 int socket_get_address (struct sockaddr*) ;
 int stdout ;
 char* strdup (char*) ;
 int strlcpy (char*,char*,int) ;
 scalar_t__ strncmp (char*,char*,int) ;
 scalar_t__ stub1 (int ,TYPE_5__*,int,int) ;
 scalar_t__ stub2 (int ,TYPE_5__*) ;
 scalar_t__ stub3 (int ,TYPE_5__*,int *) ;
 scalar_t__ stub4 (int ,TYPE_5__*,int ,TYPE_4__*) ;
 char* unparseable_name ;
 int usage (int) ;
 scalar_t__ version_flag ;

int
main(int argc, char **argv)
{
    krb5_error_code ret;
    krb5_context context;
    krb5_auth_context ac = ((void*)0);
    krb5_principal c1, c2;
    krb5_authenticator authent;
    krb5_keytab keytab;
    krb5_socket_t sock = rk_INVALID_SOCKET;
    HDB *db = ((void*)0);
    int optidx = 0;
    char *tmp_db;
    krb5_log_facility *fac;
    int nprincs;

    setprogname(argv[0]);

    ret = krb5_init_context(&context);
    if(ret)
 exit(1);

    ret = krb5_openlog(context, "hpropd", &fac);
    if(ret)
 errx(1, "krb5_openlog");
    krb5_set_warn_dest(context, fac);

    if(getarg(args, num_args, argc, argv, &optidx))
 usage(1);

    if(local_realm != ((void*)0))
 krb5_set_default_realm(context, local_realm);

    if(help_flag)
 usage(0);
    if(version_flag) {
 print_version(((void*)0));
 exit(0);
    }

    argc -= optidx;
    argv += optidx;

    if (argc != 0)
 usage(1);

    if (database == ((void*)0))
 database = hdb_default_db(context);

    if(from_stdin) {
 sock = STDIN_FILENO;
    } else {
 struct sockaddr_storage ss;
 struct sockaddr *sa = (struct sockaddr *)&ss;
 socklen_t sin_len = sizeof(ss);
 char addr_name[256];
 krb5_ticket *ticket;
 char *server;

 sock = STDIN_FILENO;
 inetd_flag = 0;

 if (!inetd_flag) {
     mini_inetd (krb5_getportbyname (context, "hprop", "tcp",
         HPROP_PORT), &sock);
 }
 sin_len = sizeof(ss);
 if(getpeername(sock, sa, &sin_len) < 0)
     krb5_err(context, 1, errno, "getpeername");

 if (inet_ntop(sa->sa_family,
        socket_get_address (sa),
        addr_name,
        sizeof(addr_name)) == ((void*)0))
     strlcpy (addr_name, "unknown address",
       sizeof(addr_name));

 krb5_log(context, fac, 0, "Connection from %s", addr_name);

 ret = krb5_kt_register(context, &hdb_kt_ops);
 if(ret)
     krb5_err(context, 1, ret, "krb5_kt_register");

 if (ktname != ((void*)0)) {
     ret = krb5_kt_resolve(context, ktname, &keytab);
     if (ret)
  krb5_err (context, 1, ret, "krb5_kt_resolve %s", ktname);
 } else {
     ret = krb5_kt_default (context, &keytab);
     if (ret)
  krb5_err (context, 1, ret, "krb5_kt_default");
 }

 ret = krb5_recvauth(context, &ac, &sock, HPROP_VERSION, ((void*)0),
       0, keytab, &ticket);
 if(ret)
     krb5_err(context, 1, ret, "krb5_recvauth");

 ret = krb5_unparse_name(context, ticket->server, &server);
 if (ret)
     krb5_err(context, 1, ret, "krb5_unparse_name");
 if (strncmp(server, "hprop/", 5) != 0)
     krb5_errx(context, 1, "ticket not for hprop (%s)", server);

 free(server);
 krb5_free_ticket (context, ticket);

 ret = krb5_auth_con_getauthenticator(context, ac, &authent);
 if(ret)
     krb5_err(context, 1, ret, "krb5_auth_con_getauthenticator");

 ret = krb5_make_principal(context, &c1, ((void*)0), "kadmin", "hprop", ((void*)0));
 if(ret)
     krb5_err(context, 1, ret, "krb5_make_principal");
 _krb5_principalname2krb5_principal(context, &c2,
        authent->cname, authent->crealm);
 if(!krb5_principal_compare(context, c1, c2)) {
     char *s;
     ret = krb5_unparse_name(context, c2, &s);
     if (ret)
  s = unparseable_name;
     krb5_errx(context, 1, "Unauthorized connection from %s", s);
 }
 krb5_free_principal(context, c1);
 krb5_free_principal(context, c2);

 ret = krb5_kt_close(context, keytab);
 if(ret)
     krb5_err(context, 1, ret, "krb5_kt_close");
    }

    if(!print_dump) {
 asprintf(&tmp_db, "%s~", database);

 ret = hdb_create(context, &db, tmp_db);
 if(ret)
     krb5_err(context, 1, ret, "hdb_create(%s)", tmp_db);
 ret = db->hdb_open(context, db, O_RDWR | O_CREAT | O_TRUNC, 0600);
 if(ret)
     krb5_err(context, 1, ret, "hdb_open(%s)", tmp_db);
    }

    nprincs = 0;
    while(1){
 krb5_data data;
 hdb_entry_ex entry;

 if(from_stdin) {
     ret = krb5_read_message(context, &sock, &data);
     if(ret != 0 && ret != HEIM_ERR_EOF)
  krb5_err(context, 1, ret, "krb5_read_message");
 } else {
     ret = krb5_read_priv_message(context, ac, &sock, &data);
     if(ret)
  krb5_err(context, 1, ret, "krb5_read_priv_message");
 }

 if(ret == HEIM_ERR_EOF || data.length == 0) {
     if(!from_stdin) {
  data.data = ((void*)0);
  data.length = 0;
  krb5_write_priv_message(context, ac, &sock, &data);
     }
     if(!print_dump) {
  ret = db->hdb_close(context, db);
  if(ret)
      krb5_err(context, 1, ret, "db_close");
  ret = db->hdb_rename(context, db, database);
  if(ret)
      krb5_err(context, 1, ret, "db_rename");
     }
     break;
 }
 memset(&entry, 0, sizeof(entry));
 ret = hdb_value2entry(context, &data, &entry.entry);
 krb5_data_free(&data);
 if(ret)
     krb5_err(context, 1, ret, "hdb_value2entry");
 if(print_dump)
     hdb_print_entry(context, db, &entry, stdout);
 else {
     ret = db->hdb_store(context, db, 0, &entry);
     if(ret == HDB_ERR_EXISTS) {
  char *s;
  ret = krb5_unparse_name(context, entry.entry.principal, &s);
  if (ret)
      s = strdup(unparseable_name);
  krb5_warnx(context, "Entry exists: %s", s);
  free(s);
     } else if(ret)
  krb5_err(context, 1, ret, "db_store");
     else
  nprincs++;
 }
 hdb_free_entry(context, &entry);
    }
    if (!print_dump)
 krb5_log(context, fac, 0, "Received %d principals", nprincs);

    if (inetd_flag == 0)
 rk_closesocket(sock);

    exit(0);
}
