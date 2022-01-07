
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lafe_line_reader {int dummy; } ;
struct bsdtar {int next_line_is_dir; int flags; int return_value; int names_from_file; } ;
struct archive {int dummy; } ;


 int OPTFLAG_NULL ;
 int do_chdir (struct bsdtar*) ;
 int errno ;
 int lafe_errc (int,int ,char*) ;
 struct lafe_line_reader* lafe_line_reader (int ,int) ;
 int lafe_line_reader_free (struct lafe_line_reader*) ;
 char* lafe_line_reader_next (struct lafe_line_reader*) ;
 int lafe_warnc (int ,char*) ;
 int set_chdir (struct bsdtar*,char const*) ;
 scalar_t__ strcmp (char const*,char*) ;
 int write_hierarchy (struct bsdtar*,struct archive*,char const*) ;

__attribute__((used)) static void
archive_names_from_file(struct bsdtar *bsdtar, struct archive *a)
{
 struct lafe_line_reader *lr;
 const char *line;

 bsdtar->next_line_is_dir = 0;

 lr = lafe_line_reader(bsdtar->names_from_file,
     (bsdtar->flags & OPTFLAG_NULL));
 while ((line = lafe_line_reader_next(lr)) != ((void*)0)) {
  if (bsdtar->next_line_is_dir) {
   if (*line != '\0')
    set_chdir(bsdtar, line);
   else {
    lafe_warnc(0,
        "Meaningless argument for -C: ''");
    bsdtar->return_value = 1;
   }
   bsdtar->next_line_is_dir = 0;
  } else if (((bsdtar->flags & OPTFLAG_NULL) == 0) &&
      strcmp(line, "-C") == 0)
   bsdtar->next_line_is_dir = 1;
  else {
   if (*line != '/')
    do_chdir(bsdtar);
   write_hierarchy(bsdtar, a, line);
  }
 }
 lafe_line_reader_free(lr);
 if (bsdtar->next_line_is_dir)
  lafe_errc(1, errno,
      "Unexpected end of filename list; "
      "directory expected after -C");
}
