
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_24__ TYPE_9__ ;
typedef struct TYPE_23__ TYPE_8__ ;
typedef struct TYPE_22__ TYPE_7__ ;
typedef struct TYPE_21__ TYPE_6__ ;
typedef struct TYPE_20__ TYPE_5__ ;
typedef struct TYPE_19__ TYPE_4__ ;
typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;
typedef struct TYPE_15__ TYPE_12__ ;
typedef struct TYPE_14__ TYPE_11__ ;
typedef struct TYPE_13__ TYPE_10__ ;


typedef union uni_ieall {int dummy; } uni_ieall ;
typedef size_t u_int ;
struct unicx {int dummy; } ;
struct TYPE_14__ {int present; } ;
struct TYPE_15__ {TYPE_11__ h; } ;
struct TYPE_24__ {int present; } ;
struct TYPE_13__ {TYPE_9__ h; } ;
struct TYPE_20__ {int present; } ;
struct TYPE_21__ {TYPE_5__ h; } ;
struct TYPE_18__ {int present; } ;
struct TYPE_19__ {TYPE_3__ h; } ;
struct TYPE_16__ {int present; } ;
struct TYPE_17__ {TYPE_1__ h; } ;
struct uni_add_party_rej {TYPE_12__ unrec; TYPE_10__ crankback; TYPE_8__* git; TYPE_6__ uu; TYPE_4__ epref; TYPE_2__ cause; } ;
struct TYPE_22__ {int present; } ;
struct TYPE_23__ {TYPE_7__ h; } ;


 int UNI_IE_CAUSE ;
 int UNI_IE_CRANKBACK ;
 int UNI_IE_EPREF ;
 int UNI_IE_GIT ;
 int UNI_IE_PRESENT ;
 int UNI_IE_UNREC ;
 int UNI_IE_UU ;
 size_t UNI_NUM_IE_GIT ;
 int uni_print_ie_internal (int ,union uni_ieall*,struct unicx*) ;

__attribute__((used)) static void
print_add_party_rej(struct uni_add_party_rej *msg, struct unicx *cx)
{
 u_int i;

 if(msg->cause.h.present & UNI_IE_PRESENT)
  uni_print_ie_internal(UNI_IE_CAUSE, (union uni_ieall *)&msg->cause, cx);
 if(msg->epref.h.present & UNI_IE_PRESENT)
  uni_print_ie_internal(UNI_IE_EPREF, (union uni_ieall *)&msg->epref, cx);
 if(msg->uu.h.present & UNI_IE_PRESENT)
  uni_print_ie_internal(UNI_IE_UU, (union uni_ieall *)&msg->uu, cx);
 for(i = 0; i < UNI_NUM_IE_GIT; i++)
  if(msg->git[i].h.present & UNI_IE_PRESENT)
   uni_print_ie_internal(UNI_IE_GIT, (union uni_ieall *)&msg->git[i], cx);
 if(msg->crankback.h.present & UNI_IE_PRESENT)
  uni_print_ie_internal(UNI_IE_CRANKBACK, (union uni_ieall *)&msg->crankback, cx);
 if(msg->unrec.h.present & UNI_IE_PRESENT)
  uni_print_ie_internal(UNI_IE_UNREC, (union uni_ieall *)&msg->unrec, cx);
}
