
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DPRINTF (int ) ;
 int crunch_all_files () ;
 int debug ;
 int exit (int ) ;
 int exit_code ;
 int file_count ;
 char** file_list ;
 int generate_ordering () ;
 int getopt (int,char**,char*) ;
 int initialize () ;
 int keep_list ;
 int optarg ;
 scalar_t__ optind ;
 int skip_list ;
 int stderr ;
 int strnode_add (int *,int ,int ) ;
 int warnx (char*) ;

int
main(int argc, char *argv[])
{
 int ch;

 while ((ch = getopt(argc, argv, "dk:s:")) != -1)
  switch (ch) {
  case 'd':



   warnx("debugging not compiled in, -d ignored");

   break;
  case 'k':
   strnode_add(&keep_list, optarg, 0);
   break;
  case 's':
   strnode_add(&skip_list, optarg, 0);
   break;
  default:

   break;
  }
 argc -= optind;
 argv += optind;

 file_count = argc;
 file_list = argv;

 DPRINTF((stderr, "parse_args\n"));
 initialize();
 DPRINTF((stderr, "initialize\n"));
 crunch_all_files();
 DPRINTF((stderr, "crunch_all_files\n"));
 generate_ordering();
 DPRINTF((stderr, "generate_ordering\n"));

 exit(exit_code);
}
