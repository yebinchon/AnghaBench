
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int enc_softc_t ;


 int SAFTE_UPDATE_READENCSTATUS ;
 int SAFTE_UPDATE_READSLOTSTATUS ;
 int enc_update_request (int *,int ) ;

__attribute__((used)) static void
safte_poll_status(enc_softc_t *enc)
{

 enc_update_request(enc, SAFTE_UPDATE_READENCSTATUS);
 enc_update_request(enc, SAFTE_UPDATE_READSLOTSTATUS);
}
