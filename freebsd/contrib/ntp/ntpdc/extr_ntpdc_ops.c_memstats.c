
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;
typedef int u_int ;
struct parse {int dummy; } ;
struct info_mem_stats {scalar_t__* hashcount; int demobilizations; int allocations; int findpeer_calls; int freepeermem; int totalpeermem; int timereset; } ;
typedef int FILE ;


 scalar_t__ IMPL_XNTPD ;
 scalar_t__ IMPL_XNTPD_OLD ;
 int INFO_ERR_IMPL ;
 int NTP_HASH_SIZE ;
 int REQ_MEM_STATS ;
 int check1item (size_t,int *) ;
 int checkitemsize (size_t,int) ;
 int doquery (scalar_t__,int ,int ,int ,int ,int *,size_t*,size_t*,void*,int ,int) ;
 int fprintf (int *,char*,...) ;
 scalar_t__ impl_ver ;
 scalar_t__ ntohl (int ) ;
 scalar_t__ ntohs (int ) ;

__attribute__((used)) static void
memstats(
 struct parse *pcmd,
 FILE *fp
 )
{
 struct info_mem_stats *mem;
 int i;
 size_t items;
 size_t itemsize;
 int res;

again:
 res = doquery(impl_ver, REQ_MEM_STATS, 0, 0, 0, ((void*)0), &items,
        &itemsize, (void *)&mem, 0, sizeof(*mem));

 if (res == INFO_ERR_IMPL && impl_ver == IMPL_XNTPD) {
  impl_ver = IMPL_XNTPD_OLD;
  goto again;
 }

 if (res != 0)
  return;

 if (!check1item(items, fp))
  return;

 if (!checkitemsize(itemsize, sizeof(*mem)))
  return;

 fprintf(fp, "time since reset:     %lu\n",
  (u_long)ntohl(mem->timereset));
 fprintf(fp, "total peer memory:    %u\n",
  (u_int)ntohs(mem->totalpeermem));
 fprintf(fp, "free peer memory:     %u\n",
  (u_int)ntohs(mem->freepeermem));
 fprintf(fp, "calls to findpeer:    %lu\n",
  (u_long)ntohl(mem->findpeer_calls));
 fprintf(fp, "new peer allocations: %lu\n",
  (u_long)ntohl(mem->allocations));
 fprintf(fp, "peer demobilizations: %lu\n",
  (u_long)ntohl(mem->demobilizations));

 fprintf(fp, "hash table counts:   ");
 for (i = 0; i < NTP_HASH_SIZE; i++) {
  fprintf(fp, "%4d", (int)mem->hashcount[i]);
  if ((i % 8) == 7 && i != (NTP_HASH_SIZE-1))
   fprintf(fp, "\n                     ");
 }
 fprintf(fp, "\n");
}
