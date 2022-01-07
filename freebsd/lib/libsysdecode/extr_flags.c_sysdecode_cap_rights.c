
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct name_table {int * str; int val; } ;
struct TYPE_5__ {int * cr_rights; } ;
typedef TYPE_1__ cap_rights_t ;
typedef int FILE ;


 int CAPARSIZE (TYPE_1__*) ;
 int CAPIDXBIT (int ) ;
 scalar_t__ cap_rights_is_set (TYPE_1__*,int ) ;
 struct name_table* caprights ;
 int fprintf (int *,char*,...) ;

void
sysdecode_cap_rights(FILE *fp, cap_rights_t *rightsp)
{
 struct name_table *t;
 int i;
 bool comma;

 for (i = 0; i < CAPARSIZE(rightsp); i++) {
  if (CAPIDXBIT(rightsp->cr_rights[i]) != 1 << i) {
   fprintf(fp, "invalid cap_rights_t");
   return;
  }
 }
 comma = 0;
 for (t = caprights; t->str != ((void*)0); t++) {
  if (cap_rights_is_set(rightsp, t->val)) {
   fprintf(fp, "%s%s", comma ? "," : "", t->str);
   comma = 1;
  }
 }
}
