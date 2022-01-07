
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ccdconf ;
 int do_all (int) ;
 int do_single (int,char**,int) ;
 int dump_ccd (int,char**) ;
 int exit (int ) ;
 int getopt (int,char**,char*) ;
 scalar_t__ kldload (char*) ;
 scalar_t__ modfind (char*) ;
 int optarg ;
 scalar_t__ optind ;
 int usage () ;
 int verbose ;
 int warn (char*) ;

int
main(int argc, char *argv[])
{
 int ch, options = 0, action = 132;

 while ((ch = getopt(argc, argv, "cCf:guUv")) != -1) {
  switch (ch) {
  case 'c':
   action = 132;
   ++options;
   break;

  case 'C':
   action = 131;
   ++options;
   break;

  case 'f':
   ccdconf = optarg;
   break;

  case 'g':
   action = 130;
   break;

  case 'u':
   action = 129;
   ++options;
   break;

  case 'U':
   action = 128;
   ++options;
   break;

  case 'v':
   verbose = 1;
   break;

  default:
   usage();
  }
 }
 argc -= optind;
 argv += optind;

 if (options > 1)
  usage();

 if (modfind("g_ccd") < 0) {

  if (kldload("geom_ccd") < 0 || modfind("g_ccd") < 0)
   warn("geom_ccd module not available!");
 }

 switch (action) {
  case 132:
  case 129:
   exit(do_single(argc, argv, action));


  case 131:
  case 128:
   exit(do_all(action));


  case 130:
   exit(dump_ccd(argc, argv));

 }

 return (0);
}
