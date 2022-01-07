
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
typedef int uint16_t ;
struct trust_anchor {size_t namelen; TYPE_1__* autr; int * name; } ;
struct autr_ta {struct autr_ta* next; } ;
struct TYPE_2__ {struct autr_ta* keys; } ;


 size_t LDNS_RR_CLASS_IN ;
 size_t LDNS_RR_TYPE_DNSKEY ;
 struct autr_ta* autr_ta_create (int *,size_t,size_t) ;
 int htonl (int ) ;
 int htons (size_t) ;
 scalar_t__ malloc (size_t) ;
 int memmove (int *,int *,size_t) ;

__attribute__((used)) static struct autr_ta*
add_key(struct trust_anchor* tp, uint32_t ttl, uint8_t* rdata, size_t rdata_len)
{
 struct autr_ta* ta;
 uint8_t* rr;
 size_t rr_len, dname_len;
 uint16_t rrtype = htons(LDNS_RR_TYPE_DNSKEY);
 uint16_t rrclass = htons(LDNS_RR_CLASS_IN);
 uint16_t rdlen = htons(rdata_len);
 dname_len = tp->namelen;
 ttl = htonl(ttl);
 rr_len = dname_len + 10 + rdata_len;
 rr = (uint8_t*)malloc(rr_len);
 if(!rr) return ((void*)0);
 memmove(rr, tp->name, tp->namelen);
 memmove(rr+dname_len, &rrtype, 2);
 memmove(rr+dname_len+2, &rrclass, 2);
 memmove(rr+dname_len+4, &ttl, 4);
 memmove(rr+dname_len+8, &rdlen, 2);
 memmove(rr+dname_len+10, rdata, rdata_len);
 ta = autr_ta_create(rr, rr_len, dname_len);
 if(!ta) {

  return ((void*)0);
 }

 ta->next = tp->autr->keys;
 tp->autr->keys = ta;
 return ta;
}
