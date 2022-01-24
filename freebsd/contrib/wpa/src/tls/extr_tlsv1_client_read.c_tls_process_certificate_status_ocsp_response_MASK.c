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
typedef  int /*<<< orphan*/  u8 ;
typedef  int u32 ;
struct tlsv1_client {int dummy; } ;
typedef  enum tls_ocsp_result { ____Placeholder_tls_ocsp_result } tls_ocsp_result ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_INFO ; 
 int /*<<< orphan*/  TLS_ALERT_DECODE_ERROR ; 
 int /*<<< orphan*/  TLS_ALERT_LEVEL_FATAL ; 
 int TLS_OCSP_INVALID ; 
 int FUNC0 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC1 (struct tlsv1_client*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct tlsv1_client*,int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static enum tls_ocsp_result
FUNC4(struct tlsv1_client *conn,
					     const u8 *pos, size_t len)
{
	const u8 *end = pos + len;
	u32 ocsp_resp_len;

	/* opaque OCSPResponse<1..2^24-1>; */
	if (end - pos < 3) {
		FUNC3(MSG_INFO, "TLSv1: Too short OCSPResponse");
		FUNC1(conn, TLS_ALERT_LEVEL_FATAL, TLS_ALERT_DECODE_ERROR);
		return TLS_OCSP_INVALID;
	}
	ocsp_resp_len = FUNC0(pos);
	pos += 3;
	if (end - pos < ocsp_resp_len) {
		FUNC3(MSG_INFO, "TLSv1: Truncated OCSPResponse");
		FUNC1(conn, TLS_ALERT_LEVEL_FATAL, TLS_ALERT_DECODE_ERROR);
		return TLS_OCSP_INVALID;
	}

	return FUNC2(conn, pos, ocsp_resp_len);
}