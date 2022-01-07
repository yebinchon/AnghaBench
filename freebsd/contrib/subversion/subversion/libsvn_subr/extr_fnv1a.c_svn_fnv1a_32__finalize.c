
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int hash; } ;
typedef TYPE_1__ svn_fnv1a_32__context_t ;
typedef int apr_uint32_t ;



apr_uint32_t
svn_fnv1a_32__finalize(svn_fnv1a_32__context_t *context)
{
  return context->hash;
}
