
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trail {scalar_t__ tr_magic; int tr_dirname; int tr_dirfp; } ;


 int LOG_ERR ;
 int PJDLOG_ASSERT (int) ;
 scalar_t__ TRAIL_MAGIC ;
 int dirfd (int ) ;
 int pjdlog_debug (int,char*,int ,char const*) ;
 int pjdlog_errno (int ,char*,int ,char const*) ;
 int unlinkat (int,char const*,int ) ;

void
trail_unlink(struct trail *trail, const char *filename)
{
 int dfd;

 PJDLOG_ASSERT(trail->tr_magic == TRAIL_MAGIC);
 PJDLOG_ASSERT(filename != ((void*)0));
 PJDLOG_ASSERT(filename[0] != '\0');

 dfd = dirfd(trail->tr_dirfp);
 PJDLOG_ASSERT(dfd >= 0);

 if (unlinkat(dfd, filename, 0) == -1) {
  pjdlog_errno(LOG_ERR, "Unable to remove \"%s/%s\"",
      trail->tr_dirname, filename);
 } else {
  pjdlog_debug(1, "Trail file \"%s/%s\" removed.",
      trail->tr_dirname, filename);
 }
}
