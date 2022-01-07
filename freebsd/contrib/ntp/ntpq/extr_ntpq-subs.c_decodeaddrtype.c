
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32 ;
typedef int sockaddr_u ;


 int AF (int *) ;


 int IN6_IS_ADDR_MULTICAST (int ) ;
 int PSOCK_ADDR6 (int *) ;
 int SRCADR (int *) ;

__attribute__((used)) static char
decodeaddrtype(
 sockaddr_u *sock
 )
{
 char ch = '-';
 u_int32 dummy;

 switch(AF(sock)) {
 case 129:
  dummy = SRCADR(sock);
  ch = (char)(((dummy&0xf0000000)==0xe0000000) ? 'm' :
   ((dummy&0x000000ff)==0x000000ff) ? 'b' :
   ((dummy&0xffffffff)==0x7f000001) ? 'l' :
   ((dummy&0xffffffe0)==0x00000000) ? '-' :
   'u');
  break;
 case 128:
  if (IN6_IS_ADDR_MULTICAST(PSOCK_ADDR6(sock)))
   ch = 'm';
  else
   ch = 'u';
  break;
 default:
  ch = '-';
  break;
 }
 return ch;
}
