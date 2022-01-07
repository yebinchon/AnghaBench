
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
typedef void* time_t ;
struct regional {int dummy; } ;
struct packed_rrset_data {scalar_t__ count; int* rr_len; int* rr_data; void** rr_ttl; void* ttl; } ;
struct dns_msg {TYPE_2__* rep; } ;
struct auth_zone {int namelen; int name; } ;
struct auth_rrset {int dummy; } ;
struct auth_data {int dummy; } ;
struct TYPE_4__ {scalar_t__ data; } ;
struct TYPE_6__ {TYPE_1__ entry; } ;
struct TYPE_5__ {int rrset_count; scalar_t__ ttl; scalar_t__ serve_expired_ttl; int prefetch_ttl; TYPE_3__** rrsets; } ;


 int LDNS_RR_TYPE_SOA ;
 int PREFETCH_TTL_CALC (scalar_t__) ;
 scalar_t__ SERVE_EXPIRED_TTL ;
 struct auth_rrset* az_domain_rrset (struct auth_data*,int ) ;
 struct auth_data* az_find_name (struct auth_zone*,int ,int ) ;
 scalar_t__ get_rrset_ttl (TYPE_3__*) ;
 int log_assert (int) ;
 int msg_add_rrset_ns (struct auth_zone*,struct regional*,struct dns_msg*,struct auth_data*,struct auth_rrset*) ;
 scalar_t__ sldns_read_uint32 (int) ;

__attribute__((used)) static int
az_add_negative_soa(struct auth_zone* z, struct regional* region,
 struct dns_msg* msg)
{
 uint32_t minimum;
 struct packed_rrset_data* d;
 struct auth_rrset* soa;
 struct auth_data* apex = az_find_name(z, z->name, z->namelen);
 if(!apex) return 0;
 soa = az_domain_rrset(apex, LDNS_RR_TYPE_SOA);
 if(!soa) return 0;



 log_assert(msg->rep->rrset_count == 0);
 if(!msg_add_rrset_ns(z, region, msg, apex, soa)) return 0;

 d = (struct packed_rrset_data*)msg->rep->rrsets[msg->rep->rrset_count-1]->entry.data;

 if(d->count == 0) return 0;
 if(d->rr_len[0] < 2+4) return 0;
 minimum = sldns_read_uint32(d->rr_data[0]+(d->rr_len[0]-4));
 d->ttl = (time_t)minimum;
 d->rr_ttl[0] = (time_t)minimum;
 msg->rep->ttl = get_rrset_ttl(msg->rep->rrsets[0]);
 msg->rep->prefetch_ttl = PREFETCH_TTL_CALC(msg->rep->ttl);
 msg->rep->serve_expired_ttl = msg->rep->ttl + SERVE_EXPIRED_TTL;
 return 1;
}
