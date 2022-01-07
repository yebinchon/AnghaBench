
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_4__ {int hash; void* key; void* data; } ;
struct TYPE_3__ {int rrset_class; int type; int * dname; int dname_len; int flags; } ;
struct ub_packed_rrset_key {TYPE_2__ entry; TYPE_1__ rk; } ;
struct rrset_parse {int hash; int rrset_class; int type; int dname; int dname_len; int flags; } ;
struct regional {int dummy; } ;
struct packed_rrset_data {int trust; } ;
struct msg_parse {int dummy; } ;
typedef int sldns_buffer ;


 int dname_pkt_copy (int *,int *,int ) ;
 int get_rrset_trust (struct msg_parse*,struct rrset_parse*) ;
 int htons (int ) ;
 scalar_t__ malloc (int ) ;
 int parse_create_rrset (int *,struct rrset_parse*,struct packed_rrset_data**,struct regional*) ;
 scalar_t__ regional_alloc (struct regional*,int ) ;

int
parse_copy_decompress_rrset(sldns_buffer* pkt, struct msg_parse* msg,
 struct rrset_parse *pset, struct regional* region,
 struct ub_packed_rrset_key* pk)
{
 struct packed_rrset_data* data;
 pk->rk.flags = pset->flags;
 pk->rk.dname_len = pset->dname_len;
 if(region)
  pk->rk.dname = (uint8_t*)regional_alloc(
   region, pset->dname_len);
 else pk->rk.dname =
   (uint8_t*)malloc(pset->dname_len);
 if(!pk->rk.dname)
  return 0;

 dname_pkt_copy(pkt, pk->rk.dname, pset->dname);

 pk->rk.type = htons(pset->type);
 pk->rk.rrset_class = pset->rrset_class;

 if(!parse_create_rrset(pkt, pset, &data, region))
  return 0;
 pk->entry.data = (void*)data;
 pk->entry.key = (void*)pk;
 pk->entry.hash = pset->hash;
 data->trust = get_rrset_trust(msg, pset);
 return 1;
}
