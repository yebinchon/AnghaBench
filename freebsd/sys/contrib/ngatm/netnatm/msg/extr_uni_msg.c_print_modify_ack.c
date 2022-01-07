
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_9__ ;
typedef struct TYPE_19__ TYPE_8__ ;
typedef struct TYPE_18__ TYPE_7__ ;
typedef struct TYPE_17__ TYPE_6__ ;
typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;
typedef struct TYPE_11__ TYPE_10__ ;


typedef union uni_ieall {int dummy; } uni_ieall ;
typedef size_t u_int ;
struct unicx {int dummy; } ;
struct TYPE_20__ {int present; } ;
struct TYPE_11__ {TYPE_9__ h; } ;
struct TYPE_16__ {int present; } ;
struct TYPE_17__ {TYPE_5__ h; } ;
struct TYPE_14__ {int present; } ;
struct TYPE_15__ {TYPE_3__ h; } ;
struct TYPE_12__ {int present; } ;
struct TYPE_13__ {TYPE_1__ h; } ;
struct uni_modify_ack {TYPE_10__ unrec; TYPE_8__* git; TYPE_6__ notify; TYPE_4__ traffic; TYPE_2__ report; } ;
struct TYPE_18__ {int present; } ;
struct TYPE_19__ {TYPE_7__ h; } ;


 int UNI_IE_GIT ;
 int UNI_IE_NOTIFY ;
 int UNI_IE_PRESENT ;
 int UNI_IE_REPORT ;
 int UNI_IE_TRAFFIC ;
 int UNI_IE_UNREC ;
 size_t UNI_NUM_IE_GIT ;
 int uni_print_ie_internal (int ,union uni_ieall*,struct unicx*) ;

__attribute__((used)) static void
print_modify_ack(struct uni_modify_ack *msg, struct unicx *cx)
{
 u_int i;

 if(msg->report.h.present & UNI_IE_PRESENT)
  uni_print_ie_internal(UNI_IE_REPORT, (union uni_ieall *)&msg->report, cx);
 if(msg->traffic.h.present & UNI_IE_PRESENT)
  uni_print_ie_internal(UNI_IE_TRAFFIC, (union uni_ieall *)&msg->traffic, cx);
 if(msg->notify.h.present & UNI_IE_PRESENT)
  uni_print_ie_internal(UNI_IE_NOTIFY, (union uni_ieall *)&msg->notify, cx);
 for(i = 0; i < UNI_NUM_IE_GIT; i++)
  if(msg->git[i].h.present & UNI_IE_PRESENT)
   uni_print_ie_internal(UNI_IE_GIT, (union uni_ieall *)&msg->git[i], cx);
 if(msg->unrec.h.present & UNI_IE_PRESENT)
  uni_print_ie_internal(UNI_IE_UNREC, (union uni_ieall *)&msg->unrec, cx);
}
