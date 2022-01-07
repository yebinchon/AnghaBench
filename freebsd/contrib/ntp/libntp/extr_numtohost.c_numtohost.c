
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32 ;
struct hostent {int h_name; } ;


 int AF_INET ;
 int LIB_BUFLENGTH ;
 int LIB_GETBUF (char*) ;
 int LOOPBACKHOST ;
 int LOOPBACKNET ;
 int LOOPBACKNETMASK ;
 struct hostent* gethostbyaddr (char*,int,int ) ;
 int ntohl (int ) ;
 char* numtoa (int ) ;
 int strlcpy (char*,int ,int ) ;

char *
numtohost(
 u_int32 netnum
 )
{
 char *bp;
 struct hostent *hp;







 if ((((ntohl(netnum) & LOOPBACKNETMASK) == LOOPBACKNET)
      && (ntohl(netnum) != LOOPBACKHOST))
     || ((hp = gethostbyaddr((char *)&netnum, sizeof netnum, AF_INET))
  == 0))
     return numtoa(netnum);

 LIB_GETBUF(bp);
 strlcpy(bp, hp->h_name, LIB_BUFLENGTH);

 return bp;
}
