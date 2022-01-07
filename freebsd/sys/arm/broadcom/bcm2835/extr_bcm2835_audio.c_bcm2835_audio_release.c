
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bcm2835_audio_info {scalar_t__ vchi_handle; int vchi_instance; } ;


 scalar_t__ VCHIQ_SERVICE_HANDLE_INVALID ;
 int printf (char*,int) ;
 int vchi_disconnect (int ) ;
 int vchi_service_close (scalar_t__) ;
 int vchi_service_release (scalar_t__) ;

__attribute__((used)) static void
bcm2835_audio_release(struct bcm2835_audio_info *sc)
{
 int success;

 if (sc->vchi_handle != VCHIQ_SERVICE_HANDLE_INVALID) {
  success = vchi_service_close(sc->vchi_handle);
  if (success != 0)
   printf("vchi_service_close failed: %d\n", success);
  vchi_service_release(sc->vchi_handle);
  sc->vchi_handle = VCHIQ_SERVICE_HANDLE_INVALID;
 }

 vchi_disconnect(sc->vchi_instance);
}
