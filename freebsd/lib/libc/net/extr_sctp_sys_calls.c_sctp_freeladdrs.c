
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr {int dummy; } ;
typedef int sctp_assoc_t ;
typedef scalar_t__ caddr_t ;


 int free (void*) ;

void
sctp_freeladdrs(struct sockaddr *addrs)
{
 void *fr_addr;


 fr_addr = (void *)((caddr_t)addrs - sizeof(sctp_assoc_t));

 free(fr_addr);
}
