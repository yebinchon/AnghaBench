
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {char* fts_path; int fts_dev; } ;
struct TYPE_5__ {int fts_pathlen; int fts_namelen; char* fts_name; char* fts_accpath; char* fts_path; int fts_dev; } ;
typedef TYPE_1__ FTSENT ;
typedef TYPE_2__ FTS ;


 int memmove (char*,char*,int) ;
 int strlen (char*) ;
 char* strrchr (char*,char) ;

__attribute__((used)) static void
fts_load(FTS *sp, FTSENT *p)
{
 int len;
 char *cp;
 len = p->fts_pathlen = p->fts_namelen;
 memmove(sp->fts_path, p->fts_name, len + 1);
 if ((cp = strrchr(p->fts_name, '/')) && (cp != p->fts_name || cp[1])) {
  len = strlen(++cp);
  memmove(p->fts_name, cp, len + 1);
  p->fts_namelen = len;
 }
 p->fts_accpath = p->fts_path = sp->fts_path;
 sp->fts_dev = p->fts_dev;
}
