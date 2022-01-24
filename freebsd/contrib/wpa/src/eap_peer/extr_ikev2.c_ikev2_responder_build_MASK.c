#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct wpabuf {int dummy; } ;
struct ikev2_responder_data {int state; } ;

/* Variables and functions */
#define  CHILD_SA 133 
#define  IKEV2_DONE 132 
#define  IKEV2_FAILED 131 
#define  NOTIFY 130 
#define  SA_AUTH 129 
#define  SA_INIT 128 
 struct wpabuf* FUNC0 (struct ikev2_responder_data*) ; 
 struct wpabuf* FUNC1 (struct ikev2_responder_data*) ; 
 struct wpabuf* FUNC2 (struct ikev2_responder_data*) ; 

struct wpabuf * FUNC3(struct ikev2_responder_data *data)
{
	switch (data->state) {
	case SA_INIT:
		return FUNC2(data);
	case SA_AUTH:
		return FUNC1(data);
	case CHILD_SA:
		return NULL;
	case NOTIFY:
		return FUNC0(data);
	case IKEV2_DONE:
	case IKEV2_FAILED:
		return NULL;
	}
	return NULL;
}