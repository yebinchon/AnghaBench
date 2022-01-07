
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SHUT_RDWR ;
 int close (scalar_t__) ;
 int shutdown (scalar_t__,int ) ;
 scalar_t__ sock ;

void ucma_ib_cleanup(void)
{
 if (sock >= 0) {
  shutdown(sock, SHUT_RDWR);
  close(sock);
 }
}
