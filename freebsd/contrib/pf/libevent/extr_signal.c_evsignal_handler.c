
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int errno ;
 int * ev_signal_pair ;
 int * evsigcaught ;
 int evsignal_caught ;
 int write (int ,char*,int) ;

__attribute__((used)) static void
evsignal_handler(int sig)
{
 int save_errno = errno;

 evsigcaught[sig]++;
 evsignal_caught = 1;


 write(ev_signal_pair[0], "a", 1);
 errno = save_errno;
}
