
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fv_softc {int dummy; } ;


 int CSR_MIIMNG ;
 int CSR_READ_4 (struct fv_softc*,int ) ;
 int CSR_WRITE_4 (struct fv_softc*,int ,int) ;
 int DELAY (int) ;
 int MII_CLK ;
 int MII_DIN ;
 int MII_RD ;

__attribute__((used)) static int
fv_miibus_readbits(struct fv_softc *sc, int count)
{
 int result;

 result = 0;
 while(count--) {
  result <<= 1;
  CSR_WRITE_4(sc, CSR_MIIMNG, MII_RD);
  DELAY(10);
  CSR_WRITE_4(sc, CSR_MIIMNG, MII_RD | MII_CLK);
  DELAY(10);
  if (CSR_READ_4(sc, CSR_MIIMNG) & MII_DIN)
   result |= 1;
 }

 return (result);
}
