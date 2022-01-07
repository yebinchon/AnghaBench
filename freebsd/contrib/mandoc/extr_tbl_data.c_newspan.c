
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tbl_span {int line; struct tbl_span* next; struct tbl_span* prev; struct tbl_row* layout; int * opts; } ;
struct tbl_row {int dummy; } ;
struct tbl_node {struct tbl_span* last_span; int * current_span; struct tbl_span* first_span; int opts; } ;


 struct tbl_span* mandoc_calloc (int,int) ;

__attribute__((used)) static struct tbl_span *
newspan(struct tbl_node *tbl, int line, struct tbl_row *rp)
{
 struct tbl_span *dp;

 dp = mandoc_calloc(1, sizeof(*dp));
 dp->line = line;
 dp->opts = &tbl->opts;
 dp->layout = rp;
 dp->prev = tbl->last_span;

 if (dp->prev == ((void*)0)) {
  tbl->first_span = dp;
  tbl->current_span = ((void*)0);
 } else
  dp->prev->next = dp;
 tbl->last_span = dp;

 return dp;
}
