
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct stat {int dummy; } ;
struct TYPE_7__ {int fts_path; } ;
struct TYPE_6__ {char* fts_name; size_t fts_namelen; TYPE_2__* fts_fts; int * fts_pointer; scalar_t__ fts_number; int fts_instr; scalar_t__ fts_flags; scalar_t__ fts_errno; int fts_path; struct stat* fts_statp; } ;
typedef TYPE_1__ FTSENT ;
typedef TYPE_2__ FTS ;


 int FTS_NOINSTR ;
 int FTS_NOSTAT ;
 scalar_t__ ISSET (int ) ;
 TYPE_1__* malloc (size_t) ;
 int memcpy (char*,char*,size_t) ;

__attribute__((used)) static FTSENT *
fts_alloc(FTS *sp, char *name, size_t namelen)
{
 FTSENT *p;
 size_t len;

 struct ftsent_withstat {
  FTSENT ent;
  struct stat statbuf;
 };







 if (ISSET(FTS_NOSTAT))
  len = sizeof(FTSENT) + namelen + 1;
 else
  len = sizeof(struct ftsent_withstat) + namelen + 1;

 if ((p = malloc(len)) == ((void*)0))
  return (((void*)0));

 if (ISSET(FTS_NOSTAT)) {
  p->fts_name = (char *)(p + 1);
  p->fts_statp = ((void*)0);
 } else {
  p->fts_name = (char *)((struct ftsent_withstat *)p + 1);
  p->fts_statp = &((struct ftsent_withstat *)p)->statbuf;
 }


 memcpy(p->fts_name, name, namelen);
 p->fts_name[namelen] = '\0';
 p->fts_namelen = namelen;
 p->fts_path = sp->fts_path;
 p->fts_errno = 0;
 p->fts_flags = 0;
 p->fts_instr = FTS_NOINSTR;
 p->fts_number = 0;
 p->fts_pointer = ((void*)0);
 p->fts_fts = sp;
 return (p);
}
