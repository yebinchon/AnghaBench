
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int hash; } ;
typedef TYPE_1__ svn_fnv1a_32__context_t ;


 int FNV1_BASE_32 ;

void
svn_fnv1a_32__context_reset(svn_fnv1a_32__context_t *context)
{
  context->hash = FNV1_BASE_32;
}
