
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sockaddr_u ;


 scalar_t__ ISREFCLOCKADR (int *) ;
 int LIB_BUFLENGTH ;
 int LIB_GETBUF (char*) ;
 scalar_t__ SOCK_UNSPEC (int *) ;
 int SRCPORT (int *) ;
 char const* refnumtoa (int *) ;
 int showhostnames ;
 int snprintf (char*,int ,char*,char const*,int) ;
 char* socktohost (int *) ;
 char const* sptoa (int *) ;

const char *
nntohostp(
 sockaddr_u *netnum
 )
{
 const char * hostn;
 char * buf;

 if (!showhostnames || SOCK_UNSPEC(netnum))
  return sptoa(netnum);
 else if (ISREFCLOCKADR(netnum))
  return refnumtoa(netnum);

 hostn = socktohost(netnum);
 LIB_GETBUF(buf);
 snprintf(buf, LIB_BUFLENGTH, "%s:%u", hostn, SRCPORT(netnum));

 return buf;
}
