
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int * ich_func; } ;
struct TYPE_3__ {int (* softc_cleanup ) (struct enc_softc*) ;} ;
struct enc_softc {TYPE_2__ enc_boot_hold_ch; TYPE_1__ enc_vec; } ;
struct cam_periph {struct enc_softc* softc; } ;


 int ENC_FREE (struct enc_softc*) ;
 int config_intrhook_disestablish (TYPE_2__*) ;
 int stub1 (struct enc_softc*) ;

__attribute__((used)) static void
enc_dtor(struct cam_periph *periph)
{
 struct enc_softc *enc;

 enc = periph->softc;


 if (enc->enc_vec.softc_cleanup != ((void*)0))
  enc->enc_vec.softc_cleanup(enc);

 if (enc->enc_boot_hold_ch.ich_func != ((void*)0)) {
  config_intrhook_disestablish(&enc->enc_boot_hold_ch);
  enc->enc_boot_hold_ch.ich_func = ((void*)0);
 }

 ENC_FREE(enc);
}
