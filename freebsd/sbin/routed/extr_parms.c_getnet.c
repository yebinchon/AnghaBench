
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netent {scalar_t__ n_net; } ;
struct in_addr {int s_addr; } ;
typedef int naddr ;
typedef int hname ;


 int HOST_MASK ;
 int MAXHOSTNAMELEN ;
 int RIP_DEFAULT ;
 struct netent* getnetbyname (char*) ;
 int htonl (int) ;
 int inet_aton (char*,struct in_addr*) ;
 int memmove (char*,char*,int) ;
 int ntohl (int) ;
 int std_mask (int ) ;
 int strcasecmp (char*,char*) ;
 char* strrchr (char*,char) ;
 scalar_t__ strtoul (char*,char**,int ) ;

int
getnet(char *name,
       naddr *netp,
       naddr *maskp)
{
 int i;
 struct netent *np;
 naddr mask;
 struct in_addr in;
 char hname[MAXHOSTNAMELEN+1];
 char *mname, *p;




 if (((void*)0) != (mname = strrchr(name,'/'))) {
  i = (int)(mname - name);
  if (i > (int)sizeof(hname)-1)
   return 0;
  memmove(hname, name, i);
  hname[i] = '\0';
  mname++;
  name = hname;
 }

 np = getnetbyname(name);
 if (np != ((void*)0)) {
  in.s_addr = (naddr)np->n_net;
  if (0 == (in.s_addr & 0xff000000))
   in.s_addr <<= 8;
  if (0 == (in.s_addr & 0xff000000))
   in.s_addr <<= 8;
  if (0 == (in.s_addr & 0xff000000))
   in.s_addr <<= 8;
 } else if (inet_aton(name, &in) == 1) {
  in.s_addr = ntohl(in.s_addr);
 } else if (!mname && !strcasecmp(name,"default")) {
  in.s_addr = RIP_DEFAULT;
 } else {
  return 0;
 }

 if (!mname) {



  mask = std_mask(htonl(in.s_addr));
  if ((~mask & in.s_addr) != 0)
   mask = HOST_MASK;
 } else {
  mask = (naddr)strtoul(mname, &p, 0);
  if (*p != '\0' || mask > 32)
   return 0;
  if (mask != 0)
   mask = HOST_MASK << (32-mask);
 }


 if (mask != 0 && in.s_addr == RIP_DEFAULT)
  return 0;

 if ((~mask & in.s_addr) != 0)
  return 0;

 if ((mask & in.s_addr) == 0 && in.s_addr != RIP_DEFAULT)
  return 0;
 if (in.s_addr>>24 == 0 && in.s_addr != RIP_DEFAULT)
  return 0;
 if (in.s_addr>>24 == 0xff)
  return 0;

 *netp = in.s_addr;
 *maskp = mask;
 return 1;
}
