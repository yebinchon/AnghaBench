
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;



 int O_RDONLY ;





 int allfields ;
 int bbsize ;
 int checklabel (int *) ;
 int close (int) ;
 int disable_write ;
 int display (int ,int *) ;
 int edit () ;
 int err (int,char*,char*) ;
 int errx (int,char*) ;
 int exit (int) ;
 int fixlabel (int *) ;
 int * fopen (char*,char*) ;
 char* g_device_path (char*) ;
 int * g_providername (int) ;
 int getasciilabel (int *,int *) ;
 int getopt (int,char**,char*) ;
 scalar_t__ installboot ;
 int is_file ;
 int lab ;
 scalar_t__ labeloffset ;
 scalar_t__ labelsoffset ;
 int makelabel (char const*,int *) ;
 int op ;
 int open (char*,int ) ;
 int optarg ;
 scalar_t__ optind ;
 int * pname ;
 int readlabel (int) ;
 char* specname ;
 int stdout ;
 int strcmp (int ,char*) ;
 int usage () ;
 int warn (char*,char*) ;
 int writelabel () ;
 int xxboot ;

int
main(int argc, char *argv[])
{
 FILE *t;
 int ch, error, fd;
 const char *name;

 error = 0;
 name = ((void*)0);

 while ((ch = getopt(argc, argv, "ABb:efm:nRrw")) != -1)
  switch (ch) {
   case 'A':
    allfields = 1;
    break;
   case 'B':
    ++installboot;
    break;
   case 'b':
    xxboot = optarg;
    break;
   case 'f':
    is_file=1;
    break;
   case 'm':
    if (!strcmp(optarg, "i386") ||
        !strcmp(optarg, "amd64")) {
     labelsoffset = 1;
     labeloffset = 0;
     bbsize = 8192;
    } else {
     errx(1, "Unsupported architecture");
    }
    break;
   case 'n':
    disable_write = 1;
    break;
   case 'R':
    if (op != 130)
     usage();
    op = 131;
    break;
   case 'e':
    if (op != 130)
     usage();
    op = 133;
    break;
   case 'r':




    break;
   case 'w':
    if (op != 130)
     usage();
    op = 129;
    break;
   case '?':
   default:
    usage();
  }
 argc -= optind;
 argv += optind;

 if (argc < 1)
  usage();
 if (labelsoffset < 0 || labeloffset < 0)
  errx(1, "a -m <architecture> option must be specified");


 if (is_file) {
  specname = argv[0];
 } else {
  specname = g_device_path(argv[0]);
  if (specname == ((void*)0)) {
   warn("unable to get correct path for %s", argv[0]);
   return(1);
  }
  fd = open(specname, O_RDONLY);
  if (fd < 0) {
   warn("error opening %s", specname);
   return(1);
  }
  pname = g_providername(fd);
  if (pname == ((void*)0)) {
   warn("error getting providername for %s", specname);
   close(fd);
   return(1);
  }
  close(fd);
 }

 if (installboot && op == 130)
  op = 128;
 else if (op == 130)
  op = 132;

 switch(op) {

 case 130:
  break;

 case 133:
  if (argc != 1)
   usage();
  readlabel(1);
  fixlabel(&lab);
  error = edit();
  break;

 case 132:
  if (argc != 1)
   usage();
  readlabel(1);
  display(stdout, ((void*)0));
  error = checklabel(((void*)0));
  break;

 case 131:
  if (argc != 2)
   usage();
  if (!(t = fopen(argv[1], "r")))
   err(4, "fopen %s", argv[1]);
  readlabel(0);
  if (!getasciilabel(t, &lab))
   exit(1);
  error = writelabel();
  break;

 case 129:
  if (argc == 2)
   name = argv[1];
  else if (argc == 1)
   name = "auto";
  else
   usage();
  readlabel(0);
  makelabel(name, &lab);
  fixlabel(&lab);
  if (checklabel(((void*)0)) == 0)
   error = writelabel();
  break;

 case 128:

  readlabel(1);
  fixlabel(&lab);
  if (argc == 2)
   makelabel(argv[1], &lab);
  if (checklabel(((void*)0)) == 0)
   error = writelabel();
  break;
 }
 exit(error);
}
