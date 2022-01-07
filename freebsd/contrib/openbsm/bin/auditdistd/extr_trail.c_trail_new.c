
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trail {int tr_filefd; int tr_magic; int * tr_dirfp; int tr_dirname; } ;


 scalar_t__ ENAMETOOLONG ;
 scalar_t__ ENOENT ;
 int LOG_ERR ;
 int TRAIL_MAGIC ;
 struct trail* calloc (int,int) ;
 scalar_t__ errno ;
 int free (struct trail*) ;
 int mkdir (char const*,int) ;
 void* opendir (char const*) ;
 int pjdlog_errno (int ,char*,char const*) ;
 int pjdlog_error (char*,char const*) ;
 int strlcpy (int ,char const*,int) ;

struct trail *
trail_new(const char *dirname, bool create)
{
 struct trail *trail;

 trail = calloc(1, sizeof(*trail));

 if (strlcpy(trail->tr_dirname, dirname, sizeof(trail->tr_dirname)) >=
     sizeof(trail->tr_dirname)) {
  free(trail);
  pjdlog_error("Directory name too long (\"%s\").", dirname);
  errno = ENAMETOOLONG;
  return (((void*)0));
 }
 trail->tr_dirfp = opendir(dirname);
 if (trail->tr_dirfp == ((void*)0)) {
  if (create && errno == ENOENT) {
   if (mkdir(dirname, 0700) == -1) {
    pjdlog_errno(LOG_ERR,
        "Unable to create directory \"%s\"",
        dirname);
    free(trail);
    return (((void*)0));
   }

  } else {
   pjdlog_errno(LOG_ERR,
       "Unable to open directory \"%s\"",
       dirname);
   free(trail);
   return (((void*)0));
  }
  trail->tr_dirfp = opendir(dirname);
  if (trail->tr_dirfp == ((void*)0)) {
   pjdlog_errno(LOG_ERR,
       "Unable to open directory \"%s\"",
       dirname);
   free(trail);
   return (((void*)0));
  }
 }
 trail->tr_filefd = -1;
 trail->tr_magic = TRAIL_MAGIC;
 return (trail);
}
