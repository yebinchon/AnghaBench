
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ldt ;
typedef int fixedPoint_24_8 ;
typedef unsigned int U32 ;
typedef int BYTE ;


 int LTSIZE ;
 int RDG_fillLiteralDistrib (int *,int ) ;
 int RDG_genBlock (void*,size_t,int ,double,int *,unsigned int*) ;
 int memset (int *,int ,int) ;

void RDG_genBuffer(void* buffer, size_t size, double matchProba, double litProba, unsigned seed)
{
    U32 seed32 = seed;
    BYTE ldt[LTSIZE];
    memset(ldt, '0', sizeof(ldt));
    if (litProba<=0.0) litProba = matchProba / 4.5;
    RDG_fillLiteralDistrib(ldt, (fixedPoint_24_8)(litProba * 256 + 0.001));
    RDG_genBlock(buffer, size, 0, matchProba, ldt, &seed32);
}
