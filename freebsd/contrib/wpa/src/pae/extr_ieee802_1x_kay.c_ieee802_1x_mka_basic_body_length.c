
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ len; } ;
struct ieee802_1x_mka_participant {TYPE_1__ ckn; } ;
struct ieee802_1x_mka_basic_body {int dummy; } ;


 int MKA_ALIGN_LENGTH (int) ;

__attribute__((used)) static int
ieee802_1x_mka_basic_body_length(struct ieee802_1x_mka_participant *participant)
{
 int length;

 length = sizeof(struct ieee802_1x_mka_basic_body);
 length += participant->ckn.len;
 return MKA_ALIGN_LENGTH(length);
}
