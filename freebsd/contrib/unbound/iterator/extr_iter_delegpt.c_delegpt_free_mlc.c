
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct delegpt_ns {struct delegpt_ns* name; struct delegpt_ns* tls_auth_name; struct delegpt_ns* next_target; struct delegpt_ns* target_list; struct delegpt_ns* next; struct delegpt_ns* nslist; int dp_type_mlc; } ;
struct delegpt_addr {struct delegpt_addr* name; struct delegpt_addr* tls_auth_name; struct delegpt_addr* next_target; struct delegpt_addr* target_list; struct delegpt_addr* next; struct delegpt_addr* nslist; int dp_type_mlc; } ;
struct delegpt {struct delegpt* name; struct delegpt* tls_auth_name; struct delegpt* next_target; struct delegpt* target_list; struct delegpt* next; struct delegpt* nslist; int dp_type_mlc; } ;


 int free (struct delegpt_ns*) ;
 int log_assert (int ) ;

void delegpt_free_mlc(struct delegpt* dp)
{
 struct delegpt_ns* n, *nn;
 struct delegpt_addr* a, *na;
 if(!dp) return;
 log_assert(dp->dp_type_mlc);
 n = dp->nslist;
 while(n) {
  nn = n->next;
  free(n->name);
  free(n);
  n = nn;
 }
 a = dp->target_list;
 while(a) {
  na = a->next_target;
  free(a->tls_auth_name);
  free(a);
  a = na;
 }
 free(dp->name);
 free(dp);
}
