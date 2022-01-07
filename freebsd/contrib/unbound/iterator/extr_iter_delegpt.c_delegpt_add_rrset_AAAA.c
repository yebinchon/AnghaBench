
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_4__ {int dname_len; int dname; } ;
struct TYPE_3__ {scalar_t__ data; } ;
struct ub_packed_rrset_key {TYPE_2__ rk; TYPE_1__ entry; } ;
struct sockaddr_storage {int dummy; } ;
struct sockaddr_in6 {int sin6_addr; scalar_t__ sin6_port; int sin6_family; } ;
struct regional {int dummy; } ;
struct packed_rrset_data {size_t count; scalar_t__* rr_len; scalar_t__ security; scalar_t__* rr_data; } ;
struct delegpt {int dp_type_mlc; } ;
typedef int socklen_t ;
typedef int sa ;
typedef scalar_t__ in_port_t ;


 int AF_INET6 ;
 scalar_t__ INET6_SIZE ;
 int UNBOUND_DNS_PORT ;
 int delegpt_add_target (struct delegpt*,struct regional*,int ,int ,struct sockaddr_storage*,int ,int,int ) ;
 scalar_t__ htons (int ) ;
 int log_assert (int) ;
 int memmove (int *,scalar_t__,scalar_t__) ;
 int memset (struct sockaddr_in6*,int ,int ) ;
 scalar_t__ sec_status_bogus ;

int
delegpt_add_rrset_AAAA(struct delegpt* dp, struct regional* region,
 struct ub_packed_rrset_key* ak, uint8_t lame)
{
        struct packed_rrset_data* d=(struct packed_rrset_data*)ak->entry.data;
        size_t i;
        struct sockaddr_in6 sa;
        socklen_t len = (socklen_t)sizeof(sa);
 log_assert(!dp->dp_type_mlc);
        memset(&sa, 0, len);
        sa.sin6_family = AF_INET6;
        sa.sin6_port = (in_port_t)htons(UNBOUND_DNS_PORT);
        for(i=0; i<d->count; i++) {
                if(d->rr_len[i] != 2 + INET6_SIZE)
                        continue;
                memmove(&sa.sin6_addr, d->rr_data[i]+2, INET6_SIZE);
                if(!delegpt_add_target(dp, region, ak->rk.dname,
                        ak->rk.dname_len, (struct sockaddr_storage*)&sa,
                        len, (d->security==sec_status_bogus), lame))
                        return 0;
        }
        return 1;
}
