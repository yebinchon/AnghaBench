
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct type {int dummy; } ;
struct field_info {TYPE_1__* fnlist; } ;
struct TYPE_2__ {int fn_fieldlist; struct TYPE_2__* next; } ;


 int * TYPE_FN_FIELDLISTS (struct type*) ;
 int TYPE_NFN_FIELDS (struct type*) ;

__attribute__((used)) static int
attach_fn_fields_to_type (struct field_info *fip, struct type *type)
{
  int n;

  for (n = TYPE_NFN_FIELDS (type);
       fip->fnlist != ((void*)0);
       fip->fnlist = fip->fnlist->next)
    {
      --n;
      TYPE_FN_FIELDLISTS (type)[n] = fip->fnlist->fn_fieldlist;
    }
  return 1;
}
