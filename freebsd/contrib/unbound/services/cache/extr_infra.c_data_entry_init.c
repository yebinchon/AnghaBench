
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ time_t ;
struct lruhash_entry {scalar_t__ data; } ;
struct infra_data {scalar_t__ timeout_other; scalar_t__ timeout_AAAA; scalar_t__ timeout_A; scalar_t__ lame_other; scalar_t__ lame_type_A; scalar_t__ rec_lame; scalar_t__ isdnsseclame; scalar_t__ probedelay; scalar_t__ edns_lame_known; scalar_t__ edns_version; int rtt; scalar_t__ ttl; } ;
struct infra_cache {scalar_t__ host_ttl; } ;


 int rtt_init (int *) ;

__attribute__((used)) static void
data_entry_init(struct infra_cache* infra, struct lruhash_entry* e,
 time_t timenow)
{
 struct infra_data* data = (struct infra_data*)e->data;
 data->ttl = timenow + infra->host_ttl;
 rtt_init(&data->rtt);
 data->edns_version = 0;
 data->edns_lame_known = 0;
 data->probedelay = 0;
 data->isdnsseclame = 0;
 data->rec_lame = 0;
 data->lame_type_A = 0;
 data->lame_other = 0;
 data->timeout_A = 0;
 data->timeout_AAAA = 0;
 data->timeout_other = 0;
}
