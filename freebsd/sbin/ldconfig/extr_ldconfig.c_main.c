
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int st_mode; } ;


 scalar_t__ S_ISREG (int ) ;
 int _PATH_ELF32_HINTS ;
 int _PATH_ELFSOFT_HINTS ;
 int _PATH_ELF_HINTS ;
 int _PATH_LD32_HINTS ;
 int _PATH_LD_HINTS ;
 int add_search_path (char*) ;
 int buildhints () ;
 char* concat (char*,char*,int ) ;
 char* dir_list ;
 int dodir (int ,int) ;
 int dofile (char*,int ) ;
 int free (char*) ;
 int getopt (int,char**,char*) ;
 int hints_file ;
 int insecure ;
 int justread ;
 int list_elf_hints (int ) ;
 int listhints () ;
 int merge ;
 int n_search_dirs ;
 int nostd ;
 int optarg ;
 int optind ;
 int readhints () ;
 int rescan ;
 int * search_dirs ;
 int stat (char*,struct stat*) ;
 int std_search_path () ;
 scalar_t__ strcmp (char*,char*) ;
 char* strdup (char*) ;
 int update_elf_hints (int ,int,char**,int) ;
 int usage () ;
 int verbose ;
 int warn (char*,char*) ;
 int warnx (char*,char*) ;

int
main(int argc, char **argv)
{
 int i, c;
 int rval = 0;
 int is_aout = 0;
 int is_32 = 0;
 int is_soft = 0;

 while (argc > 1) {
  if (strcmp(argv[1], "-aout") == 0) {
   is_aout = 1;
   argc--;
   argv++;
  } else if (strcmp(argv[1], "-elf") == 0) {
   is_aout = 0;
   argc--;
   argv++;
  } else if (strcmp(argv[1], "-32") == 0) {
   is_32 = 1;
   argc--;
   argv++;
  } else if (strcmp(argv[1], "-soft") == 0) {
   is_soft = 1;
   argc--;
   argv++;
  } else {
   break;
  }
 }

 if (is_soft)
  hints_file = _PATH_ELFSOFT_HINTS;
 else if (is_32)
  hints_file = is_aout ? _PATH_LD32_HINTS : _PATH_ELF32_HINTS;
 else
  hints_file = is_aout ? _PATH_LD_HINTS : _PATH_ELF_HINTS;
 if (argc == 1)
  rescan = 1;
 else while((c = getopt(argc, argv, "Rf:imrsv")) != -1) {
  switch (c) {
  case 'R':
   rescan = 1;
   break;
  case 'f':
   hints_file = optarg;
   break;
  case 'i':
   insecure = 1;
   break;
  case 'm':
   merge = 1;
   break;
  case 'r':
   justread = 1;
   break;
  case 's':
   nostd = 1;
   break;
  case 'v':
   verbose = 1;
   break;
  default:
   usage();
   break;
  }
 }

 if (!is_aout) {
  if (justread)
   list_elf_hints(hints_file);
  else
   update_elf_hints(hints_file, argc - optind,
       argv + optind, merge || rescan);
  return 0;
 }


 dir_list = strdup("");

 if (justread || merge || rescan) {
  if ((rval = readhints()) != 0)
   return rval;
 }

 if (!nostd && !merge && !rescan)
  std_search_path();


 if (!justread) {
  for (i = optind; i < argc; i++) {
   struct stat stbuf;

   if (stat(argv[i], &stbuf) == -1) {
    warn("%s", argv[i]);
    rval = -1;
   } else if (strcmp(argv[i], "/usr/lib") == 0) {
    warnx("WARNING! '%s' can not be used", argv[i]);
    rval = -1;
   } else {




    if (S_ISREG(stbuf.st_mode))
     rval |= dofile(argv[i], 0);
    else
     add_search_path(argv[i]);
   }
  }
 }

 for (i = 0; i < n_search_dirs; i++) {
  char *cp = concat(dir_list, *dir_list?":":"", search_dirs[i]);
  free(dir_list);
  dir_list = cp;
 }

 if (justread) {
  listhints();
  return 0;
 }

 for (i = 0; i < n_search_dirs; i++)
  rval |= dodir(search_dirs[i], 1);

 rval |= buildhints();

 return rval;
}
