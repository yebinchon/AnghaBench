
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct bootblock {int ClustMask; int NumClusters; int NumBad; int NumFree; } ;
typedef int cl_t ;


 int CLUST_BAD ;
 int CLUST_EOF ;
 int CLUST_EOFS ;
 int CLUST_FIRST ;
 int CLUST_FREE ;
 int CLUST_RSRVD ;
 int FSERROR ;
 int FSFATMOD ;
 int FSOK ;
 scalar_t__ ask (int ,char*) ;
 int pwarn (char*,int,int ,char*,int) ;

__attribute__((used)) static int
checkclnum(struct bootblock *boot, u_int fat, cl_t cl, cl_t *next)
{
 if (*next >= (CLUST_RSRVD&boot->ClustMask))
  *next |= ~boot->ClustMask;
 if (*next == CLUST_FREE) {
  boot->NumFree++;
  return FSOK;
 }
 if (*next == CLUST_BAD) {
  boot->NumBad++;
  return FSOK;
 }
 if (*next < CLUST_FIRST
     || (*next >= boot->NumClusters && *next < CLUST_EOFS)) {
  pwarn("Cluster %u in FAT %d continues with %s cluster number %u\n",
        cl, fat,
        *next < CLUST_RSRVD ? "out of range" : "reserved",
        *next&boot->ClustMask);
  if (ask(0, "Truncate")) {
   *next = CLUST_EOF;
   return FSFATMOD;
  }
  return FSERROR;
 }
 return FSOK;
}
