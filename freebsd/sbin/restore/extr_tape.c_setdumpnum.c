
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtop {int mt_count; int mt_op; } ;


 int MTFSF ;
 int MTIOCTOP ;
 int done (int) ;
 int dumpnum ;
 int errno ;
 int fprintf (int ,char*,...) ;
 scalar_t__ host ;
 scalar_t__ ioctl (int ,int ,char*) ;
 int mt ;
 int pipecmdin ;
 scalar_t__ pipein ;
 int rmtioctl (int ,int) ;
 int stderr ;
 char* strerror (int ) ;
 int volno ;

__attribute__((used)) static void
setdumpnum(void)
{
 struct mtop tcom;

 if (dumpnum == 1 || volno != 1)
  return;
 if (pipein) {
  fprintf(stderr, "Cannot have multiple dumps on pipe input\n");
  done(1);
 }
 tcom.mt_op = MTFSF;
 tcom.mt_count = dumpnum - 1;





  if (!pipecmdin && ioctl(mt, MTIOCTOP, (char *)&tcom) < 0)
   fprintf(stderr, "ioctl MTFSF: %s\n", strerror(errno));
}
