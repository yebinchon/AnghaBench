
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ieee802_1x_mka_participant {TYPE_1__* kay; } ;
struct ieee802_1x_mka_icv_body {int dummy; } ;
struct TYPE_4__ {scalar_t__ icv_len; } ;
struct TYPE_3__ {size_t mka_algindex; } ;


 scalar_t__ DEFAULT_ICV_LEN ;
 int MKA_ALIGN_LENGTH (int) ;
 TYPE_2__* mka_alg_tbl ;

__attribute__((used)) static int
ieee802_1x_mka_get_icv_length(struct ieee802_1x_mka_participant *participant)
{
 int length;


 if (mka_alg_tbl[participant->kay->mka_algindex].icv_len !=
     DEFAULT_ICV_LEN)
  length = sizeof(struct ieee802_1x_mka_icv_body);
 else
  length = 0;
 length += mka_alg_tbl[participant->kay->mka_algindex].icv_len;

 return MKA_ALIGN_LENGTH(length);
}
