#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_8__ ;
typedef  struct TYPE_15__   TYPE_7__ ;
typedef  struct TYPE_14__   TYPE_6__ ;
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  union uni_ieall {int dummy; } uni_ieall ;
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

/* Variables and functions */
 int /*<<< orphan*/  UNI_IE_CONNID ; 
 int /*<<< orphan*/  UNI_IE_EPREF ; 
 int /*<<< orphan*/  UNI_IE_NOTIFY ; 
 int UNI_IE_PRESENT ; 
 int /*<<< orphan*/  UNI_IE_UNREC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,union uni_ieall*,struct unicx*) ; 

__attribute__((used)) static void
FUNC1(struct uni_call_proc *msg, struct unicx *cx)
{
	if(msg->connid.h.present & UNI_IE_PRESENT)
		FUNC0(UNI_IE_CONNID, (union uni_ieall *)&msg->connid, cx);
	if(msg->epref.h.present & UNI_IE_PRESENT)
		FUNC0(UNI_IE_EPREF, (union uni_ieall *)&msg->epref, cx);
	if(msg->notify.h.present & UNI_IE_PRESENT)
		FUNC0(UNI_IE_NOTIFY, (union uni_ieall *)&msg->notify, cx);
	if(msg->unrec.h.present & UNI_IE_PRESENT)
		FUNC0(UNI_IE_UNREC, (union uni_ieall *)&msg->unrec, cx);
}