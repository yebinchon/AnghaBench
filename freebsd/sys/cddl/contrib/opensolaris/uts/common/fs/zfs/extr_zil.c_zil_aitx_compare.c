
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_2__ {int ia_foid; } ;
typedef TYPE_1__ itx_async_node_t ;


 int AVL_CMP (int const,int const) ;

__attribute__((used)) static int
zil_aitx_compare(const void *x1, const void *x2)
{
 const uint64_t o1 = ((itx_async_node_t *)x1)->ia_foid;
 const uint64_t o2 = ((itx_async_node_t *)x2)->ia_foid;

 return (AVL_CMP(o1, o2));
}
