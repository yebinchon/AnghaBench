
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sgttyb {int sg_flags; scalar_t__ sg_kill; scalar_t__ sg_erase; int sg_ospeed; int sg_ispeed; } ;


 int B300 ;
 int CHULDISC ;
 int EVENP ;
 int I_POP ;
 int I_PUSH ;
 int ODDP ;
 int O_RDONLY ;
 int RAW ;
 int TIOCEXCL ;
 int TIOCSETD ;
 int TIOCSETP ;
 scalar_t__ debug ;
 int error (char*,char*,char*) ;
 int fprintf (int ,char*) ;
 scalar_t__ ioctl (int,int ,char*) ;
 int open (char*,int ,int) ;
 int stderr ;
 scalar_t__ usechuldisc ;

int
openterm(
 char *dev
 )
{
 int s;
 struct sgttyb ttyb;

 if (debug)
     (void) fprintf(stderr, "Doing open...");
 if ((s = open(dev, O_RDONLY, 0777)) < 0)
     error("open(%s)", dev, "");
 if (debug)
     (void) fprintf(stderr, "open okay\n");

 if (debug)
     (void) fprintf(stderr, "Setting exclusive use...");
 if (ioctl(s, TIOCEXCL, (char *)0) < 0)
     error("ioctl(TIOCEXCL)", "", "");
 if (debug)
     (void) fprintf(stderr, "done\n");

 ttyb.sg_ispeed = ttyb.sg_ospeed = B300;
 ttyb.sg_erase = ttyb.sg_kill = 0;
 ttyb.sg_flags = EVENP|ODDP|RAW;
 if (debug)
     (void) fprintf(stderr, "Setting baud rate et al...");
 if (ioctl(s, TIOCSETP, (char *)&ttyb) < 0)
     error("ioctl(TIOCSETP, raw)", "", "");
 if (debug)
     (void) fprintf(stderr, "done\n");
 return s;
}
