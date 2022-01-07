
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_8__ ;
typedef struct TYPE_15__ TYPE_7__ ;
typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef union uni_ieall {int dummy; } uni_ieall ;
struct unicx {int dummy; } ;
struct TYPE_13__ {int present; } ;
struct TYPE_14__ {TYPE_5__ h; } ;
struct TYPE_11__ {int present; } ;
struct TYPE_12__ {TYPE_3__ h; } ;
struct TYPE_9__ {int present; } ;
struct TYPE_10__ {TYPE_1__ h; } ;
struct TYPE_15__ {int present; } ;
struct TYPE_16__ {TYPE_7__ h; } ;
struct uni_call_proc {TYPE_6__ unrec; TYPE_4__ notify; TYPE_2__ epref; TYPE_8__ connid; } ;


 int UNI_IE_CONNID ;
 int UNI_IE_EPREF ;
 int UNI_IE_NOTIFY ;
 int UNI_IE_PRESENT ;
 int UNI_IE_UNREC ;
 int uni_print_ie_internal (int ,union uni_ieall*,struct unicx*) ;

__attribute__((used)) static void
print_call_proc(struct uni_call_proc *msg, struct unicx *cx)
{
 if(msg->connid.h.present & UNI_IE_PRESENT)
  uni_print_ie_internal(UNI_IE_CONNID, (union uni_ieall *)&msg->connid, cx);
 if(msg->epref.h.present & UNI_IE_PRESENT)
  uni_print_ie_internal(UNI_IE_EPREF, (union uni_ieall *)&msg->epref, cx);
 if(msg->notify.h.present & UNI_IE_PRESENT)
  uni_print_ie_internal(UNI_IE_NOTIFY, (union uni_ieall *)&msg->notify, cx);
 if(msg->unrec.h.present & UNI_IE_PRESENT)
  uni_print_ie_internal(UNI_IE_UNREC, (union uni_ieall *)&msg->unrec, cx);
}
