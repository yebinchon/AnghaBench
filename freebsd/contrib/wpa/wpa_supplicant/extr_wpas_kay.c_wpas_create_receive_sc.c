
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct receive_sc {int dummy; } ;
typedef enum validate_frames { ____Placeholder_validate_frames } validate_frames ;
typedef enum confidentiality_offset { ____Placeholder_confidentiality_offset } confidentiality_offset ;


 int conf_offset_val (int) ;
 int wpa_drv_create_receive_sc (void*,struct receive_sc*,int ,int) ;

__attribute__((used)) static int wpas_create_receive_sc(void *wpa_s, struct receive_sc *sc,
      enum validate_frames vf,
      enum confidentiality_offset co)
{
 return wpa_drv_create_receive_sc(wpa_s, sc, conf_offset_val(co), vf);
}
