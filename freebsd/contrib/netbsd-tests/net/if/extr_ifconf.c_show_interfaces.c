
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int sa_len; int sa_family; } ;
struct ifreq {char* ifr_name; TYPE_1__ ifr_addr; } ;
struct ifconf {int ifc_len; struct ifreq* ifc_req; } ;


 int AF_INET ;
 int EXIT_FAILURE ;
 int SIOCGIFCONF ;
 int SOCK_DGRAM ;
 int close (int) ;
 int err (int ,char*,...) ;
 int errx (int ,char*,int) ;
 int free (struct ifreq*) ;
 int get_number_of_entries () ;
 int ioctl (int,int ,struct ifconf*) ;
 struct ifreq* malloc (int) ;
 int printf (char*,char*,int ,int ) ;
 int socket (int ,int ,int ) ;

__attribute__((used)) static void
show_interfaces(int nifreqs)
{
 int i, fd, r;
 struct ifconf ifc;
 struct ifreq *ifreqs;

 if (nifreqs == 0)
  nifreqs = get_number_of_entries();

 if (nifreqs <= 0)
  errx(EXIT_FAILURE, "nifreqs=%d", nifreqs);

 ifreqs = malloc(sizeof(struct ifreq) * nifreqs);
 if (ifreqs == ((void*)0))
  err(EXIT_FAILURE, "malloc(sizeof(ifreq) * %d)", nifreqs);

 fd = socket(AF_INET, SOCK_DGRAM, 0);
 if (fd == -1)
  err(EXIT_FAILURE, "socket");

 ifc.ifc_len = sizeof(struct ifreq) * nifreqs;
 ifc.ifc_req = ifreqs;

 r = ioctl(fd, SIOCGIFCONF, &ifc);
 if (r == -1)
  err(EXIT_FAILURE, "ioctl");
 close(fd);

 for (i=0; i < (int)(ifc.ifc_len / sizeof(struct ifreq)); i++) {
  printf("%s: af=%hhu socklen=%hhu\n", ifreqs[i].ifr_name,
      ifreqs[i].ifr_addr.sa_family, ifreqs[i].ifr_addr.sa_len);
 }

 free(ifreqs);
}
