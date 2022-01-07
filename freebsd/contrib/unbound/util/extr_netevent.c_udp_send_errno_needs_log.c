
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr_storage {int dummy; } ;
struct sockaddr {int dummy; } ;
typedef int socklen_t ;


 int EACCES ;
 int EADDRINUSE ;
 int EADDRNOTAVAIL ;


 int EINVAL ;


 int EPERM ;
 scalar_t__ VERB_ALGO ;
 scalar_t__ VERB_DETAIL ;
 scalar_t__ addr_is_broadcast (struct sockaddr_storage*,int ) ;
 scalar_t__ addr_is_ip4mapped (struct sockaddr_storage*,int ) ;
 int errno ;
 scalar_t__ verbosity ;

__attribute__((used)) static int
udp_send_errno_needs_log(struct sockaddr* addr, socklen_t addrlen)
{


 switch(errno) {

  case 128:


  case 131:


  case 130:


  case 129:

   if(verbosity < VERB_ALGO)
    return 0;
  default:
   break;
 }



 if( ((errno == EPERM)




  ) && verbosity < VERB_DETAIL)
  return 0;
 if(errno == EINVAL && addr_is_ip4mapped(
  (struct sockaddr_storage*)addr, addrlen) &&
  verbosity < VERB_DETAIL)
  return 0;


 if(errno == EACCES && addr_is_broadcast(
  (struct sockaddr_storage*)addr, addrlen) &&
  verbosity < VERB_DETAIL)
  return 0;
 return 1;
}
