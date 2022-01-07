
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_int ;
typedef int netdissect_options ;


 int ND_TTEST2 (char const,scalar_t__) ;
 scalar_t__ strncmp (char const*,char const*,scalar_t__) ;

__attribute__((used)) static int
l_strnstart(netdissect_options *ndo, const char *tstr1, u_int tl1,
    const char *str2, u_int l2)
{
 if (!ND_TTEST2(*str2, tl1)) {





  return 0;
 }
 if (tl1 > l2)
  return 0;

 return (strncmp(tstr1, str2, tl1) == 0 ? 1 : 0);
}
