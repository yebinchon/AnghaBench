
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int hash; } ;
typedef TYPE_1__ svn_fnv1a_32__context_t ;
typedef int apr_size_t ;


 int fnv1a_32 (int ,void const*,int ) ;

void
svn_fnv1a_32__update(svn_fnv1a_32__context_t *context,
                     const void *data,
                     apr_size_t len)
{
  context->hash = fnv1a_32(context->hash, data, len);
}
