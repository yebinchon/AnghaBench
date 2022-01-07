
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MAXCHAN ;
 int SERIAL_GETVERSIONSTRING ;
 int adapter_type ;
 int aflag ;
 scalar_t__ cflag ;
 int clear_stats (int) ;
 int close (int) ;
 scalar_t__ eflag ;
 int exit (int) ;
 int fflag ;
 int fprintf (int ,char*) ;
 int get_mask () ;
 int getopt (int,char**,char*) ;
 scalar_t__ iflag ;
 scalar_t__ ioctl (int,int ,char**) ;
 int* mask ;
 scalar_t__ mflag ;
 int open_chan_ctl (int) ;
 scalar_t__ optind ;
 int print_chan (int) ;
 int print_e1_stats (int,int) ;
 int print_e3_stats (int,int) ;
 int print_ifconfig (int) ;
 int print_modems (int,int) ;
 int print_stats (int,int) ;
 int printf (char*,char*) ;
 int setup_chan (int,int,char**) ;
 scalar_t__ sflag ;
 int stderr ;
 scalar_t__ strcmp (char*,char*) ;
 int strlen (char*) ;
 scalar_t__ strncasecmp (char*,char*,int) ;
 int strtol (char*,int ,int) ;
 scalar_t__ tflag ;
 int uflag ;
 int usage () ;
 scalar_t__ vflag ;
 scalar_t__ xflag ;

int
main (int argc, char **argv)
{
 char *p;
 int fd, need_header, chan_num;

 if (argc > 1 && strcmp(argv[1], "help") == 0)
  usage();

 for (;;) {
  switch (getopt (argc, argv, "mseftucviax")) {
  case -1:
   break;
  case 'a':
   ++aflag;
   continue;
  case 'm':
   ++mflag;
   continue;
  case 's':
   ++sflag;
   continue;
  case 'e':
   ++eflag;
   continue;
  case 'f':
   ++eflag;
   ++fflag;
   continue;
  case 't':
   ++tflag;
   continue;
  case 'u':
   ++tflag;
   ++uflag;
   continue;
  case 'c':
   ++cflag;
   continue;
  case 'v':
   ++vflag;
   continue;
  case 'i':
   ++iflag;
   continue;
  case 'x':
   ++xflag;
   continue;
  default:
   usage();
  }
  break;
 }
 argc -= optind;
 argv += optind;

 if (argc <= 0) {
  get_mask ();
  need_header = 1;
  adapter_type = 0;



  {
  for (chan_num=0; chan_num<MAXCHAN; ++chan_num)
   if (mask[adapter_type*16+chan_num/8] & 1 << (chan_num & 7)) {
    fd = open_chan_ctl (chan_num);
    if (vflag) {

    char buf[256];
    if (ioctl (fd, SERIAL_GETVERSIONSTRING, &buf) >= 0) {
     printf ("Version: %s\n", buf);
     close (fd);
     return (0);
    }

    }
    if (iflag) {
     print_chan (fd);
     print_ifconfig (fd);
    } else if (sflag||xflag)
     print_stats (fd, need_header);
    else if (mflag)
     print_modems (fd, need_header);
    else if (eflag)
     print_e1_stats (fd, need_header);
    else if (tflag)
     print_e3_stats (fd, need_header);
    else if (cflag)
     clear_stats (fd);
    else
     print_chan (fd);
    close (fd);
    need_header = 0;
   }
  }
  return (0);
 }

 p = argv[0] + strlen (argv[0]);
 while (p > argv[0] && p[-1] >= '0' && p[-1] <= '9')
  --p;
 chan_num = strtol (p, 0, 10);
 argc--;
 argv++;

 fd = open_chan_ctl (chan_num);
 if (vflag) {

  char buf[256];
  if (ioctl (fd, SERIAL_GETVERSIONSTRING, &buf) >= 0)
   printf ("Version: %s\n", buf);

 }
 if (iflag) {
  print_chan (fd);
  print_ifconfig (fd);
  close (fd);
  return (0);
 }
 if (sflag||xflag) {
  print_stats (fd, 1);
  close (fd);
  return (0);
 }
 if (mflag) {
  print_modems (fd, 1);
  close (fd);
  return (0);
 }
 if (eflag) {
  print_e1_stats (fd, 1);
  close (fd);
  return (0);
 }
 if (tflag) {
  print_e3_stats (fd, 1);
  close (fd);
  return (0);
 }
 if (cflag) {
  clear_stats (fd);
  close (fd);
  return (0);
 }
 if (argc > 0)
  setup_chan (fd, argc, argv);
 else
  print_chan (fd);
 close (fd);
 return (0);
}
