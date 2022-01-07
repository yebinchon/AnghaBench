
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timezone {int dummy; } ;


 int EOF ;
 int debug ;
 int dofilter ;
 int doprocess ;
 int exit (int) ;
 int fprintf (int ,char*,char*) ;
 int gettimeofday (int *,struct timezone*) ;
 int init_chu () ;
 int lasttv ;
 int ntp_getopt (int,char**,char*) ;
 int openterm (char*) ;
 int process_ldisc (int) ;
 int process_raw (int) ;
 char* progname ;
 int showtimes ;
 int stderr ;
 int usechuldisc ;

int
main(
 int argc,
 char *argv[]
 )
{
 int c;
 int errflg = 0;
 extern int ntp_optind;

 progname = argv[0];
 while ((c = ntp_getopt(argc, argv, "cdfpt")) != EOF)
     switch (c) {
  case 'c':
      (void) fprintf(stderr,
       "%s: CHU line discipline not available on this machine\n",
       progname);
      exit(2);


  case 'd':
      ++debug;
      break;
  case 'f':
      dofilter = 1;
      break;
  case 'p':
      doprocess = 1;
  case 't':
      showtimes = 1;
      break;
  default:
      errflg++;
      break;
     }
 if (errflg || ntp_optind+1 != argc) {
  (void) fprintf(stderr, "usage: %s [-cdft] tty_device\n",
          progname);


  exit(2);
 }

 (void) gettimeofday(&lasttv, (struct timezone *)0);
 c = openterm(argv[ntp_optind]);
 init_chu();
  process_raw(c);

}
