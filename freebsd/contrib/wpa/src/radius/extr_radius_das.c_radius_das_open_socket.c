
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr_in {int sin_port; int sin_family; } ;
struct sockaddr {int dummy; } ;
typedef int addr ;


 int AF_INET ;
 int MSG_INFO ;
 int PF_INET ;
 int SOCK_DGRAM ;
 scalar_t__ bind (int,struct sockaddr*,int) ;
 int close (int) ;
 int errno ;
 int htons (int) ;
 int os_memset (struct sockaddr_in*,int ,int) ;
 int socket (int ,int ,int ) ;
 int strerror (int ) ;
 int wpa_printf (int ,char*,int ) ;

__attribute__((used)) static int radius_das_open_socket(int port)
{
 int s;
 struct sockaddr_in addr;

 s = socket(PF_INET, SOCK_DGRAM, 0);
 if (s < 0) {
  wpa_printf(MSG_INFO, "RADIUS DAS: socket: %s", strerror(errno));
  return -1;
 }

 os_memset(&addr, 0, sizeof(addr));
 addr.sin_family = AF_INET;
 addr.sin_port = htons(port);
 if (bind(s, (struct sockaddr *) &addr, sizeof(addr)) < 0) {
  wpa_printf(MSG_INFO, "RADIUS DAS: bind: %s", strerror(errno));
  close(s);
  return -1;
 }

 return s;
}
