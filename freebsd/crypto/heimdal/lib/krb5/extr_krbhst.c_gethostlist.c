
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int krb5_krbhst_info ;
typedef int krb5_krbhst_handle ;
typedef scalar_t__ krb5_error_code ;
typedef int krb5_context ;
typedef int host ;


 scalar_t__ ENOMEM ;
 scalar_t__ KRB5_KDC_UNREACH ;
 int MAXHOSTNAMELEN ;
 int N_ (char*,char*) ;
 char** calloc (int,int) ;
 int krb5_free_krbhst (int ,char**) ;
 int krb5_krbhst_free (int ,int ) ;
 scalar_t__ krb5_krbhst_init (int ,char const*,unsigned int,int *) ;
 scalar_t__ krb5_krbhst_next (int ,int ,int **) ;
 scalar_t__ krb5_krbhst_next_as_string (int ,int ,char*,int) ;
 int krb5_krbhst_reset (int ,int ) ;
 int krb5_set_error_message (int ,scalar_t__,int ,char const*) ;
 char* strdup (char*) ;

__attribute__((used)) static krb5_error_code
gethostlist(krb5_context context, const char *realm,
     unsigned int type, char ***hostlist)
{
    krb5_error_code ret;
    int nhost = 0;
    krb5_krbhst_handle handle;
    char host[MAXHOSTNAMELEN];
    krb5_krbhst_info *hostinfo;

    ret = krb5_krbhst_init(context, realm, type, &handle);
    if (ret)
 return ret;

    while(krb5_krbhst_next(context, handle, &hostinfo) == 0)
 nhost++;
    if(nhost == 0) {
 krb5_set_error_message(context, KRB5_KDC_UNREACH,
          N_("No KDC found for realm %s", ""), realm);
 return KRB5_KDC_UNREACH;
    }
    *hostlist = calloc(nhost + 1, sizeof(**hostlist));
    if(*hostlist == ((void*)0)) {
 krb5_krbhst_free(context, handle);
 return ENOMEM;
    }

    krb5_krbhst_reset(context, handle);
    nhost = 0;
    while(krb5_krbhst_next_as_string(context, handle,
         host, sizeof(host)) == 0) {
 if(((*hostlist)[nhost++] = strdup(host)) == ((void*)0)) {
     krb5_free_krbhst(context, *hostlist);
     krb5_krbhst_free(context, handle);
     return ENOMEM;
 }
    }
    (*hostlist)[nhost] = ((void*)0);
    krb5_krbhst_free(context, handle);
    return 0;
}
