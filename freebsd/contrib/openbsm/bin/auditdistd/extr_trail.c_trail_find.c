
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trail {scalar_t__ tr_magic; int tr_filename; int tr_dirfp; } ;
struct dirent {int d_name; } ;


 scalar_t__ HALF_LEN ;
 int PJDLOG_ASSERT (int) ;
 int PJDLOG_VERIFY (int) ;
 scalar_t__ TRAIL_MAGIC ;
 struct dirent* readdir (int ) ;
 int rewinddir (int ) ;
 int strlcpy (int ,int ,int) ;
 scalar_t__ strncmp (int ,int ,scalar_t__) ;
 int trail_is_not_terminated (int ) ;

__attribute__((used)) static bool
trail_find(struct trail *trail)
{
 struct dirent *dp;

 PJDLOG_ASSERT(trail->tr_magic == TRAIL_MAGIC);
 PJDLOG_ASSERT(trail_is_not_terminated(trail->tr_filename));

 rewinddir(trail->tr_dirfp);
 while ((dp = readdir(trail->tr_dirfp)) != ((void*)0)) {
  if (strncmp(dp->d_name, trail->tr_filename, HALF_LEN + 1) == 0)
   break;
 }
 if (dp == ((void*)0))
  return (0);
 PJDLOG_VERIFY(strlcpy(trail->tr_filename, dp->d_name,
     sizeof(trail->tr_filename)) < sizeof(trail->tr_filename));
 return (1);
}
