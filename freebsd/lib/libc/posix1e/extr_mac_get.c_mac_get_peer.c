
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mac {int dummy; } ;
typedef int socklen_t ;


 int SOL_SOCKET ;
 int SO_PEERLABEL ;
 int getsockopt (int,int ,int ,struct mac*,int*) ;

int
mac_get_peer(int fd, struct mac *label)
{
 socklen_t len;

 len = sizeof(*label);
 return (getsockopt(fd, SOL_SOCKET, SO_PEERLABEL, label, &len));
}
