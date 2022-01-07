
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint16_t ;
struct trust_anchor {TYPE_1__* autr; } ;
struct autr_ta {struct autr_ta* next; } ;
struct TYPE_2__ {struct autr_ta* keys; } ;


 scalar_t__ ta_compare (struct autr_ta*,int ,int *,size_t) ;

__attribute__((used)) static int
find_key(struct trust_anchor* tp, uint16_t t, uint8_t* rdata, size_t rdata_len,
 struct autr_ta** result)
{
 struct autr_ta* ta;
 if(!tp || !rdata) {
  *result = ((void*)0);
  return 0;
 }
 for(ta=tp->autr->keys; ta; ta=ta->next) {
  if(ta_compare(ta, t, rdata, rdata_len) == 0) {
   *result = ta;
   return 1;
  }
 }
 *result = ((void*)0);
 return 1;
}
