
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sockaddr_dl {int sdl_len; int sdl_alen; int* sdl_data; void* sdl_family; scalar_t__ sdl_nlen; } ;
struct sockaddr {int sa_len; int sa_data; void* sa_family; } ;
typedef int sdl ;
struct TYPE_2__ {struct sockaddr ifr_addr; } ;


 int ADDR ;
 void* AF_LINK ;
 int ETHER_ADDR_LEN ;
 int LLADDR (struct sockaddr_dl*) ;
 int arc4random_buf (int**,int) ;
 int bcopy (int ,int ,int) ;
 int errx (int,char*) ;
 int free (char*) ;
 int link_addr (char*,struct sockaddr_dl*) ;
 TYPE_1__ link_ridreq ;
 char* malloc (scalar_t__) ;
 int strcmp (char const*,char*) ;
 int strcpy (char*,char const*) ;
 scalar_t__ strlen (char const*) ;

__attribute__((used)) static void
link_getaddr(const char *addr, int which)
{
 char *temp;
 struct sockaddr_dl sdl;
 struct sockaddr *sa = &link_ridreq.ifr_addr;

 if (which != ADDR)
  errx(1, "can't set link-level netmask or broadcast");
 if (!strcmp(addr, "random")) {
  sdl.sdl_len = sizeof(sdl);
  sdl.sdl_alen = ETHER_ADDR_LEN;
  sdl.sdl_nlen = 0;
  sdl.sdl_family = AF_LINK;
  arc4random_buf(&sdl.sdl_data, ETHER_ADDR_LEN);

  sdl.sdl_data[0] &= 0xfc;
  sdl.sdl_data[0] |= 0x02;
 } else {
  if ((temp = malloc(strlen(addr) + 2)) == ((void*)0))
   errx(1, "malloc failed");
  temp[0] = ':';
  strcpy(temp + 1, addr);
  sdl.sdl_len = sizeof(sdl);
  link_addr(temp, &sdl);
  free(temp);
 }
 if (sdl.sdl_alen > sizeof(sa->sa_data))
  errx(1, "malformed link-level address");
 sa->sa_family = AF_LINK;
 sa->sa_len = sdl.sdl_alen;
 bcopy(LLADDR(&sdl), sa->sa_data, sdl.sdl_alen);
}
