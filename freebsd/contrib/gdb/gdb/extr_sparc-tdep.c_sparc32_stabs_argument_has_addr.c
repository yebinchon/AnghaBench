
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct type {int dummy; } ;
struct gdbarch {int dummy; } ;


 int TYPE_LENGTH (struct type*) ;
 scalar_t__ sparc_floating_p (struct type*) ;
 scalar_t__ sparc_structure_or_union_p (struct type*) ;

__attribute__((used)) static int
sparc32_stabs_argument_has_addr (struct gdbarch *gdbarch, struct type *type)
{
  return (sparc_structure_or_union_p (type)
   || (sparc_floating_p (type) && TYPE_LENGTH (type) == 16));
}
