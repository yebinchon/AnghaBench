
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uid_t ;
typedef int pid_t ;
typedef int krb5_error_code ;
typedef int krb5_context ;
typedef int kcm_ccache ;
typedef int gid_t ;


 int KRB5_CC_NOMEM ;
 int free (char*) ;
 int kcm_ccache_new (int ,char*,int *) ;
 char* kcm_ccache_nextid (int ,int ,int ) ;

krb5_error_code
kcm_ccache_gen_new(krb5_context context,
     pid_t pid,
     uid_t uid,
     gid_t gid,
     kcm_ccache *ccache)
{
    krb5_error_code ret;
    char *name;

    name = kcm_ccache_nextid(pid, uid, gid);
    if (name == ((void*)0)) {
 return KRB5_CC_NOMEM;
    }

    ret = kcm_ccache_new(context, name, ccache);

    free(name);
    return ret;
}
