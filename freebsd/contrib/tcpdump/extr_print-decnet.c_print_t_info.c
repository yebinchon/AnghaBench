
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int netdissect_options ;


 int ND_PRINT (int *) ;
 int TI_BLOCK ;



 int TI_VERIF ;

__attribute__((used)) static void
print_t_info(netdissect_options *ndo,
             int info)
{
 int ntype = info & 3;
 switch (ntype) {
 case 0: ND_PRINT((ndo, "reserved-ntype? ")); break;
 case 128: ND_PRINT((ndo, "l2rout ")); break;
 case 129: ND_PRINT((ndo, "l1rout ")); break;
 case 130: ND_PRINT((ndo, "endnode ")); break;
 }
 if (info & TI_VERIF)
     ND_PRINT((ndo, "verif "));
 if (info & TI_BLOCK)
     ND_PRINT((ndo, "blo "));
}
