
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct worker {int dummy; } ;
struct edns_data {int dummy; } ;
struct comm_reply {int dummy; } ;
typedef int sldns_buffer ;


 int chaos_replystr (int *,char**,int,struct edns_data*,struct worker*,struct comm_reply*) ;

__attribute__((used)) static void
chaos_replyonestr(sldns_buffer* pkt, const char* str, struct edns_data* edns,
 struct worker* worker, struct comm_reply* repinfo)
{
 chaos_replystr(pkt, (char**)&str, 1, edns, worker, repinfo);
}
