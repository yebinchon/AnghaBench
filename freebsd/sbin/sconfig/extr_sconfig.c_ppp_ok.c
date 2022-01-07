
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int dummy; } ;
struct ifreq {int ifr_name; } ;
typedef int* caddr_t ;


 int AF_INET ;
 int N_PPP ;
 int SIOCGIFFLAGS ;
 int SOCK_DGRAM ;
 int TIOCSETD ;
 int close (int) ;
 int fprintf (int ,char*) ;
 scalar_t__ ioctl (int,int ,int*) ;
 int open (char*,int) ;
 int socket (int ,int ,int ) ;
 int sprintf (char*,char*) ;
 scalar_t__ stat (char*,struct stat*) ;
 int stderr ;
 int strncpy (int ,char*,int) ;

__attribute__((used)) static int
ppp_ok (void)
{

 int s, p;
 struct ifreq ifr;
 char pttyname[32];
 char *p1, *p2;
 int i, j;
 int ppp_disc = N_PPP;




 s = socket (AF_INET, SOCK_DGRAM, 0);
 if (s < 0) {
  fprintf (stderr, "Error opening socket.\n");
  return 0;
 }
 strncpy (ifr.ifr_name, "ppp0", sizeof (ifr.ifr_name));
 if (ioctl (s, SIOCGIFFLAGS, (caddr_t) &ifr) >= 0) {

  close (s);
  return 1;
 }
 close (s);


 sprintf (pttyname, "/dev/ptyXX");
 p1 = &pttyname[8];
 p2 = &pttyname[9];
 for (i=0; i<16; i++) {
  struct stat stb;

  *p1 = "pqrstuvwxyzabcde"[i];
  *p2 = '0';
  if (stat (pttyname, &stb) < 0)
   continue;
  for (j=0; j<16; j++) {
   *p2 = "0123456789abcdef"[j];
   p = open (pttyname, 2);
   if (p > 0) {
    if (ioctl (p, TIOCSETD, &ppp_disc) < 0) {
     fprintf (stderr, "No PPP discipline in kernel.\n");
     close (p);
     return 0;
    }
    close (p);
    return 1;
   }
  }
 }
 fprintf (stderr, "Cannot get pseudo-tty.\n");
 return 0;



}
