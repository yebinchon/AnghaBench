
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sockaddr_u ;


 scalar_t__ IS_IPV6 (int const*) ;
 int LIB_BUFLENGTH ;
 int LIB_GETBUF (char*) ;
 int SRCPORT (int const*) ;
 int errno ;
 int snprintf (char*,int ,char*,char const*,int ) ;
 int socket_errno () ;
 char* socktoa (int const*) ;

const char *
sockporttoa(
 const sockaddr_u *sock
 )
{
 int saved_errno;
 const char * atext;
 char * buf;

 saved_errno = socket_errno();
 atext = socktoa(sock);
 LIB_GETBUF(buf);
 snprintf(buf, LIB_BUFLENGTH,
   (IS_IPV6(sock))
       ? "[%s]:%hu"
       : "%s:%hu",
   atext, SRCPORT(sock));
 errno = saved_errno;

 return buf;
}
