
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr_dl {int sdl_len; scalar_t__ sdl_alen; } ;
typedef int sdl ;


 scalar_t__ IEEE80211_ADDR_LEN ;
 int IEEE80211_IOC_MESH_RTCMD ;
 int LLADDR (struct sockaddr_dl*) ;
 int errx (int,char*) ;
 int free (char*) ;
 int link_addr (char*,struct sockaddr_dl*) ;
 char* malloc (scalar_t__) ;
 int set80211 (int,int ,int,scalar_t__,int ) ;
 int strcpy (char*,char const*) ;
 scalar_t__ strlen (char const*) ;

__attribute__((used)) static void
set80211meshrtmac(int s, int req, const char *val)
{
 char *temp;
 struct sockaddr_dl sdl;

 temp = malloc(strlen(val) + 2);
 if (temp == ((void*)0))
  errx(1, "malloc failed");
 temp[0] = ':';
 strcpy(temp + 1, val);
 sdl.sdl_len = sizeof(sdl);
 link_addr(temp, &sdl);
 free(temp);
 if (sdl.sdl_alen != IEEE80211_ADDR_LEN)
  errx(1, "malformed link-level address");
 set80211(s, IEEE80211_IOC_MESH_RTCMD, req,
     IEEE80211_ADDR_LEN, LLADDR(&sdl));
}
