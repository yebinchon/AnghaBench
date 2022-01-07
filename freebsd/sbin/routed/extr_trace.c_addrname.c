
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
typedef int naddr ;


 int NUM_BUFS ;
 int naddr_ntoa (int) ;
 int snprintf (char*,int,char*,int) ;
 int std_mask (int) ;
 int strlcpy (char*,int ,int) ;
 size_t strlen (char*) ;

char *
addrname(naddr addr,
  naddr mask,
  int force)
{

 static int bufno;
 static struct {
     char str[15+20];
 } bufs[4];
 char *s, *sp;
 naddr dmask;
 size_t l;
 int i;

 strlcpy(bufs[bufno].str, naddr_ntoa(addr), sizeof(bufs[bufno].str));
 s = bufs[bufno].str;
 l = sizeof(bufs[bufno].str);
 bufno = (bufno+1) % 4;

 if (force == 1 || (force == 0 && mask != std_mask(addr))) {
  sp = &s[strlen(s)];

  dmask = mask & -mask;
  if (mask + dmask == 0) {
   for (i = 0; i != 32 && ((1<<i) & mask) == 0; i++)
    continue;
   (void)snprintf(sp, s + l - sp, "/%d", 32-i);

  } else {
   (void)snprintf(sp, s + l - sp, " (mask %#x)",
       (u_int)mask);
  }
 }

 return s;

}
