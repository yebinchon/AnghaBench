
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* add_cb ) (int *,unsigned int,unsigned char const**,size_t*,int*,int ) ;int add_arg; } ;
typedef TYPE_1__ custom_ext_add_cb_wrap ;
typedef int X509 ;
typedef int SSL ;


 int stub1 (int *,unsigned int,unsigned char const**,size_t*,int*,int ) ;

__attribute__((used)) static int custom_ext_add_old_cb_wrap(SSL *s, unsigned int ext_type,
                                      unsigned int context,
                                      const unsigned char **out,
                                      size_t *outlen, X509 *x, size_t chainidx,
                                      int *al, void *add_arg)
{
    custom_ext_add_cb_wrap *add_cb_wrap = (custom_ext_add_cb_wrap *)add_arg;

    if (add_cb_wrap->add_cb == ((void*)0))
        return 1;

    return add_cb_wrap->add_cb(s, ext_type, out, outlen, al,
                               add_cb_wrap->add_arg);
}
