
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* uint8_t ;
struct iter_hints {int dummy; } ;
struct delegpt {void* ssl_upstream; int no_cache; void* has_parent_side_NS; } ;
struct config_stub {int isprime; scalar_t__ ssl_upstream; int no_cache; int isfirst; struct config_stub* next; } ;
struct config_file {struct config_stub* stubs; } ;


 int LDNS_RR_CLASS_IN ;
 int VERB_QUERY ;
 int delegpt_free_mlc (struct delegpt*) ;
 int delegpt_log (int ,struct delegpt*) ;
 int hints_insert (struct iter_hints*,int ,struct delegpt*,int) ;
 int read_stubs_addr (struct config_stub*,struct delegpt*) ;
 int read_stubs_host (struct config_stub*,struct delegpt*) ;
 struct delegpt* read_stubs_name (struct config_stub*) ;

__attribute__((used)) static int
read_stubs(struct iter_hints* hints, struct config_file* cfg)
{
 struct config_stub* s;
 struct delegpt* dp;
 for(s = cfg->stubs; s; s = s->next) {
  if(!(dp=read_stubs_name(s)))
   return 0;
  if(!read_stubs_host(s, dp) || !read_stubs_addr(s, dp)) {
   delegpt_free_mlc(dp);
   return 0;
  }



  dp->has_parent_side_NS = (uint8_t)!s->isfirst;

  dp->no_cache = s->no_cache;

  dp->ssl_upstream = (uint8_t)s->ssl_upstream;
  delegpt_log(VERB_QUERY, dp);
  if(!hints_insert(hints, LDNS_RR_CLASS_IN, dp, !s->isprime))
   return 0;
 }
 return 1;
}
