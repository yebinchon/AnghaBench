
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct s_fixedpt {int fraction; int int_part; } ;
typedef int netdissect_options ;


 int EXTRACT_16BITS (int *) ;
 int ND_PRINT (int *) ;

__attribute__((used)) static void
p_sfix(netdissect_options *ndo,
       register const struct s_fixedpt *sfp)
{
 register int i;
 register int f;
 register double ff;

 i = EXTRACT_16BITS(&sfp->int_part);
 f = EXTRACT_16BITS(&sfp->fraction);
 ff = f / 65536.0;
 f = (int)(ff * 1000000.0);
 ND_PRINT((ndo, "%d.%06d", i, f));
}
