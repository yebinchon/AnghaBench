
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xaddr {int af; int scope_id; int v6; int v4; } ;
struct sockaddr_in6 {int sin6_scope_id; int sin6_addr; } ;
struct sockaddr_in {int sin_addr; } ;
struct sockaddr {int sa_family; } ;
typedef int socklen_t ;




 int memcpy (int *,int *,int) ;
 int memset (struct xaddr*,char,int) ;

__attribute__((used)) static int
addr_sa_to_xaddr(struct sockaddr *sa, socklen_t slen, struct xaddr *xa)
{
 struct sockaddr_in *in4 = (struct sockaddr_in *)sa;
 struct sockaddr_in6 *in6 = (struct sockaddr_in6 *)sa;

 memset(xa, '\0', sizeof(*xa));

 switch (sa->sa_family) {
 case 129:
  if (slen < (socklen_t)sizeof(*in4))
   return -1;
  xa->af = 129;
  memcpy(&xa->v4, &in4->sin_addr, sizeof(xa->v4));
  break;
 case 128:
  if (slen < (socklen_t)sizeof(*in6))
   return -1;
  xa->af = 128;
  memcpy(&xa->v6, &in6->sin6_addr, sizeof(xa->v6));



  break;
 default:
  return -1;
 }

 return 0;
}
