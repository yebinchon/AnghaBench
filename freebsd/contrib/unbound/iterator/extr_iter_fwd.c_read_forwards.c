
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* uint8_t ;
struct iter_forwards {int dummy; } ;
struct delegpt {void* ssl_upstream; int no_cache; void* has_parent_side_NS; } ;
struct config_stub {scalar_t__ ssl_upstream; int no_cache; int isfirst; struct config_stub* next; } ;
struct config_file {struct config_stub* forwards; } ;


 int LDNS_RR_CLASS_IN ;
 int VERB_QUERY ;
 int delegpt_free_mlc (struct delegpt*) ;
 int delegpt_log (int ,struct delegpt*) ;
 int forwards_insert (struct iter_forwards*,int ,struct delegpt*) ;
 int read_fwds_addr (struct config_stub*,struct delegpt*) ;
 int read_fwds_host (struct config_stub*,struct delegpt*) ;
 struct delegpt* read_fwds_name (struct config_stub*) ;
 int verbose (int ,char*) ;

__attribute__((used)) static int
read_forwards(struct iter_forwards* fwd, struct config_file* cfg)
{
 struct config_stub* s;
 for(s = cfg->forwards; s; s = s->next) {
  struct delegpt* dp;
  if(!(dp=read_fwds_name(s)))
   return 0;
  if(!read_fwds_host(s, dp) || !read_fwds_addr(s, dp)) {
   delegpt_free_mlc(dp);
   return 0;
  }





  dp->has_parent_side_NS = (uint8_t)!s->isfirst;

  dp->no_cache = s->no_cache;

  dp->ssl_upstream = (uint8_t)s->ssl_upstream;
  verbose(VERB_QUERY, "Forward zone server list:");
  delegpt_log(VERB_QUERY, dp);
  if(!forwards_insert(fwd, LDNS_RR_CLASS_IN, dp))
   return 0;
 }
 return 1;
}
