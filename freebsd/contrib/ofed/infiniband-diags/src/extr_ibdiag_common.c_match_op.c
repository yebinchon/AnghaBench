
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int op_fn_t ;
struct TYPE_3__ {int * fn; scalar_t__ alias; scalar_t__ name; } ;
typedef TYPE_1__ match_rec_t ;


 int strcasecmp (scalar_t__,char*) ;

op_fn_t *match_op(const match_rec_t match_tbl[], char *name)
{
 const match_rec_t *r;
 for (r = match_tbl; r->name; r++)
  if (!strcasecmp(r->name, name) ||
      (r->alias && !strcasecmp(r->alias, name)))
   return r->fn;
 return ((void*)0);
}
