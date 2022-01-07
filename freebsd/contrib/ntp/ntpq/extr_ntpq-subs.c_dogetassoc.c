
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_short ;
struct TYPE_2__ {size_t assid; void* status; } ;
typedef int FILE ;


 int CTL_OP_READSTAT ;
 TYPE_1__* assoc_cache ;
 size_t assoc_cache_slots ;
 char* currenthost ;
 scalar_t__ debug ;
 int doquery (int ,int ,int ,int ,char*,int *,size_t*,char const**) ;
 int fprintf (int ,char*,...) ;
 int grow_assoc_cache () ;
 void* ntohs (int const) ;
 size_t numassoc ;
 int numhosts ;
 int sortassoc () ;
 int stderr ;

int
dogetassoc(
 FILE *fp
 )
{
 const char *datap;
 const u_short *pus;
 int res;
 size_t dsize;
 u_short rstatus;

 res = doquery(CTL_OP_READSTAT, 0, 0, 0, (char *)0, &rstatus,
     &dsize, &datap);

 if (res != 0)
  return 0;

 if (dsize == 0) {
  if (numhosts > 1)
   fprintf(fp, "server=%s ", currenthost);
  fprintf(fp, "No association ID's returned\n");
  return 0;
 }

 if (dsize & 0x3) {
  if (numhosts > 1)
   fprintf(stderr, "server=%s ", currenthost);
  fprintf(stderr,
   "***Server returned %zu octets, should be multiple of 4\n",
   dsize);
  return 0;
 }

 numassoc = 0;

 while (dsize > 0) {
  if (numassoc >= assoc_cache_slots) {
   grow_assoc_cache();
  }
  pus = (const void *)datap;
  assoc_cache[numassoc].assid = ntohs(*pus);
  datap += sizeof(*pus);
  pus = (const void *)datap;
  assoc_cache[numassoc].status = ntohs(*pus);
  datap += sizeof(*pus);
  dsize -= 2 * sizeof(*pus);
  if (debug) {
   fprintf(stderr, "[%u] ",
    assoc_cache[numassoc].assid);
  }
  numassoc++;
 }
 if (debug) {
  fprintf(stderr, "\n%d associations total\n", numassoc);
 }
 sortassoc();
 return 1;
}
