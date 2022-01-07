
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int flags; } ;
struct in6_ndireq {TYPE_1__ ndi; int ifname; } ;
typedef int nd ;
struct TYPE_4__ {int ifr_name; } ;


 int AF_INET6 ;
 scalar_t__ EAFNOSUPPORT ;
 scalar_t__ EPFNOSUPPORT ;
 scalar_t__ EPROTONOSUPPORT ;
 int ND6BITS ;
 int SIOCGIFINFO_IN6 ;
 int SOCK_DGRAM ;
 int close (int) ;
 scalar_t__ errno ;
 TYPE_2__ ifr ;
 int ioctl (int,int ,struct in6_ndireq*) ;
 int isnd6defif (int) ;
 int memset (struct in6_ndireq*,int ,int) ;
 int printb (char*,unsigned int,int ) ;
 int putchar (char) ;
 int socket (int ,int ,int ) ;
 int strlcpy (int ,int ,int) ;
 int warn (char*) ;

void
nd6_status(int s)
{
 struct in6_ndireq nd;
 int s6;
 int error;
 int isdefif;

 memset(&nd, 0, sizeof(nd));
 strlcpy(nd.ifname, ifr.ifr_name, sizeof(nd.ifname));
 if ((s6 = socket(AF_INET6, SOCK_DGRAM, 0)) < 0) {
  if (errno != EAFNOSUPPORT && errno != EPROTONOSUPPORT)
   warn("socket(AF_INET6, SOCK_DGRAM)");
  return;
 }
 error = ioctl(s6, SIOCGIFINFO_IN6, &nd);
 if (error) {
  if (errno != EPFNOSUPPORT)
   warn("ioctl(SIOCGIFINFO_IN6)");
  close(s6);
  return;
 }
 isdefif = isnd6defif(s6);
 close(s6);
 if (nd.ndi.flags == 0 && !isdefif)
  return;
 printb("\tnd6 options",
     (unsigned int)(nd.ndi.flags | (isdefif << 15)), ND6BITS);
 putchar('\n');
}
