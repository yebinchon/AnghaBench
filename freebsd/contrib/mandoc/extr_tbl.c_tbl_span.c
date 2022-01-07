
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tbl_span {struct tbl_span* next; } ;
struct tbl_node {struct tbl_span* current_span; struct tbl_span* first_span; } ;



struct tbl_span *
tbl_span(struct tbl_node *tbl)
{
 struct tbl_span *span;

 span = tbl->current_span ? tbl->current_span->next
     : tbl->first_span;
 if (span != ((void*)0))
  tbl->current_span = span;
 return span;
}
