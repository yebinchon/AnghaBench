
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef int boolean_t ;
struct TYPE_7__ {int abd_flags; } ;
typedef TYPE_1__ abd_t ;


 int ABD_FLAG_META ;
 TYPE_1__* abd_alloc (size_t,int) ;
 TYPE_1__* abd_alloc_linear (size_t,int) ;
 scalar_t__ abd_is_linear (TYPE_1__*) ;

abd_t *
abd_alloc_sametype(abd_t *sabd, size_t size)
{
 boolean_t is_metadata = (sabd->abd_flags & ABD_FLAG_META) != 0;
 if (abd_is_linear(sabd)) {
  return (abd_alloc_linear(size, is_metadata));
 } else {
  return (abd_alloc(size, is_metadata));
 }
}
