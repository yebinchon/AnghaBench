
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int st_mode; } ;
struct bsdtar {int * filename; int * names_from_file; int ** argv; } ;


 int S_ISBLK (int ) ;
 int S_ISREG (int ) ;
 int lafe_errc (int,int ,char*,...) ;
 scalar_t__ stat (int *,struct stat*) ;

__attribute__((used)) static void
test_for_append(struct bsdtar *bsdtar)
{
 struct stat s;

 if (*bsdtar->argv == ((void*)0) && bsdtar->names_from_file == ((void*)0))
  lafe_errc(1, 0, "no files or directories specified");
 if (bsdtar->filename == ((void*)0))
  lafe_errc(1, 0, "Cannot append to stdout.");

 if (stat(bsdtar->filename, &s) != 0)
  return;

 if (!S_ISREG(s.st_mode) && !S_ISBLK(s.st_mode))
  lafe_errc(1, 0,
      "Cannot append to %s: not a regular file.",
      bsdtar->filename);







}
