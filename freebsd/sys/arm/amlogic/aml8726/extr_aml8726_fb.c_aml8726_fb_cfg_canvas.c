
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_2__ {scalar_t__ fb_height; scalar_t__ fb_pbase; scalar_t__ fb_stride; } ;
struct aml8726_fb_softc {TYPE_1__ info; } ;


 int AML_CAV_LUT_ADDR_INDEX_SHIFT ;
 int AML_CAV_LUT_ADDR_REG ;
 int AML_CAV_LUT_ADDR_WR_EN ;
 int AML_CAV_LUT_DATAH_BLKMODE_LINEAR ;
 int AML_CAV_LUT_DATAH_HEIGHT_MASK ;
 int AML_CAV_LUT_DATAH_HEIGHT_SHIFT ;
 int AML_CAV_LUT_DATAH_REG ;
 int AML_CAV_LUT_DATAH_WIDTH_MASK ;
 int AML_CAV_LUT_DATAH_WIDTH_SHIFT ;
 int AML_CAV_LUT_DATAL_REG ;
 int AML_CAV_LUT_DATAL_WIDTH_MASK ;
 int AML_CAV_LUT_DATAL_WIDTH_SHIFT ;
 int AML_CAV_LUT_DATAL_WIDTH_WIDTH ;
 int AML_CAV_OSD1_INDEX ;
 int CAV_BARRIER (struct aml8726_fb_softc*,int ) ;
 int CAV_WRITE_4 (struct aml8726_fb_softc*,int ,int) ;

__attribute__((used)) static void
aml8726_fb_cfg_canvas(struct aml8726_fb_softc *sc)
{
 uint32_t value;
 uint32_t width;







 width = (uint32_t)sc->info.fb_stride / 8;


 value = (width << AML_CAV_LUT_DATAL_WIDTH_SHIFT) &
     AML_CAV_LUT_DATAL_WIDTH_MASK;


 value |= (uint32_t)sc->info.fb_pbase / 8;

 CAV_WRITE_4(sc, AML_CAV_LUT_DATAL_REG, value);


 value = ((width >> AML_CAV_LUT_DATAL_WIDTH_WIDTH) <<
     AML_CAV_LUT_DATAH_WIDTH_SHIFT) & AML_CAV_LUT_DATAH_WIDTH_MASK;


 value |= ((uint32_t)sc->info.fb_height <<
     AML_CAV_LUT_DATAH_HEIGHT_SHIFT) & AML_CAV_LUT_DATAH_HEIGHT_MASK;


 value |= AML_CAV_LUT_DATAH_BLKMODE_LINEAR;

 CAV_WRITE_4(sc, AML_CAV_LUT_DATAH_REG, value);

 CAV_WRITE_4(sc, AML_CAV_LUT_ADDR_REG, (AML_CAV_LUT_ADDR_WR_EN |
     (AML_CAV_OSD1_INDEX << AML_CAV_LUT_ADDR_INDEX_SHIFT)));

 CAV_BARRIER(sc, AML_CAV_LUT_ADDR_REG);
}
