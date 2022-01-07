
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {TYPE_2__* recycler; TYPE_2__* source; } ;
typedef TYPE_1__ svn_temp_serializer__context_t ;
struct TYPE_6__ {struct TYPE_6__* upper; } ;
typedef TYPE_2__ source_stack_t ;


 int assert (TYPE_2__*) ;

void
svn_temp_serializer__pop(svn_temp_serializer__context_t *context)
{
  source_stack_t *old = context->source;


  assert(context->source);


  context->source = context->source->upper;


  old->upper = context->recycler;
  context->recycler = old;
}
