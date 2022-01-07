
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct autr_ta {size_t rr_len; size_t dname_len; int * rr; } ;


 scalar_t__ calloc (int,int) ;
 int free (int *) ;

__attribute__((used)) static struct autr_ta*
autr_ta_create(uint8_t* rr, size_t rr_len, size_t dname_len)
{
 struct autr_ta* ta = (struct autr_ta*)calloc(1, sizeof(*ta));
 if(!ta) {
  free(rr);
  return ((void*)0);
 }
 ta->rr = rr;
 ta->rr_len = rr_len;
 ta->dname_len = dname_len;
 return ta;
}
