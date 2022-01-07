
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct futex_address {int fa_key; } ;


 int umtx_key_release (int *) ;

__attribute__((used)) static void
futex_address_free(struct futex_address *fa)
{

 umtx_key_release(&fa->fa_key);
}
