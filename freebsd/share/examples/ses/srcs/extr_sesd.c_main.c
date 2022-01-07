
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int encioc_enc_status_t ;
typedef int * caddr_t ;


 int ALLSTAT ;
 int ENCIOC_GETENCSTAT ;
 int ENCIOC_INIT ;
 int ENCIOC_SETENCSTAT ;
 int LOG_ALERT ;
 int LOG_CONS ;
 int LOG_CRIT ;
 int LOG_ERR ;
 int LOG_NOTICE ;
 int LOG_PERROR ;
 int LOG_USER ;
 int LOG_WARNING ;
 int O_RDWR ;
 int SES_ENCSTAT_CRITICAL ;
 int SES_ENCSTAT_INFO ;
 int SES_ENCSTAT_NONCRITICAL ;
 int SES_ENCSTAT_UNRECOV ;
 int atoi (int ) ;
 int close (int) ;
 scalar_t__ daemon (int ,int ) ;
 int errno ;
 int fprintf (int ,char const*,char*,...) ;
 int getopt (int,char**,char*) ;
 scalar_t__ ioctl (int,int ,int *) ;
 int* malloc (int) ;
 int open (char*,int ) ;
 int openlog (char*,int,int ) ;
 int optarg ;
 int optind ;
 int perror (char*) ;
 int sleep (int) ;
 int stderr ;
 char* strerror (int ) ;
 int syslog (int ,char*,char*) ;

int
main(int a, char **v)
{
 static const char *usage =
     "usage: %s [ -c ] [ -d ] [ -t pollinterval ] device [ device ]\n";
 int fd, polltime, dev, nodaemon, clear, c;
 encioc_enc_status_t stat, nstat, *carray;

 if (a < 2) {
  fprintf(stderr, usage, *v);
  return (1);
 }

 nodaemon = 0;
 polltime = 30;
 clear = 0;
 while ((c = getopt(a, v, "cdt:")) != -1) {
  switch (c) {
  case 'c':
   clear = 1;
   break;
  case 'd':
   nodaemon = 1;
   break;
  case 't':
   polltime = atoi(optarg);
   break;
  default:
   fprintf(stderr, usage, *v);
   return (1);
  }
 }

 carray = malloc(a);
 if (carray == ((void*)0)) {
  perror("malloc");
  return (1);
 }
 for (dev = optind; dev < a; dev++)
  carray[dev] = (encioc_enc_status_t) -1;




 for (dev = optind; dev < a; dev++) {
  fd = open(v[dev], O_RDWR);
  if (fd < 0) {
   perror(v[dev]);
   return (1);
  }
  if (ioctl(fd, ENCIOC_INIT, ((void*)0)) < 0) {
   fprintf(stderr, "%s: ENCIOC_INIT fails- %s\n",
       v[dev], strerror(errno));
   return (1);
  }
  (void) close(fd);
 }
 if (nodaemon == 0) {
  if (daemon(0, 0) < 0) {
   perror("daemon");
   return (1);
  }
  openlog("sesd", LOG_CONS, LOG_USER);
 } else {
  openlog("sesd", LOG_CONS|LOG_PERROR, LOG_USER);
 }

 for (;;) {
  for (dev = optind; dev < a; dev++) {
   fd = open(v[dev], O_RDWR);
   if (fd < 0) {
    syslog(LOG_ERR, "%s: %m", v[dev]);
    continue;
   }




   if (ioctl(fd, ENCIOC_GETENCSTAT, (caddr_t) &stat) < 0) {
    syslog(LOG_ERR,
        "%s: ENCIOC_GETENCSTAT- %m", v[dev]);
    (void) close(fd);
    continue;
   }
   if (stat != 0 && clear) {
    nstat = 0;
    if (ioctl(fd, ENCIOC_SETENCSTAT,
        (caddr_t) &nstat) < 0) {
     syslog(LOG_ERR,
         "%s: ENCIOC_SETENCSTAT- %m", v[dev]);
    }
   }
   (void) close(fd);

   if (stat == carray[dev])
    continue;

   carray[dev] = stat;
   if ((stat & ALLSTAT) == 0) {
    syslog(LOG_NOTICE,
        "%s: Enclosure Status OK", v[dev]);
   }
   if (stat & SES_ENCSTAT_INFO) {
    syslog(LOG_NOTICE,
        "%s: Enclosure Has Information", v[dev]);
   }
   if (stat & SES_ENCSTAT_NONCRITICAL) {
    syslog(LOG_WARNING,
        "%s: Enclosure Non-Critical", v[dev]);
   }
   if (stat & SES_ENCSTAT_CRITICAL) {
    syslog(LOG_CRIT,
        "%s: Enclosure Critical", v[dev]);
   }
   if (stat & SES_ENCSTAT_UNRECOV) {
    syslog(LOG_ALERT,
        "%s: Enclosure Unrecoverable", v[dev]);
   }
  }
  sleep(polltime);
 }

}
