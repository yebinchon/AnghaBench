
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_int16_t ;
struct sockaddr_storage {int dummy; } ;
struct sockaddr_in6 {scalar_t__ sin6_port; } ;
struct sockaddr_in {scalar_t__ sin_port; } ;
struct sockaddr {int sa_family; } ;
typedef int socklen_t ;
typedef int sa_family_t ;




 scalar_t__ EADDRINUSE ;
 scalar_t__ EPFNOSUPPORT ;
 int IPPORT_RESERVED ;
 int SOCK_STREAM ;
 scalar_t__ bind (int,struct sockaddr*,int) ;
 int bindresvport_sa (int,struct sockaddr*) ;
 int close (int) ;
 scalar_t__ errno ;
 scalar_t__ htons (int) ;
 int memset (struct sockaddr_storage*,char,int) ;
 int ntohs (scalar_t__) ;
 int socket (int,int ,int ) ;

int
rresvport_af(int *alport, sa_family_t af)
{
 struct sockaddr_storage ss;
 struct sockaddr *sa;
 u_int16_t *portp;
 int s;
 socklen_t salen;

 memset(&ss, '\0', sizeof ss);
 sa = (struct sockaddr *)&ss;

 switch (af) {
 case 129:
  salen = sizeof(struct sockaddr_in);
  portp = &((struct sockaddr_in *)sa)->sin_port;
  break;
 case 128:
  salen = sizeof(struct sockaddr_in6);
  portp = &((struct sockaddr_in6 *)sa)->sin6_port;
  break;
 default:
  errno = EPFNOSUPPORT;
  return (-1);
 }
 sa->sa_family = af;

 s = socket(af, SOCK_STREAM, 0);
 if (s < 0)
  return (-1);

 *portp = htons(*alport);
 if (*alport < IPPORT_RESERVED - 1) {
  if (bind(s, sa, salen) >= 0)
   return (s);
  if (errno != EADDRINUSE) {
   (void)close(s);
   return (-1);
  }
 }

 *portp = 0;
 sa->sa_family = af;
 if (bindresvport_sa(s, sa) == -1) {
  (void)close(s);
  return (-1);
 }
 *alport = ntohs(*portp);
 return (s);
}
