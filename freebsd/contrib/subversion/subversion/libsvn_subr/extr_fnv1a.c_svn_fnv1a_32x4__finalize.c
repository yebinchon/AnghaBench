
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int buffered; int buffer; int hashes; } ;
typedef TYPE_1__ svn_fnv1a_32x4__context_t ;
typedef int apr_uint32_t ;


 int finalize_fnv1a_32x4 (int ,int ,int ) ;

apr_uint32_t
svn_fnv1a_32x4__finalize(svn_fnv1a_32x4__context_t *context)
{
  return finalize_fnv1a_32x4(context->hashes,
                             context->buffer,
                             context->buffered);
}
