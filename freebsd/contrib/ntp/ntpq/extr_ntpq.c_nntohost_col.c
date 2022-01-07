
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sockaddr_u ;


 scalar_t__ ISREFCLOCKADR (int *) ;
 scalar_t__ SOCK_UNSPEC (int *) ;
 char* refnumtoa (int *) ;
 int showhostnames ;
 int socktohost (int *) ;
 int stoa (int *) ;
 char* trunc_left (int ,size_t) ;
 char* trunc_right (int ,size_t) ;

const char *
nntohost_col(
 sockaddr_u * addr,
 size_t width,
 int preserve_lowaddrbits
 )
{
 const char * out;

 if (!showhostnames || SOCK_UNSPEC(addr)) {
  if (preserve_lowaddrbits)
   out = trunc_left(stoa(addr), width);
  else
   out = trunc_right(stoa(addr), width);
 } else if (ISREFCLOCKADR(addr)) {
  out = refnumtoa(addr);
 } else {
  out = trunc_right(socktohost(addr), width);
 }
 return out;
}
