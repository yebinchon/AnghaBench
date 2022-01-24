#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct eap_ttls_data {int phase2_type; TYPE_1__* phase2_method; int /*<<< orphan*/  ttls_version; int /*<<< orphan*/  ssl; } ;
struct eap_sm {int dummy; } ;
struct TYPE_2__ {char* name; } ;

/* Variables and functions */
#define  EAP_TTLS_PHASE2_CHAP 132 
#define  EAP_TTLS_PHASE2_EAP 131 
#define  EAP_TTLS_PHASE2_MSCHAP 130 
#define  EAP_TTLS_PHASE2_MSCHAPV2 129 
#define  EAP_TTLS_PHASE2_PAP 128 
 int FUNC0 (struct eap_sm*,int /*<<< orphan*/ *,char*,size_t,int) ; 
 int FUNC1 (char*,size_t,char*,...) ; 
 scalar_t__ FUNC2 (size_t,int) ; 

__attribute__((used)) static int FUNC3(struct eap_sm *sm, void *priv, char *buf,
			       size_t buflen, int verbose)
{
	struct eap_ttls_data *data = priv;
	int len, ret;

	len = FUNC0(sm, &data->ssl, buf, buflen, verbose);
	ret = FUNC1(buf + len, buflen - len,
			  "EAP-TTLSv%d Phase2 method=",
			  data->ttls_version);
	if (FUNC2(buflen - len, ret))
		return len;
	len += ret;
	switch (data->phase2_type) {
	case EAP_TTLS_PHASE2_EAP:
		ret = FUNC1(buf + len, buflen - len, "EAP-%s\n",
				  data->phase2_method ?
				  data->phase2_method->name : "?");
		break;
	case EAP_TTLS_PHASE2_MSCHAPV2:
		ret = FUNC1(buf + len, buflen - len, "MSCHAPV2\n");
		break;
	case EAP_TTLS_PHASE2_MSCHAP:
		ret = FUNC1(buf + len, buflen - len, "MSCHAP\n");
		break;
	case EAP_TTLS_PHASE2_PAP:
		ret = FUNC1(buf + len, buflen - len, "PAP\n");
		break;
	case EAP_TTLS_PHASE2_CHAP:
		ret = FUNC1(buf + len, buflen - len, "CHAP\n");
		break;
	default:
		ret = 0;
		break;
	}
	if (FUNC2(buflen - len, ret))
		return len;
	len += ret;

	return len;
}