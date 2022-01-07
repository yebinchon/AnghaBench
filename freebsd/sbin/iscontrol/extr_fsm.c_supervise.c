
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int trans_t ;
struct TYPE_8__ {int flags; int fd; TYPE_1__* op; } ;
typedef TYPE_2__ isess_t ;
struct TYPE_7__ {int * pidfile; int sessionType; } ;
typedef int FILE ;


 int ISCSIRESTART ;
 int ISCSISIGNAL ;
 int ISCSISTART ;
 int ISCSISTOP ;
 int LOG_CONS ;
 int LOG_INFO ;
 int LOG_KERN ;
 int LOG_NDELAY ;
 int LOG_PERROR ;
 int LOG_PID ;
 int LOG_WARNING ;
 int SESS_DISCONNECT ;
 int SESS_FULLFEATURE ;
 int SESS_INITIALLOGIN1 ;
 int SESS_RECONNECT ;
 int SESS_REDIRECT ;
 int SIGHUP ;
 int SIGINT ;
 int SIGTERM ;
 int SIGUSR1 ;
 int T15 ;
 int T8 ;
 int T9 ;
 TYPE_2__* currsess ;
 scalar_t__ daemon (int ,int) ;
 int debug_called (int) ;
 scalar_t__ doCAM (TYPE_2__*) ;
 int exit (int) ;
 int fclose (int *) ;
 int * fopen (int *,char*) ;
 int fprintf (int *,char*,int) ;
 int getpid () ;
 scalar_t__ ioctl (int ,int ,...) ;
 int openlog (char*,int,int ) ;
 int perror (char*) ;
 int printf (char*) ;
 scalar_t__ setOptions (TYPE_2__*,int) ;
 int signal (int,int ) ;
 int sleep (int) ;
 scalar_t__ strcmp (int ,char*) ;
 int syslog (int ,char*,...) ;
 int trap ;
 scalar_t__ vflag ;

__attribute__((used)) static trans_t
supervise(isess_t *sess)
{
     int sig, val;

     debug_called(3);

     if(strcmp(sess->op->sessionType, "Discovery") == 0) {
   sess->flags |= SESS_DISCONNECT;
   return T9;
     }

     if(vflag)
   printf("ready to go scsi\n");

     if(setOptions(sess, SESS_FULLFEATURE) != 0)
   return 0;

     if((sess->flags & SESS_FULLFEATURE) == 0) {
   if(daemon(0, 1) != 0) {
        perror("daemon");
        exit(1);
   }
   if(sess->op->pidfile != ((void*)0)) {
        FILE *pidf;

        pidf = fopen(sess->op->pidfile, "w");
        if(pidf != ((void*)0)) {
       fprintf(pidf, "%d\n", getpid());
      fclose(pidf);
        }
   }
   openlog("iscontrol", LOG_CONS|LOG_PERROR|LOG_PID|LOG_NDELAY, LOG_KERN);
   syslog(LOG_INFO, "running");

   currsess = sess;
   if(ioctl(sess->fd, ISCSISTART)) {
        perror("ISCSISTART");
        return -1;
   }
   if(doCAM(sess) == 0) {
        syslog(LOG_WARNING, "no device found");
        ioctl(sess->fd, ISCSISTOP);
        return T15;
   }

     }
     else {
   if(ioctl(sess->fd, ISCSIRESTART)) {
        perror("ISCSIRESTART");
        return -1;
   }
     }

     signal(SIGINT, trap);
     signal(SIGHUP, trap);
     signal(SIGTERM, trap);

     sig = SIGUSR1;
     signal(sig, trap);
     if(ioctl(sess->fd, ISCSISIGNAL, &sig)) {
   perror("ISCSISIGNAL");
   return -1;
     }
     sess->flags |= SESS_FULLFEATURE;

     sess->flags &= ~(SESS_REDIRECT | SESS_RECONNECT);
     if(vflag)
   printf("iscontrol: supervise starting main loop\n");




     while((sess->flags & (SESS_REDIRECT|SESS_RECONNECT|SESS_DISCONNECT)) == 0) {


   sleep(60);
     }
     printf("iscontrol: supervise going down\n");
     syslog(LOG_INFO, "sess flags=%x", sess->flags);

     sig = 0;
     if(ioctl(sess->fd, ISCSISIGNAL, &sig)) {
   perror("ISCSISIGNAL");
     }

     if(sess->flags & SESS_DISCONNECT) {
   sess->flags &= ~SESS_FULLFEATURE;
   return T9;
     }
     else {
   val = 0;
   if(ioctl(sess->fd, ISCSISTOP, &val)) {
        perror("ISCSISTOP");
   }
   sess->flags |= SESS_INITIALLOGIN1;
     }
     return T8;
}
