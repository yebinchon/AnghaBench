
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint16_t ;
struct ta_key {size_t len; int type; int data; } ;


 int free (struct ta_key*) ;
 scalar_t__ malloc (int) ;
 int memdup (int *,size_t) ;
 int memset (struct ta_key*,int ,int) ;

__attribute__((used)) static struct ta_key*
anchor_new_ta_key(uint8_t* rdata, size_t rdata_len, uint16_t type)
{
 struct ta_key* k = (struct ta_key*)malloc(sizeof(*k));
 if(!k)
  return ((void*)0);
 memset(k, 0, sizeof(*k));
 k->data = memdup(rdata, rdata_len);
 if(!k->data) {
  free(k);
  return ((void*)0);
 }
 k->len = rdata_len;
 k->type = type;
 return k;
}
