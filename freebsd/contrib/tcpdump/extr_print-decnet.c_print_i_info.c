
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int netdissect_options ;


 int II_BLOCK ;



 int II_NOMCAST ;
 int II_TYPEMASK ;
 int II_VERIF ;
 int ND_PRINT (int *) ;

__attribute__((used)) static void
print_i_info(netdissect_options *ndo,
             int info)
{
 int ntype = info & II_TYPEMASK;
 switch (ntype) {
 case 0: ND_PRINT((ndo, "reserved-ntype? ")); break;
 case 128: ND_PRINT((ndo, "l2rout ")); break;
 case 129: ND_PRINT((ndo, "l1rout ")); break;
 case 130: ND_PRINT((ndo, "endnode ")); break;
 }
 if (info & II_VERIF)
     ND_PRINT((ndo, "verif "));
 if (info & II_NOMCAST)
     ND_PRINT((ndo, "nomcast "));
 if (info & II_BLOCK)
     ND_PRINT((ndo, "blo "));
}
