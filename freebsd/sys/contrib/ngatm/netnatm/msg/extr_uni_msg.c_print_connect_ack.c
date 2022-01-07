
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef union uni_ieall {int dummy; } uni_ieall ;
struct unicx {int dummy; } ;
struct TYPE_7__ {int present; } ;
struct TYPE_8__ {TYPE_3__ h; } ;
struct TYPE_5__ {int present; } ;
struct TYPE_6__ {TYPE_1__ h; } ;
struct uni_connect_ack {TYPE_4__ unrec; TYPE_2__ notify; } ;


 int UNI_IE_NOTIFY ;
 int UNI_IE_PRESENT ;
 int UNI_IE_UNREC ;
 int uni_print_ie_internal (int ,union uni_ieall*,struct unicx*) ;

__attribute__((used)) static void
print_connect_ack(struct uni_connect_ack *msg, struct unicx *cx)
{
 if(msg->notify.h.present & UNI_IE_PRESENT)
  uni_print_ie_internal(UNI_IE_NOTIFY, (union uni_ieall *)&msg->notify, cx);
 if(msg->unrec.h.present & UNI_IE_PRESENT)
  uni_print_ie_internal(UNI_IE_UNREC, (union uni_ieall *)&msg->unrec, cx);
}
