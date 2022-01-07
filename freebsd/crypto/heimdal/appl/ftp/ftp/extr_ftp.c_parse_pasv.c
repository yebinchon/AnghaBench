
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int s_addr; } ;
struct sockaddr_in {int sin_port; TYPE_1__ sin_addr; int sin_family; } ;


 int AF_INET ;
 int htonl (int) ;
 int htons (int) ;
 int memset (struct sockaddr_in*,int ,int) ;
 int printf (char*) ;
 int sscanf (char const*,char*,int*,int*,int*,int*,int*,int*) ;

__attribute__((used)) static int
parse_pasv (struct sockaddr_in *sin4, const char *str)
{
    int a0, a1, a2, a3, p0, p1;
    if (sscanf (str, "%d,%d,%d,%d,%d,%d",
  &a0, &a1, &a2, &a3, &p0, &p1) != 6) {
 printf ("Passive mode address scan failure. "
  "Shouldn't happen!\n");
 return -1;
    }
    if (a0 < 0 || a0 > 255 ||
 a1 < 0 || a1 > 255 ||
 a2 < 0 || a2 > 255 ||
 a3 < 0 || a3 > 255 ||
 p0 < 0 || p0 > 255 ||
 p1 < 0 || p1 > 255) {
 printf ("Can't parse passive mode string.\n");
 return -1;
    }
    memset (sin4, 0, sizeof(*sin4));
    sin4->sin_family = AF_INET;
    sin4->sin_addr.s_addr = htonl ((a0 << 24) | (a1 << 16) |
      (a2 << 8) | a3);
    sin4->sin_port = htons ((p0 << 8) | p1);
    return 0;
}
