
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int errcode; void* errtype; } ;
struct TYPE_5__ {int* sockets; TYPE_1__ error; } ;
typedef TYPE_2__ ifconfig_handle_t ;


 int const AF_MAX ;
 int EINVAL ;
 void* SOCKET ;
 int SOCK_DGRAM ;
 int errno ;
 int socket (int const,int ,int ) ;

int
ifconfig_socket(ifconfig_handle_t *h, const int addressfamily, int *s)
{

 if (addressfamily > AF_MAX) {
  h->error.errtype = SOCKET;
  h->error.errcode = EINVAL;
  return (-1);
 }

 if (h->sockets[addressfamily] != -1) {
  *s = h->sockets[addressfamily];
  return (0);
 }


 h->sockets[addressfamily] = socket(addressfamily, SOCK_DGRAM, 0);
 if (h->sockets[addressfamily] == -1) {
  h->error.errtype = SOCKET;
  h->error.errcode = errno;
  return (-1);
 }

 *s = h->sockets[addressfamily];
 return (0);
}
