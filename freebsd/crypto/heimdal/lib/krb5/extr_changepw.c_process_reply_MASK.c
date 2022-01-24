#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_3__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
typedef  size_t uint16_t ;
typedef  int u_char ;
typedef  int /*<<< orphan*/  rk_socket_t ;
typedef  int /*<<< orphan*/  reply ;
typedef  int krb5_error_code ;
struct TYPE_16__ {int* data; int length; } ;
typedef  TYPE_2__ krb5_data ;
typedef  int /*<<< orphan*/  krb5_context ;
typedef  int /*<<< orphan*/  krb5_auth_context ;
typedef  int /*<<< orphan*/  krb5_ap_rep_enc_part ;
typedef  int /*<<< orphan*/  error ;
struct TYPE_17__ {TYPE_1__* e_data; } ;
struct TYPE_15__ {int length; int* data; } ;
typedef  TYPE_3__ KRB_ERROR ;

/* Variables and functions */
 int ENOMEM ; 
 int KRB5_KPASSWD_MALFORMED ; 
 size_t KRB5_KPASSWD_VERS_CHANGEPW ; 
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int*,unsigned long*,int) ; 
 int FUNC2 (int*,size_t,TYPE_3__*,size_t*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,...) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__*,TYPE_2__*,int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int,char*,char const*,...) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC11 (int*,int*,unsigned long) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_3__*,int /*<<< orphan*/ ,int) ; 
 int FUNC13 (int /*<<< orphan*/ ,int*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC14 (int) ; 
 int rk_SOCK_ERRNO ; 
 int /*<<< orphan*/  FUNC15 (TYPE_2__*,char*,...) ; 
 int /*<<< orphan*/  FUNC16 (int) ; 

__attribute__((used)) static krb5_error_code
FUNC17 (krb5_context context,
	       krb5_auth_context auth_context,
	       int is_stream,
	       rk_socket_t sock,
	       int *result_code,
	       krb5_data *result_code_string,
	       krb5_data *result_string,
	       const char *host)
{
    krb5_error_code ret;
    u_char reply[1024 * 3];
    size_t len;
    uint16_t pkt_len, pkt_ver;
    krb5_data ap_rep_data;
    int save_errno;

    len = 0;
    if (is_stream) {
	while (len < sizeof(reply)) {
	    unsigned long size;

	    ret = FUNC13 (sock, reply + len, sizeof(reply) - len,
			    0, NULL, NULL);
	    if (FUNC14(ret)) {
		save_errno = rk_SOCK_ERRNO;
		FUNC9(context, save_errno,
				       "recvfrom %s: %s",
				       host, FUNC16(save_errno));
		return save_errno;
	    } else if (ret == 0) {
		FUNC9(context, 1,"recvfrom timeout %s", host);
		return 1;
	    }
	    len += ret;
	    if (len < 4)
		continue;
	    FUNC1(reply, &size, 4);
	    if (size + 4 < len)
		continue;
	    FUNC11(reply, reply + 4, size);
	    len = size;
	    break;
	}
	if (len == sizeof(reply)) {
	    FUNC9(context, ENOMEM,
				   FUNC0("Message too large from %s", "host"),
				   host);
	    return ENOMEM;
	}
    } else {
	ret = FUNC13 (sock, reply, sizeof(reply), 0, NULL, NULL);
	if (FUNC14(ret)) {
	    save_errno = rk_SOCK_ERRNO;
	    FUNC9(context, save_errno,
				   "recvfrom %s: %s",
				   host, FUNC16(save_errno));
	    return save_errno;
	}
	len = ret;
    }

    if (len < 6) {
	FUNC15 (result_string, "server %s sent to too short message "
		  "(%zu bytes)", host, len);
	*result_code = KRB5_KPASSWD_MALFORMED;
	return 0;
    }

    pkt_len = (reply[0] << 8) | (reply[1]);
    pkt_ver = (reply[2] << 8) | (reply[3]);

    if ((pkt_len != len) || (reply[1] == 0x7e || reply[1] == 0x5e)) {
	KRB_ERROR error;
	size_t size;
	u_char *p;

	FUNC12(&error, 0, sizeof(error));

	ret = FUNC2(reply, len, &error, &size);
	if (ret)
	    return ret;

	if (error.e_data->length < 2) {
	    FUNC15(result_string, "server %s sent too short "
		     "e_data to print anything usable", host);
	    FUNC3(&error);
	    *result_code = KRB5_KPASSWD_MALFORMED;
	    return 0;
	}

	p = error.e_data->data;
	*result_code = (p[0] << 8) | p[1];
	if (error.e_data->length == 2)
	    FUNC15(result_string, "server only sent error code");
	else
	    FUNC4 (result_string,
			    p + 2,
			    error.e_data->length - 2);
	FUNC3(&error);
	return 0;
    }

    if (pkt_len != len) {
	FUNC15 (result_string, "client: wrong len in reply");
	*result_code = KRB5_KPASSWD_MALFORMED;
	return 0;
    }
    if (pkt_ver != KRB5_KPASSWD_VERS_CHANGEPW) {
	FUNC15 (result_string,
		  "client: wrong version number (%d)", pkt_ver);
	*result_code = KRB5_KPASSWD_MALFORMED;
	return 0;
    }

    ap_rep_data.data = reply + 6;
    ap_rep_data.length  = (reply[4] << 8) | (reply[5]);

    if (reply + len < (u_char *)ap_rep_data.data + ap_rep_data.length) {
	FUNC15 (result_string, "client: wrong AP len in reply");
	*result_code = KRB5_KPASSWD_MALFORMED;
	return 0;
    }

    if (ap_rep_data.length) {
	krb5_ap_rep_enc_part *ap_rep;
	krb5_data priv_data;
	u_char *p;

	priv_data.data   = (u_char*)ap_rep_data.data + ap_rep_data.length;
	priv_data.length = len - ap_rep_data.length - 6;

	ret = FUNC8 (context,
			   auth_context,
			   &ap_rep_data,
			   &ap_rep);
	if (ret)
	    return ret;

	FUNC6 (context, ap_rep);

	ret = FUNC7 (context,
			    auth_context,
			    &priv_data,
			    result_code_string,
			    NULL);
	if (ret) {
	    FUNC5 (result_code_string);
	    return ret;
	}

	if (result_code_string->length < 2) {
	    *result_code = KRB5_KPASSWD_MALFORMED;
	    FUNC15 (result_string,
		      "client: bad length in result");
	    return 0;
	}

        p = result_code_string->data;

        *result_code = (p[0] << 8) | p[1];
        FUNC4 (result_string,
                        (unsigned char*)result_code_string->data + 2,
                        result_code_string->length - 2);
        return 0;
    } else {
	KRB_ERROR error;
	size_t size;
	u_char *p;

	ret = FUNC2(reply + 6, len - 6, &error, &size);
	if (ret) {
	    return ret;
	}
	if (error.e_data->length < 2) {
	    FUNC10 (context, "too short e_data to print anything usable");
	    return 1;		/* XXX */
	}

	p = error.e_data->data;
	*result_code = (p[0] << 8) | p[1];
	FUNC4 (result_string,
			p + 2,
			error.e_data->length - 2);
	return 0;
    }
}