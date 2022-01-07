
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct krb5_krbhst_data {int hosts; int * index; int * end; int flags; int * realm; } ;
typedef int krb5_context ;


 int KD_CONFIG_EXISTS ;
 int KD_LARGE_MSG ;
 int KRB5_KRBHST_FLAGS_LARGE_MSG ;
 int _krb5_debug (int ,int,char*,char const*,char const*,int) ;
 struct krb5_krbhst_data* calloc (int,int) ;
 int free (struct krb5_krbhst_data*) ;
 int strchr (char const*,char) ;
 int * strdup (char const*) ;

__attribute__((used)) static struct krb5_krbhst_data*
common_init(krb5_context context,
     const char *service,
     const char *realm,
     int flags)
{
    struct krb5_krbhst_data *kd;

    if((kd = calloc(1, sizeof(*kd))) == ((void*)0))
 return ((void*)0);

    if((kd->realm = strdup(realm)) == ((void*)0)) {
 free(kd);
 return ((void*)0);
    }

    _krb5_debug(context, 2, "Trying to find service %s for realm %s flags %x",
  service, realm, flags);


    if (!strchr(realm, '.'))
 kd->flags |= KD_CONFIG_EXISTS;

    if (flags & KRB5_KRBHST_FLAGS_LARGE_MSG)
 kd->flags |= KD_LARGE_MSG;
    kd->end = kd->index = &kd->hosts;
    return kd;
}
