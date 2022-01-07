
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;


 scalar_t__ ND_ISPRINT (unsigned char const) ;

__attribute__((used)) static int
is_UCX(const unsigned char *fhp, u_int len)
{
 register u_int i;
 int seen_null = 0;





 if (len < 28/4)
  return(0);

 for (i = 1; i < 14; i++) {
     if (ND_ISPRINT(fhp[i])) {
  if (seen_null)
     return(0);
  else
     continue;
     }
     else if (fhp[i] == 0) {
  seen_null = 1;
  continue;
     }
     else
  return(0);
 }

 return(1);
}
