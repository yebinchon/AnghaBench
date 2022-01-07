
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int st_mode; } ;


 scalar_t__ S_ISREG (int ) ;
 int add_dir (char const*,char*,int ) ;
 int read_dirs_from_file (char const*,char*) ;
 int read_elf_hints (char const*,int ) ;
 int stat (char*,struct stat*) ;
 int warn (char*,char*) ;
 int write_elf_hints (char const*) ;

void
update_elf_hints(const char *hintsfile, int argc, char **argv, int merge)
{
 int i;

 if (merge)
  read_elf_hints(hintsfile, 0);
 for (i = 0; i < argc; i++) {
  struct stat s;

  if (stat(argv[i], &s) == -1)
   warn("warning: %s", argv[i]);
  else if (S_ISREG(s.st_mode))
   read_dirs_from_file(hintsfile, argv[i]);
  else
   add_dir(hintsfile, argv[i], 0);
 }
 write_elf_hints(hintsfile);
}
