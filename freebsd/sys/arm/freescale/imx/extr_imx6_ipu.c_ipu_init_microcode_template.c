
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct ipu_softc {int dummy; } ;


 int DC_TEMPL_BASE ;
 int GLUELOGIC_KEEP_ASSERTED ;
 int GLUELOGIC_KEEP_NEGATED ;
 int IPU_WRITE4 (struct ipu_softc*,int,int) ;
 int OPCODE_WROD ;
 int TEMPLATE_GLUELOGIC (int) ;
 int TEMPLATE_MAPPING (int) ;
 int TEMPLATE_OPCODE (int ) ;
 int TEMPLATE_STOP ;
 int TEMPLATE_SYNC (int) ;
 int TEMPLATE_WAVEFORM (int) ;

__attribute__((used)) static void
ipu_init_microcode_template(struct ipu_softc *sc, int di, int map)
{
 uint32_t addr;
 uint32_t w1, w2;
 int i, word;
 int glue;

 word = di ? 2 : 5;

 for (i = 0; i < 3; i++) {
  if (i == 0)
   glue = GLUELOGIC_KEEP_ASSERTED;
  else if (i == 1)
   glue = GLUELOGIC_KEEP_NEGATED;
  else if (i == 2)
   glue = 0;

  w1 = TEMPLATE_SYNC(5) |
      TEMPLATE_GLUELOGIC(glue) |
      TEMPLATE_WAVEFORM(1) |
      TEMPLATE_MAPPING(map + 1);



  w2 = TEMPLATE_OPCODE(OPCODE_WROD) |
      TEMPLATE_STOP;

  addr = DC_TEMPL_BASE + (word + i) * 2 * sizeof(uint32_t);
  IPU_WRITE4(sc, addr, w1);
  IPU_WRITE4(sc, addr + sizeof(uint32_t), w2);
 }
}
