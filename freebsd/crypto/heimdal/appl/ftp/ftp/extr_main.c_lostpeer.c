
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RETSIGTYPE ;


 int SHUT_RDWR ;
 int SIGRETURN (int ) ;
 int close (int) ;
 scalar_t__ connected ;
 int * cout ;
 int data ;
 int fclose (int *) ;
 int fileno (int *) ;
 scalar_t__ proxflag ;
 int pswitch (int) ;
 int sec_end () ;
 int shutdown (int,int ) ;

RETSIGTYPE
lostpeer(int sig)
{

    if (connected) {
 if (cout != ((void*)0)) {
     shutdown(fileno(cout), SHUT_RDWR);
     fclose(cout);
     cout = ((void*)0);
 }
 if (data >= 0) {
     shutdown(data, SHUT_RDWR);
     close(data);
     data = -1;
 }
 connected = 0;
    }
    pswitch(1);
    if (connected) {
 if (cout != ((void*)0)) {
     shutdown(fileno(cout), SHUT_RDWR);
     fclose(cout);
     cout = ((void*)0);
 }
 connected = 0;
    }
    proxflag = 0;
    pswitch(0);
    sec_end();
    SIGRETURN(0);
}
