
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;
typedef int sockaddr_u ;


 int AF (int const*) ;



 int LIB_BUFLENGTH ;
 int LIB_GETBUF (char*) ;
 int PSOCK_ADDR4 (int const*) ;
 int PSOCK_ADDR6 (int const*) ;
 int SCOPE_VAR (int const*) ;
 int errno ;
 int inet_ntop (int const,int ,char*,int ) ;
 int snprintf (char*,int ,char*,...) ;
 int socket_errno () ;
 int strchr (char*,char) ;
 int strlcpy (char*,char*,int ) ;

const char *
socktoa(
 const sockaddr_u *sock
 )
{
 int saved_errno;
 char * res;
 char * addr;
 u_long scope;

 saved_errno = socket_errno();
 LIB_GETBUF(res);

 if (((void*)0) == sock) {
  strlcpy(res, "(null)", LIB_BUFLENGTH);
 } else {
  switch(AF(sock)) {

  case 130:
  case 128:
   inet_ntop(130, PSOCK_ADDR4(sock), res,
      LIB_BUFLENGTH);
   break;

  case 129:
   inet_ntop(129, PSOCK_ADDR6(sock), res,
      LIB_BUFLENGTH);
   scope = SCOPE_VAR(sock);
   if (0 != scope && !strchr(res, '%')) {
    addr = res;
    LIB_GETBUF(res);
    snprintf(res, LIB_BUFLENGTH, "%s%%%lu",
      addr, scope);
    res[LIB_BUFLENGTH - 1] = '\0';
   }
   break;

  default:
   snprintf(res, LIB_BUFLENGTH,
     "(socktoa unknown family %d)",
     AF(sock));
  }
 }
 errno = saved_errno;

 return res;
}
