
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pnp_isaConfiguration {int ic_revision; int ic_rdport; int ic_nCSN; } ;
struct pnp_ICstructure {int dummy; } ;




 char* PTOV (int) ;
 int bcmp (char*,char*,int) ;
 int biospnp_f00 (int ,int ) ;
 int biospnp_f40 (int ) ;
 int isapnp_readport ;
 struct pnp_ICstructure* pnp_Icheck ;
 struct pnp_isaConfiguration pnp_NodeSize ;
 struct pnp_isaConfiguration pnp_NumNodes ;
 int printf (char*) ;
 int vsegofs (struct pnp_isaConfiguration*) ;

__attribute__((used)) static int
biospnp_init(void)
{
    struct pnp_isaConfiguration icfg;
    char *sigptr;
    int result;


    pnp_Icheck = ((void*)0);
    for (sigptr = PTOV(0xf0000); sigptr < PTOV(0xfffff); sigptr += 16)
 if (!bcmp(sigptr, "$PnP", 4)) {
     pnp_Icheck = (struct pnp_ICstructure *)sigptr;
     break;
 }


    if (pnp_Icheck == ((void*)0))
 return(1);




    result = biospnp_f00(vsegofs(&pnp_NumNodes), vsegofs(&pnp_NodeSize));
    if (result != 128) {
 return(1);
    }




    result = biospnp_f40(vsegofs(&icfg));
    switch (result) {
    case 128:

 if ((icfg.ic_revision == 1) && (icfg.ic_nCSN > 0))
     isapnp_readport = icfg.ic_rdport;
 break;
    case 129:

 printf("PnP BIOS claims no ISA bus\n");
 isapnp_readport = -1;
 break;
    }
    return(0);
}
