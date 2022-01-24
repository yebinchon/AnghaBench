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
typedef  int /*<<< orphan*/  va_list ;
struct pam_response {char* resp; } ;
struct pam_message {int msg_style; char* msg; } ;
struct pam_conv {int (* conv ) (int,struct pam_message const**,struct pam_response**,int /*<<< orphan*/ ) ;int /*<<< orphan*/  appdata_ptr; } ;
typedef  int /*<<< orphan*/  pam_handle_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (struct pam_response*) ; 
 int /*<<< orphan*/  PAM_CONV ; 
 int /*<<< orphan*/  PAM_LOG_ERROR ; 
 int PAM_MAX_MSG_SIZE ; 
 int PAM_SUCCESS ; 
 int PAM_SYSTEM_ERR ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int FUNC4 (int /*<<< orphan*/  const*,int /*<<< orphan*/ ,void const**) ; 
 int FUNC5 (int,struct pam_message const**,struct pam_response**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,int,char const*,int /*<<< orphan*/ ) ; 

int
FUNC7(const pam_handle_t *pamh,
	int style,
	char **resp,
	const char *fmt,
	va_list ap)
{
	char msgbuf[PAM_MAX_MSG_SIZE];
	struct pam_message msg;
	const struct pam_message *msgp;
	struct pam_response *rsp;
	const struct pam_conv *conv;
	const void *convp;
	int r;

	FUNC0();
	r = FUNC4(pamh, PAM_CONV, &convp);
	if (r != PAM_SUCCESS)
		FUNC2(r);
	conv = convp;
	if (conv == NULL || conv->conv == NULL) {
		FUNC3(PAM_LOG_ERROR, "no conversation function");
		FUNC2(PAM_SYSTEM_ERR);
	}
	FUNC6(msgbuf, PAM_MAX_MSG_SIZE, fmt, ap);
	msg.msg_style = style;
	msg.msg = msgbuf;
	msgp = &msg;
	rsp = NULL;
	r = (conv->conv)(1, &msgp, &rsp, conv->appdata_ptr);
	*resp = rsp == NULL ? NULL : rsp->resp;
	FUNC1(rsp);
	FUNC2(r);
}