
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char* fs_fsmnt; scalar_t__ fs_clean; } ;


 int ckfini (int ) ;
 int cmdloop () ;
 int debug ;
 int errx (int,char*,char*) ;
 int exit (int) ;
 int getopt (int,char**,char*) ;
 scalar_t__ nflag ;
 scalar_t__ optind ;
 int printf (char*,...) ;
 int sbdirty () ;
 TYPE_1__ sblock ;
 int sblock_init () ;
 int setup (char*) ;
 int usage () ;

int
main(int argc, char *argv[])
{
 int ch, rval;
 char *fsys = ((void*)0);

 while (-1 != (ch = getopt(argc, argv, "fdr"))) {
  switch (ch) {
  case 'f':



   break;
  case 'd':
   debug++;
   break;
  case 'r':
   nflag++;
   break;
  default:
   usage();
  }
 }
 argc -= optind;
 argv += optind;
 if (argc != 1)
  usage();
 else
  fsys = argv[0];

 sblock_init();
 if (!setup(fsys))
  errx(1, "cannot set up file system `%s'", fsys);
 printf("%s file system `%s'\nLast Mounted on %s\n",
        nflag? "Examining": "Editing", fsys, sblock.fs_fsmnt);
 rval = cmdloop();
 if (!nflag) {
  sblock.fs_clean = 0;
  sbdirty();
  ckfini(0);
  printf("*** FILE SYSTEM MARKED DIRTY\n");
  printf("*** BE SURE TO RUN FSCK TO CLEAN UP ANY DAMAGE\n");
  printf("*** IF IT WAS MOUNTED, RE-MOUNT WITH -u -o reload\n");
 }
 exit(rval);
}
