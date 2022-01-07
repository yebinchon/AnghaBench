
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kld_file_stat {int version; char* name; } ;
typedef int stat ;


 int EXIT_FAILURE ;
 int EXIT_SUCCESS ;
 int LINKER_UNLOAD_FORCE ;
 int LINKER_UNLOAD_NORMAL ;
 int OPT_FORCE ;
 int OPT_ID ;
 int OPT_NULL ;
 int OPT_VERBOSE ;
 int atoi (char*) ;
 int err (int ,char*) ;
 int errx (int ,char*,char*) ;
 int getopt (int,char**,char*) ;
 int kldfind (char*) ;
 scalar_t__ kldstat (int,struct kld_file_stat*) ;
 scalar_t__ kldunloadf (int,int) ;
 char* optarg ;
 scalar_t__ optind ;
 int printf (char*,char*,int) ;
 int usage () ;

int
main(int argc, char** argv)
{
 struct kld_file_stat stat;
 int c, fileid, force, opt;
 char *filename;

 filename = ((void*)0);
 opt = OPT_NULL;

 while ((c = getopt(argc, argv, "finv")) != -1) {
  switch (c) {
  case 'f':
   opt |= OPT_FORCE;
   break;
  case 'i':
   opt |= OPT_ID;
   break;
  case 'n':




   break;
  case 'v':
   opt |= OPT_VERBOSE;
   break;
  default:
   usage();
  }
 }

 argc -= optind;
 argv += optind;

 if (argc == 0)
  usage();

 while ((filename = *argv++) != ((void*)0)) {
  if (opt & OPT_ID) {
   fileid = atoi(filename);
   if (fileid < 0)
    errx(EXIT_FAILURE, "Invalid ID %s", optarg);
  } else {
   if ((fileid = kldfind(filename)) < 0)
    errx(EXIT_FAILURE, "can't find file %s",
        filename);
  }
  if (opt & OPT_VERBOSE) {
   stat.version = sizeof(stat);
   if (kldstat(fileid, &stat) < 0)
    err(EXIT_FAILURE, "can't stat file");
   (void) printf("Unloading %s, id=%d\n", stat.name,
       fileid);
  }
  if (opt & OPT_FORCE)
   force = LINKER_UNLOAD_FORCE;
  else
   force = LINKER_UNLOAD_NORMAL;

  if (kldunloadf(fileid, force) < 0)
   err(EXIT_FAILURE, "can't unload file");
 }

 return (EXIT_SUCCESS);
}
