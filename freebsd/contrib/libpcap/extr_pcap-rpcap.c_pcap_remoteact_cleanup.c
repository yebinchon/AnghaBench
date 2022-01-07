
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int closesocket (scalar_t__) ;
 int sock_cleanup () ;
 scalar_t__ sockmain ;

void pcap_remoteact_cleanup(void)
{

 if (sockmain)
 {
  closesocket(sockmain);


  sock_cleanup();
 }

}
