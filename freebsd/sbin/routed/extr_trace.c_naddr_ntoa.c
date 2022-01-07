
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct in_addr {int s_addr; } ;
typedef int naddr ;


 int NUM_BUFS ;
 int inet_ntoa (struct in_addr) ;
 char* strcpy (char*,int ) ;

char *
naddr_ntoa(naddr a)
{

 static int bufno;
 static struct {
     char str[16];
 } bufs[4];
 char *s;
 struct in_addr addr;

 addr.s_addr = a;
 s = strcpy(bufs[bufno].str, inet_ntoa(addr));
 bufno = (bufno+1) % 4;
 return s;

}
