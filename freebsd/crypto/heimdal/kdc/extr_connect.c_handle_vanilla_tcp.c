
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct descr {int len; scalar_t__ buf; } ;
typedef int krb5_storage ;
typedef int krb5_kdc_configuration ;
typedef int krb5_context ;


 int kdc_log (int ,int *,int ,char*) ;
 int krb5_ret_uint32 (int *,int*) ;
 int krb5_storage_free (int *) ;
 int * krb5_storage_from_mem (scalar_t__,int) ;
 int memmove (scalar_t__,scalar_t__,int) ;

__attribute__((used)) static int
handle_vanilla_tcp (krb5_context context,
      krb5_kdc_configuration *config,
      struct descr *d)
{
    krb5_storage *sp;
    uint32_t len;

    sp = krb5_storage_from_mem(d->buf, d->len);
    if (sp == ((void*)0)) {
 kdc_log (context, config, 0, "krb5_storage_from_mem failed");
 return -1;
    }
    krb5_ret_uint32(sp, &len);
    krb5_storage_free(sp);
    if(d->len - 4 >= len) {
 memmove(d->buf, d->buf + 4, d->len - 4);
 d->len -= 4;
 return 1;
    }
    return 0;
}
