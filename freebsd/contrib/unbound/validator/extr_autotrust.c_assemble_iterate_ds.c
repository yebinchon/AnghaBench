
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct autr_ta {size_t rr_len; size_t dname_len; struct autr_ta* next; int * rr; } ;


 scalar_t__ LDNS_RR_TYPE_DS ;
 scalar_t__ sldns_wirerr_get_type (int *,size_t,size_t) ;

__attribute__((used)) static int
assemble_iterate_ds(struct autr_ta** list, uint8_t** rr, size_t* rr_len,
 size_t* dname_len)
{
 while(*list) {
  if(sldns_wirerr_get_type((*list)->rr, (*list)->rr_len,
   (*list)->dname_len) == LDNS_RR_TYPE_DS) {
   *rr = (*list)->rr;
   *rr_len = (*list)->rr_len;
   *dname_len = (*list)->dname_len;
   *list = (*list)->next;
   return 1;
  }
  *list = (*list)->next;
 }
 return 0;
}
