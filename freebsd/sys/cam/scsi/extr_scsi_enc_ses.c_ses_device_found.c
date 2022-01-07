
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int enc_softc_t ;


 int SES_PUBLISH_PHYSPATHS ;
 int enc_update_request (int *,int ) ;
 int ses_poll_status (int *) ;

__attribute__((used)) static void
ses_device_found(enc_softc_t *enc)
{
 ses_poll_status(enc);
 enc_update_request(enc, SES_PUBLISH_PHYSPATHS);
}
