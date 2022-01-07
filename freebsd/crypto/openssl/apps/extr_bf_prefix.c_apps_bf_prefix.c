
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int BIO_METHOD ;


 int BIO_TYPE_FILTER ;
 int BIO_meth_free (int *) ;
 int * BIO_meth_new (int ,char*) ;
 int BIO_meth_set_callback_ctrl (int *,int ) ;
 int BIO_meth_set_create (int *,int ) ;
 int BIO_meth_set_ctrl (int *,int ) ;
 int BIO_meth_set_destroy (int *,int ) ;
 int BIO_meth_set_gets (int *,int ) ;
 int BIO_meth_set_puts (int *,int ) ;
 int BIO_meth_set_read_ex (int *,int ) ;
 int BIO_meth_set_write_ex (int *,int ) ;
 int prefix_callback_ctrl ;
 int prefix_create ;
 int prefix_ctrl ;
 int prefix_destroy ;
 int prefix_gets ;
 int * prefix_meth ;
 int prefix_puts ;
 int prefix_read ;
 int prefix_write ;

BIO_METHOD *apps_bf_prefix(void)
{
    if (prefix_meth == ((void*)0)) {
        if ((prefix_meth =
             BIO_meth_new(BIO_TYPE_FILTER, "Prefix filter")) == ((void*)0)
            || !BIO_meth_set_create(prefix_meth, prefix_create)
            || !BIO_meth_set_destroy(prefix_meth, prefix_destroy)
            || !BIO_meth_set_write_ex(prefix_meth, prefix_write)
            || !BIO_meth_set_read_ex(prefix_meth, prefix_read)
            || !BIO_meth_set_puts(prefix_meth, prefix_puts)
            || !BIO_meth_set_gets(prefix_meth, prefix_gets)
            || !BIO_meth_set_ctrl(prefix_meth, prefix_ctrl)
            || !BIO_meth_set_callback_ctrl(prefix_meth, prefix_callback_ctrl)) {
            BIO_meth_free(prefix_meth);
            prefix_meth = ((void*)0);
        }
    }
    return prefix_meth;
}
