
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int HEIMDAL_key_create (int *,int ,int) ;
 int ar_created ;
 int ar_key ;
 int ar_tls_delete ;

__attribute__((used)) static void
init_ar_tls(void *ptr)
{
    int ret;
    HEIMDAL_key_create(&ar_key, ar_tls_delete, ret);
    if (ret == 0)
 ar_created = 1;
}
