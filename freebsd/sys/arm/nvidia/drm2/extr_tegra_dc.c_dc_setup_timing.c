
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dc_softc {int dummy; } ;
typedef int device_t ;


 int BASE_COLOR_SIZE (int ) ;
 int DC_DISP_DISP_COLOR_CONTROL ;
 int DC_DISP_DISP_SIGNAL_OPTIONS0 ;
 int DC_DISP_DISP_TIMING_OPTIONS ;
 int DC_DISP_H_PULSE2_CONTROL ;
 int DC_DISP_H_PULSE2_POSITION_A ;
 int DITHER_CONTROL (int ) ;
 int DITHER_DISABLE ;
 int H_PULSE2_ENABLE ;
 int LAST_END_A ;
 int PULSE_CONTROL_LAST (int ) ;
 int PULSE_CONTROL_QUAL (int ) ;
 int PULSE_END (int) ;
 int PULSE_START (int) ;
 int QUAL_VACTIVE ;
 int SIZE_BASE888 ;
 int VSYNC_H_POSITION (int) ;
 int WR4 (struct dc_softc*,int ,int) ;
 struct dc_softc* device_get_softc (int ) ;

__attribute__((used)) static void
dc_setup_timing(device_t dev, int h_pulse_start)
{
 struct dc_softc *sc;

 sc = device_get_softc(dev);


 WR4(sc, DC_DISP_DISP_TIMING_OPTIONS, VSYNC_H_POSITION(1));
 WR4(sc, DC_DISP_DISP_COLOR_CONTROL,
     DITHER_CONTROL(DITHER_DISABLE) | BASE_COLOR_SIZE(SIZE_BASE888));

 WR4(sc, DC_DISP_DISP_SIGNAL_OPTIONS0, H_PULSE2_ENABLE);
 WR4(sc, DC_DISP_H_PULSE2_CONTROL,
     PULSE_CONTROL_QUAL(QUAL_VACTIVE) | PULSE_CONTROL_LAST(LAST_END_A));

 WR4(sc, DC_DISP_H_PULSE2_POSITION_A,
     PULSE_START(h_pulse_start) | PULSE_END(h_pulse_start + 8));
}
