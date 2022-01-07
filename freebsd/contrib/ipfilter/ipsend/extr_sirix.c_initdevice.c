
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr_raw {int sr_ifname; int sr_port; int sr_family; } ;
typedef int sr ;


 int AF_RAW ;
 int ETHERTYPE_IP ;
 int PF_RAW ;
 int RAWPROTO_DRAIN ;
 int SOCK_RAW ;
 scalar_t__ bind (int,struct sockaddr_raw*,int) ;
 int close (int) ;
 int memset (struct sockaddr_raw*,int ,int) ;
 int perror (char*) ;
 int socket (int ,int ,int ) ;
 int strncpy (int ,char*,int) ;

int initdevice(char *device, int tout)
{
 int fd;
 struct sockaddr_raw sr;

 if ((fd = socket(PF_RAW, SOCK_RAW, RAWPROTO_DRAIN)) < 0)
     {
  perror("socket(PF_RAW, SOCK_RAW, RAWPROTO_DRAIN)");
  return -1;
     }

 memset(&sr, 0, sizeof(sr));
 sr.sr_family = AF_RAW;
 sr.sr_port = ETHERTYPE_IP;
 strncpy(sr.sr_ifname, device, sizeof(sr.sr_ifname));
 if (bind(fd, &sr, sizeof(sr)) < 0)
     {
  perror("bind AF_RAW");
  close(fd);
  return -1;
     }
 return fd;
}
