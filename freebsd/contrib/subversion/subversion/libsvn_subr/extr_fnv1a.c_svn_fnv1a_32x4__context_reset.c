
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ buffered; void** hashes; } ;
typedef TYPE_1__ svn_fnv1a_32x4__context_t ;


 void* FNV1_BASE_32 ;

void
svn_fnv1a_32x4__context_reset(svn_fnv1a_32x4__context_t *context)
{
  context->hashes[0] = FNV1_BASE_32;
  context->hashes[1] = FNV1_BASE_32;
  context->hashes[2] = FNV1_BASE_32;
  context->hashes[3] = FNV1_BASE_32;

  context->buffered = 0;
}
