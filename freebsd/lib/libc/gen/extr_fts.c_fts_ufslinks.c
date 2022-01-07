
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int f_fstypename; } ;
struct _fts_private {scalar_t__ ftsp_dev; int ftsp_linksreliable; TYPE_2__ ftsp_statfs; } ;
struct TYPE_4__ {scalar_t__ fts_dev; int fts_path; } ;
typedef TYPE_1__ FTSENT ;
typedef int FTS ;


 int statfs (int ,TYPE_2__*) ;
 scalar_t__ strcmp (int ,char const*) ;
 char** ufslike_filesystems ;

__attribute__((used)) static int
fts_ufslinks(FTS *sp, const FTSENT *ent)
{
 struct _fts_private *priv;
 const char **cpp;

 priv = (struct _fts_private *)sp;






 if (priv->ftsp_dev != ent->fts_dev) {
  if (statfs(ent->fts_path, &priv->ftsp_statfs) != -1) {
   priv->ftsp_dev = ent->fts_dev;
   priv->ftsp_linksreliable = 0;
   for (cpp = ufslike_filesystems; *cpp; cpp++) {
    if (strcmp(priv->ftsp_statfs.f_fstypename,
        *cpp) == 0) {
     priv->ftsp_linksreliable = 1;
     break;
    }
   }
  } else {
   priv->ftsp_linksreliable = 0;
  }
 }
 return (priv->ftsp_linksreliable);
}
