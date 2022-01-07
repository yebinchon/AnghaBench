
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef scalar_t__ uint16_t ;
struct trust_anchor {struct ta_key* keylist; } ;
struct ta_key {scalar_t__ type; size_t len; int data; struct ta_key* next; } ;


 scalar_t__ memcmp (int ,int *,size_t) ;

__attribute__((used)) static struct ta_key*
anchor_find_key(struct trust_anchor* ta, uint8_t* rdata, size_t rdata_len,
 uint16_t type)
{
 struct ta_key* k;
 for(k = ta->keylist; k; k = k->next) {
  if(k->type == type && k->len == rdata_len &&
   memcmp(k->data, rdata, rdata_len) == 0)
   return k;
 }
 return ((void*)0);
}
