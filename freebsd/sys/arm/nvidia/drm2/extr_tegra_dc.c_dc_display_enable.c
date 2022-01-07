
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct dc_softc {int dummy; } ;
typedef int device_t ;


 int CTRL_MODE_C_DISPLAY ;
 int CTRL_MODE_STOP ;
 int DC_CMD_DISPLAY_COMMAND ;
 int DC_CMD_STATE_CONTROL ;
 int DISPLAY_CTRL_MODE (int ) ;
 int GENERAL_ACT_REQ ;
 int GENERAL_UPDATE ;
 int WR4 (struct dc_softc*,int ,int ) ;
 struct dc_softc* device_get_softc (int ) ;

__attribute__((used)) static void
dc_display_enable(device_t dev, bool enable)
{
 struct dc_softc *sc;
 uint32_t val;

 sc = device_get_softc(dev);


 val = enable ? CTRL_MODE_C_DISPLAY: CTRL_MODE_STOP;
 WR4(sc, DC_CMD_DISPLAY_COMMAND, DISPLAY_CTRL_MODE(val));


 WR4(sc, DC_CMD_STATE_CONTROL, GENERAL_UPDATE);
 WR4(sc, DC_CMD_STATE_CONTROL, GENERAL_ACT_REQ);
}
