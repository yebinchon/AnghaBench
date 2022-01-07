
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct direct {scalar_t__ d_ino; int d_reclen; scalar_t__ d_namlen; scalar_t__ d_type; } ;


 scalar_t__ Bcvt ;
 int DIRBLKSIZ ;
 size_t DIRSIZ (int ,struct direct*) ;
 scalar_t__ DT_UNKNOWN ;
 scalar_t__ NAME_MAX ;
 scalar_t__ oldinofmt ;
 int putent (struct direct*) ;
 int stdout ;
 int swabst (int *,int *) ;
 int vprintf (int ,char*,...) ;

__attribute__((used)) static void
putdir(char *buf, size_t size)
{
 struct direct *dp;
 size_t loc, i;

 for (loc = 0; loc < size; ) {
  dp = (struct direct *)(buf + loc);
  if (Bcvt)
   swabst((u_char *)"ls", (u_char *) dp);
  if (oldinofmt && dp->d_ino != 0) {

   if (Bcvt)
    dp->d_namlen = dp->d_type;




   dp->d_type = DT_UNKNOWN;
  }
  i = DIRBLKSIZ - (loc & (DIRBLKSIZ - 1));
  if ((dp->d_reclen & 0x3) != 0 ||
      dp->d_reclen > i ||
      dp->d_reclen < DIRSIZ(0, dp)

      || dp->d_namlen > NAME_MAX

      ) {
   vprintf(stdout, "Mangled directory: ");
   if ((dp->d_reclen & 0x3) != 0)
    vprintf(stdout,
       "reclen not multiple of 4 ");
   if (dp->d_reclen < DIRSIZ(0, dp))
    vprintf(stdout,
       "reclen less than DIRSIZ (%u < %zu) ",
       dp->d_reclen, DIRSIZ(0, dp));

   if (dp->d_namlen > NAME_MAX)
    vprintf(stdout,
       "reclen name too big (%u > %u) ",
       dp->d_namlen, NAME_MAX);

   vprintf(stdout, "\n");
   loc += i;
   continue;
  }
  loc += dp->d_reclen;
  if (dp->d_ino != 0) {
   putent(dp);
  }
 }
}
