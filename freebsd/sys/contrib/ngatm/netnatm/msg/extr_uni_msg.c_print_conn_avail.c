
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
typedef size_t u_int ;
struct unicx {int dummy; } ;
struct TYPE_15__ {int present; } ;
struct TYPE_16__ {TYPE_7__ h; } ;
struct TYPE_13__ {int present; } ;
struct TYPE_14__ {TYPE_5__ h; } ;
struct TYPE_9__ {int present; } ;
struct TYPE_10__ {TYPE_1__ h; } ;
struct uni_conn_avail {TYPE_8__ unrec; TYPE_6__ report; TYPE_4__* git; TYPE_2__ notify; } ;
struct TYPE_11__ {int present; } ;
struct TYPE_12__ {TYPE_3__ h; } ;


 int UNI_IE_GIT ;
 int UNI_IE_NOTIFY ;
 int UNI_IE_PRESENT ;
 int UNI_IE_REPORT ;
 int UNI_IE_UNREC ;
 size_t UNI_NUM_IE_GIT ;
 int uni_print_ie_internal (int ,union uni_ieall*,struct unicx*) ;

__attribute__((used)) static void
print_conn_avail(struct uni_conn_avail *msg, struct unicx *cx)
{
 u_int i;

 if(msg->notify.h.present & UNI_IE_PRESENT)
  uni_print_ie_internal(UNI_IE_NOTIFY, (union uni_ieall *)&msg->notify, cx);
 for(i = 0; i < UNI_NUM_IE_GIT; i++)
  if(msg->git[i].h.present & UNI_IE_PRESENT)
   uni_print_ie_internal(UNI_IE_GIT, (union uni_ieall *)&msg->git[i], cx);
 if(msg->report.h.present & UNI_IE_PRESENT)
  uni_print_ie_internal(UNI_IE_REPORT, (union uni_ieall *)&msg->report, cx);
 if(msg->unrec.h.present & UNI_IE_PRESENT)
  uni_print_ie_internal(UNI_IE_UNREC, (union uni_ieall *)&msg->unrec, cx);
}
