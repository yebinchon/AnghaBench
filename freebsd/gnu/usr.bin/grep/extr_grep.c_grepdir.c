
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ st_ino; scalar_t__ st_dev; int st_size; } ;
typedef struct stats {struct stats const* parent; TYPE_1__ stat; } const stats ;


 size_t FILESYSTEM_PREFIX_LEN (char const*) ;
 scalar_t__ IS_SLASH (char const) ;
 char* _ (char*) ;
 scalar_t__ errno ;
 int error (int ,int ,char*,char const*,char*) ;
 int excluded_patterns ;
 int free (char*) ;
 int grepfile (char*,struct stats const*) ;
 int included_patterns ;
 int no_filenames ;
 int out_file ;
 char* savedir (char const*,int ,int ,int ) ;
 int strcpy (char*,char const*) ;
 size_t strlen (char const*) ;
 int suppress_errors ;
 int suppressible_error (char const*,scalar_t__) ;
 int xalloc_die () ;
 char* xrealloc (char*,size_t) ;

__attribute__((used)) static int
grepdir (char const *dir, struct stats const *stats)
{
  int status = 1;
  struct stats const *ancestor;
  char *name_space;



  if (stats->stat.st_ino)
    for (ancestor = stats; (ancestor = ancestor->parent) != 0; )
      if (ancestor->stat.st_ino == stats->stat.st_ino
   && ancestor->stat.st_dev == stats->stat.st_dev)
 {
   if (!suppress_errors)
     error (0, 0, _("warning: %s: %s"), dir,
     _("recursive directory loop"));
   return 1;
 }

  name_space = savedir (dir, stats->stat.st_size, included_patterns,
   excluded_patterns);

  if (! name_space)
    {
      if (errno)
 suppressible_error (dir, errno);
      else
 xalloc_die ();
    }
  else
    {
      size_t dirlen = strlen (dir);
      int needs_slash = ! (dirlen == FILESYSTEM_PREFIX_LEN (dir)
      || IS_SLASH (dir[dirlen - 1]));
      char *file = ((void*)0);
      char const *namep = name_space;
      struct stats child;
      child.parent = stats;
      out_file += !no_filenames;
      while (*namep)
 {
   size_t namelen = strlen (namep);
   file = xrealloc (file, dirlen + 1 + namelen + 1);
   strcpy (file, dir);
   file[dirlen] = '/';
   strcpy (file + dirlen + needs_slash, namep);
   namep += namelen + 1;
   status &= grepfile (file, &child);
 }
      out_file -= !no_filenames;
      if (file)
        free (file);
      free (name_space);
    }

  return status;
}
