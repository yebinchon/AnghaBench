
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint16_t ;
typedef scalar_t__ time_t ;
struct regional {int dummy; } ;
struct key_entry_key {int dummy; } ;
struct key_entry_data {int isbad; int * algo; int * rrset_data; int rrset_type; int * reason; scalar_t__ ttl; } ;


 int LDNS_RR_TYPE_DNSKEY ;
 int key_entry_setup (struct regional*,int *,size_t,int ,struct key_entry_key**,struct key_entry_data**) ;

struct key_entry_key*
key_entry_create_bad(struct regional* region,
 uint8_t* name, size_t namelen, uint16_t dclass, time_t ttl,
 time_t now)
{
 struct key_entry_key* k;
 struct key_entry_data* d;
 if(!key_entry_setup(region, name, namelen, dclass, &k, &d))
  return ((void*)0);
 d->ttl = now + ttl;
 d->isbad = 1;
 d->reason = ((void*)0);
 d->rrset_type = LDNS_RR_TYPE_DNSKEY;
 d->rrset_data = ((void*)0);
 d->algo = ((void*)0);
 return k;
}
