
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u_long ;
struct stat {scalar_t__ st_size; } ;
struct quotafile {int dummy; } ;
struct fileusage {scalar_t__ fu_curinodes; scalar_t__ fu_curblocks; size_t fu_id; struct fileusage* fu_next; } ;
struct dqblk {scalar_t__ dqb_curinodes; scalar_t__ dqb_curblocks; scalar_t__ dqb_ihardlimit; scalar_t__ dqb_isoftlimit; scalar_t__ dqb_bhardlimit; scalar_t__ dqb_bsoftlimit; } ;
typedef scalar_t__ off_t ;


 size_t FUHASH ;
 int bzero (struct dqblk*,int) ;
 struct fileusage*** fuhead ;
 struct fileusage* lookup (size_t,int) ;
 int printchanges (char const*,int,struct dqblk*,struct fileusage*,size_t) ;
 size_t quota_maxid (struct quotafile*) ;
 int quota_qfname (struct quotafile*) ;
 scalar_t__ quota_read (struct quotafile*,struct dqblk*,size_t) ;
 int quota_write_usage (struct quotafile*,struct dqblk*,size_t) ;
 scalar_t__ stat (int ,struct stat*) ;
 int truncate (int ,scalar_t__) ;

int
update(const char *fsname, struct quotafile *qf, int type)
{
 struct fileusage *fup;
 u_long id, lastid, highid = 0;
 struct dqblk dqbuf;
 struct stat sb;
 static struct dqblk zerodqbuf;
 static struct fileusage zerofileusage;




 lastid = quota_maxid(qf);
 for (id = 0; id <= lastid; id++) {
  if (quota_read(qf, &dqbuf, id) < 0)
   dqbuf = zerodqbuf;
  if ((fup = lookup(id, type)) == ((void*)0))
   fup = &zerofileusage;
  if (fup->fu_curinodes || fup->fu_curblocks ||
      dqbuf.dqb_bsoftlimit || dqbuf.dqb_bhardlimit ||
      dqbuf.dqb_isoftlimit || dqbuf.dqb_ihardlimit)
   highid = id;
  if (dqbuf.dqb_curinodes == fup->fu_curinodes &&
      dqbuf.dqb_curblocks == fup->fu_curblocks) {
   fup->fu_curinodes = 0;
   fup->fu_curblocks = 0;
   continue;
  }
  printchanges(fsname, type, &dqbuf, fup, id);
  dqbuf.dqb_curinodes = fup->fu_curinodes;
  dqbuf.dqb_curblocks = fup->fu_curblocks;
  (void) quota_write_usage(qf, &dqbuf, id);
  fup->fu_curinodes = 0;
  fup->fu_curblocks = 0;
 }






 for (id = 0; id < FUHASH; id++) {
  for (fup = fuhead[type][id]; fup != ((void*)0); fup = fup->fu_next) {
   if (fup->fu_id <= lastid)
    continue;
   if (fup->fu_curinodes == 0 && fup->fu_curblocks == 0)
    continue;
   bzero(&dqbuf, sizeof(struct dqblk));
   if (fup->fu_id > highid)
    highid = fup->fu_id;
   printchanges(fsname, type, &dqbuf, fup, fup->fu_id);
   dqbuf.dqb_curinodes = fup->fu_curinodes;
   dqbuf.dqb_curblocks = fup->fu_curblocks;
   (void) quota_write_usage(qf, &dqbuf, fup->fu_id);
   fup->fu_curinodes = 0;
   fup->fu_curblocks = 0;
  }
 }





 if (highid < lastid &&
     stat(quota_qfname(qf), &sb) == 0 &&
     sb.st_size > (off_t)((highid + 2) * sizeof(struct dqblk)))
  truncate(quota_qfname(qf),
      (((off_t)highid + 2) * sizeof(struct dqblk)));
 return (0);
}
