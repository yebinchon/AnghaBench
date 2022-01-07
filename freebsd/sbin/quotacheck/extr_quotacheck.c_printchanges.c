
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;
struct fileusage {char* fu_name; scalar_t__ fu_curinodes; scalar_t__ fu_curblocks; } ;
struct dqblk {scalar_t__ dqb_curinodes; scalar_t__ dqb_curblocks; } ;




 scalar_t__ aflag ;
 int printf (char*,...) ;
 int vflag ;

void
printchanges(const char *fsname, int type, struct dqblk *dp,
    struct fileusage *fup, u_long id)
{
 if (!vflag)
  return;
 if (aflag)
  (void)printf("%s: ", fsname);
 if (fup->fu_name[0] == '\0')
  (void)printf("%-8lu fixed ", id);
 else
  (void)printf("%-8s fixed ", fup->fu_name);
 switch (type) {

 case 129:
  (void)printf("(group):");
  break;

 case 128:
  (void)printf("(user): ");
  break;

 default:
  (void)printf("(unknown quota type %d)", type);
  break;
 }
 if (dp->dqb_curinodes != fup->fu_curinodes)
  (void)printf("\tinodes %lu -> %lu", (u_long)dp->dqb_curinodes,
      (u_long)fup->fu_curinodes);
 if (dp->dqb_curblocks != fup->fu_curblocks)
  (void)printf("\tblocks %lu -> %lu",
      (u_long)dp->dqb_curblocks,
      (u_long)fup->fu_curblocks);
 (void)printf("\n");
}
