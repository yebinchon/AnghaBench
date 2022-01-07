
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct bcm2835_audio_info {int vchi_handle; int vchi_instance; int vchi_connection; } ;
struct TYPE_3__ {int member_7; int member_8; int member_9; struct bcm2835_audio_info* member_6; int member_5; int member_4; int member_3; int member_2; int member_1; int member_0; } ;
typedef TYPE_1__ SERVICE_CREATION_T ;


 int VCHIQ_SERVICE_HANDLE_INVALID ;
 int VCHI_VERSION_EX (int ,int ) ;
 int VC_AUDIOSERV_MIN_VER ;
 int VC_AUDIOSERV_VER ;
 int VC_AUDIO_SERVER_NAME ;
 int bcm2835_audio_callback ;
 int printf (char*,int) ;
 int vchi_connect (int *,int ,int ) ;
 int vchi_initialise (int *) ;
 int vchi_service_open (int ,TYPE_1__*,int *) ;

__attribute__((used)) static void
bcm2835_audio_init(struct bcm2835_audio_info *sc)
{
 int status;


 status = vchi_initialise(&sc->vchi_instance);
 if (status != 0) {
  printf("vchi_initialise failed: %d\n", status);
  return;
 }

 status = vchi_connect(((void*)0), 0, sc->vchi_instance);
 if (status != 0) {
  printf("vchi_connect failed: %d\n", status);
  return;
 }

 SERVICE_CREATION_T params = {
     VCHI_VERSION_EX(VC_AUDIOSERV_VER, VC_AUDIOSERV_MIN_VER),
     VC_AUDIO_SERVER_NAME,
     sc->vchi_connection,
     0,
     0,
     bcm2835_audio_callback,
     sc,
     1,
     1,
     0
 };

 status = vchi_service_open(sc->vchi_instance, &params,
     &sc->vchi_handle);

 if (status != 0)
  sc->vchi_handle = VCHIQ_SERVICE_HANDLE_INVALID;
}
