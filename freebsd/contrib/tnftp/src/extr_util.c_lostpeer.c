
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int alarmtimer (int ) ;
 int cleanuppeer () ;
 int close (int) ;
 scalar_t__ connected ;
 int * cout ;
 int data ;
 int errno ;
 int fclose (int *) ;
 int fileno (int *) ;
 scalar_t__ proxflag ;
 int pswitch (int) ;
 int shutdown (int,int) ;

void
lostpeer(int dummy)
{
 int oerrno = errno;

 alarmtimer(0);
 if (connected) {
  if (cout != ((void*)0)) {
   (void)shutdown(fileno(cout), 1+1);
   (void)fclose(cout);
   cout = ((void*)0);
  }
  if (data >= 0) {
   (void)shutdown(data, 1+1);
   (void)close(data);
   data = -1;
  }
  connected = 0;
 }
 pswitch(1);
 if (connected) {
  if (cout != ((void*)0)) {
   (void)shutdown(fileno(cout), 1+1);
   (void)fclose(cout);
   cout = ((void*)0);
  }
  connected = 0;
 }
 proxflag = 0;
 pswitch(0);
 cleanuppeer();
 errno = oerrno;
}
