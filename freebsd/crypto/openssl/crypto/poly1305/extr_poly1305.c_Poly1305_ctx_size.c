
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct poly1305_context {int dummy; } ;



size_t Poly1305_ctx_size(void)
{
    return sizeof(struct poly1305_context);
}
