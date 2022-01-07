
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_12__ {int fts_info; int fts_level; int fts_accpath; TYPE_1__* fts_statp; int fts_name; int fts_errno; int fts_path; } ;
struct TYPE_11__ {int flags; scalar_t__ type; struct TYPE_11__* child; int name; struct TYPE_11__* next; struct TYPE_11__* prev; struct TYPE_11__* parent; } ;
struct TYPE_10__ {int st_mode; } ;
typedef TYPE_2__ NODE ;
typedef TYPE_3__ FTSENT ;
typedef int FTS ;


 int FNM_PATHNAME ;





 int FTS_SKIP ;

 scalar_t__ F_DIR ;
 int F_IGN ;
 int F_MAGIC ;
 int F_NOCHANGE ;
 int F_VISIT ;
 int MISMATCHEXIT ;
 char* RP (TYPE_3__*) ;
 scalar_t__ S_ISDIR (int ) ;
 scalar_t__ check_excludes (int ,int ) ;
 scalar_t__ compare (TYPE_2__*,TYPE_3__*) ;
 char* crc_total ;
 scalar_t__ dflag ;
 int eflag ;
 int errno ;
 int find_only (int ) ;
 int fnmatch (int ,int ,int ) ;
 int fts_close (int *) ;
 int * fts_open (char**,int ,int *) ;
 TYPE_3__* fts_read (int *) ;
 int fts_set (int *,TYPE_3__*,int ) ;
 int ftsoptions ;
 char* fullpath ;
 int mtree_err (char*,char*) ;
 int printf (char*,...) ;
 int putchar (char) ;
 scalar_t__ rflag ;
 scalar_t__ rmdir (int ) ;
 TYPE_2__* root ;
 scalar_t__ sflag ;
 int strcmp (int ,int ) ;
 char* strerror (int ) ;
 scalar_t__ stub1 (int ) ;
 scalar_t__ unlink (int ) ;
 int warnx (char*,char*,char*) ;

__attribute__((used)) static int
vwalk(void)
{
 FTS *t;
 FTSENT *p;
 NODE *ep, *level;
 int specdepth, rval;
 char *argv[2];
 char dot[] = ".";
 argv[0] = dot;
 argv[1] = ((void*)0);

 if ((t = fts_open(argv, ftsoptions, ((void*)0))) == ((void*)0))
  mtree_err("fts_open: %s", strerror(errno));
 level = root;
 specdepth = rval = 0;
 while ((p = fts_read(t)) != ((void*)0)) {
  if (check_excludes(p->fts_name, p->fts_path)) {
   fts_set(t, p, FTS_SKIP);
   continue;
  }
  if (!find_only(p->fts_path)) {
   fts_set(t, p, FTS_SKIP);
   continue;
  }
  switch(p->fts_info) {
  case 133:
  case 128:
   break;
  case 131:
   if (specdepth > p->fts_level) {
    for (level = level->parent; level->prev;
        level = level->prev)
     continue;
    --specdepth;
   }
   continue;
  case 132:
  case 130:
  case 129:
   warnx("%s: %s", RP(p), strerror(p->fts_errno));
   continue;
  default:
   if (dflag)
    continue;
  }

  if (specdepth != p->fts_level)
   goto extra;
  for (ep = level; ep; ep = ep->next)
   if ((ep->flags & F_MAGIC &&
       !fnmatch(ep->name, p->fts_name, FNM_PATHNAME)) ||
       !strcmp(ep->name, p->fts_name)) {
    ep->flags |= F_VISIT;
    if ((ep->flags & F_NOCHANGE) == 0 &&
        compare(ep, p))
     rval = MISMATCHEXIT;
    if (!(ep->flags & F_IGN) &&
        ep->type == F_DIR &&
        p->fts_info == 133) {
     if (ep->child) {
      level = ep->child;
      ++specdepth;
     }
    } else
     fts_set(t, p, FTS_SKIP);
    break;
   }

  if (ep)
   continue;
 extra:
  if (!eflag && !(dflag && p->fts_info == 128)) {
   printf("extra: %s", RP(p));
   if (rflag) {
    if ((S_ISDIR(p->fts_statp->st_mode)
        ? rmdir : unlink)(p->fts_accpath)) {
     printf(", not removed: %s",
         strerror(errno));
    } else
     printf(", removed");
   }
   putchar('\n');
  }
  fts_set(t, p, FTS_SKIP);
 }
 fts_close(t);
 if (sflag)
  warnx("%s checksum: %u", fullpath, crc_total);
 return (rval);
}
