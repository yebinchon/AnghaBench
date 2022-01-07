
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int* fds_bits; } ;
typedef TYPE_1__ fd_set ;


 int FD_ZERO (TYPE_1__*) ;
 int svc_getreqset (TYPE_1__*) ;

void
svc_getreq(int rdfds)
{
 fd_set readfds;

 FD_ZERO(&readfds);
 readfds.fds_bits[0] = rdfds;
 svc_getreqset(&readfds);
}
