
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct futex_address {int fa_key; } ;


 int umtx_key_match (int *,int *) ;

__attribute__((used)) static bool
futex_address_match(const struct futex_address *fa1,
    const struct futex_address *fa2)
{

 return (umtx_key_match(&fa1->fa_key, &fa2->fa_key));
}
