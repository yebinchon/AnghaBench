
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ieee802_1x_mka_sak_use_body {int dummy; } ;
struct ieee802_1x_mka_participant {scalar_t__ advised_desired; TYPE_1__* kay; } ;
struct TYPE_2__ {scalar_t__ macsec_desired; } ;


 int MKA_ALIGN_LENGTH (int) ;
 int MKA_HDR_LEN ;

__attribute__((used)) static int
ieee802_1x_mka_get_sak_use_length(
 struct ieee802_1x_mka_participant *participant)
{
 int length = MKA_HDR_LEN;

 if (participant->kay->macsec_desired && participant->advised_desired)
  length = sizeof(struct ieee802_1x_mka_sak_use_body);

 return MKA_ALIGN_LENGTH(length);
}
