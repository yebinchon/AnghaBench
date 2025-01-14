
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int ses_flags; } ;
typedef TYPE_1__ ses_softc_t ;
struct TYPE_6__ {TYPE_1__* enc_private; } ;
typedef TYPE_2__ enc_softc_t ;


 int SES_FLAG_ADDLSTATUS ;
 int SES_FLAG_DESC ;
 int SES_UPDATE_GETELMADDLSTATUS ;
 int SES_UPDATE_GETELMDESCS ;
 int SES_UPDATE_GETSTATUS ;
 int enc_update_request (TYPE_2__*,int ) ;

__attribute__((used)) static void
ses_poll_status(enc_softc_t *enc)
{
 ses_softc_t *ses;

 ses = enc->enc_private;
 enc_update_request(enc, SES_UPDATE_GETSTATUS);
 if (ses->ses_flags & SES_FLAG_DESC)
  enc_update_request(enc, SES_UPDATE_GETELMDESCS);
 if (ses->ses_flags & SES_FLAG_ADDLSTATUS)
  enc_update_request(enc, SES_UPDATE_GETELMADDLSTATUS);
}
