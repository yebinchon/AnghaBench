
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_int8_t ;


 scalar_t__ IP6OPT_PAD1 ;

__attribute__((used)) static int
ip6optlen(u_int8_t *opt, u_int8_t *lim)
{
 int optlen;

 if (*opt == IP6OPT_PAD1)
  optlen = 1;
 else {

  if (opt + 2 > lim)
   return(0);
  optlen = *(opt + 1) + 2;
 }
 if (opt + optlen <= lim)
  return(optlen);

 return(0);
}
