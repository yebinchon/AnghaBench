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
typedef  int u8 ;
typedef  scalar_t__ os_time_t ;

/* Variables and functions */
#define  ASN1_TAG_GENERALIZEDTIME 129 
#define  ASN1_TAG_UTCTIME 128 
 int /*<<< orphan*/  MSG_DEBUG ; 
 scalar_t__ FUNC0 (int,int,int,int,int,int,scalar_t__*) ; 
 int FUNC1 (char const*,int) ; 
 int FUNC2 (char const*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int const*,size_t) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int) ; 

int FUNC5(const u8 *buf, size_t len, u8 asn1_tag, os_time_t *val)
{
	const char *pos, *end;
	int year, month, day, hour, min, sec;

	/*
	 * Time ::= CHOICE {
	 *     utcTime        UTCTime,
	 *     generalTime    GeneralizedTime
	 * }
	 *
	 * UTCTime: YYMMDDHHMMSSZ
	 * GeneralizedTime: YYYYMMDDHHMMSSZ
	 */

	pos = (const char *) buf;
	end = pos + len;

	switch (asn1_tag) {
	case ASN1_TAG_UTCTIME:
		if (len != 13 || buf[12] != 'Z') {
			FUNC3(MSG_DEBUG, "X509: Unrecognized "
					  "UTCTime format", buf, len);
			return -1;
		}
		year = FUNC1(pos, end - pos);
		if (year < 0) {
			FUNC3(MSG_DEBUG, "X509: Failed to parse "
					  "UTCTime year", buf, len);
			return -1;
		}
		if (year < 50)
			year += 2000;
		else
			year += 1900;
		pos += 2;
		break;
	case ASN1_TAG_GENERALIZEDTIME:
		if (len != 15 || buf[14] != 'Z') {
			FUNC3(MSG_DEBUG, "X509: Unrecognized "
					  "GeneralizedTime format", buf, len);
			return -1;
		}
		year = FUNC2(pos, end - pos);
		if (year < 0) {
			FUNC3(MSG_DEBUG, "X509: Failed to parse "
					  "GeneralizedTime year", buf, len);
			return -1;
		}
		pos += 4;
		break;
	default:
		FUNC4(MSG_DEBUG, "X509: Expected UTCTime or "
			   "GeneralizedTime - found tag 0x%x", asn1_tag);
		return -1;
	}

	month = FUNC1(pos, end - pos);
	if (month < 0) {
		FUNC3(MSG_DEBUG, "X509: Failed to parse Time "
				  "(month)", buf, len);
		return -1;
	}
	pos += 2;

	day = FUNC1(pos, end - pos);
	if (day < 0) {
		FUNC3(MSG_DEBUG, "X509: Failed to parse Time "
				  "(day)", buf, len);
		return -1;
	}
	pos += 2;

	hour = FUNC1(pos, end - pos);
	if (hour < 0) {
		FUNC3(MSG_DEBUG, "X509: Failed to parse Time "
				  "(hour)", buf, len);
		return -1;
	}
	pos += 2;

	min = FUNC1(pos, end - pos);
	if (min < 0) {
		FUNC3(MSG_DEBUG, "X509: Failed to parse Time "
				  "(min)", buf, len);
		return -1;
	}
	pos += 2;

	sec = FUNC1(pos, end - pos);
	if (sec < 0) {
		FUNC3(MSG_DEBUG, "X509: Failed to parse Time "
				  "(sec)", buf, len);
		return -1;
	}

	if (FUNC0(year, month, day, hour, min, sec, val) < 0) {
		FUNC3(MSG_DEBUG, "X509: Failed to convert Time",
				  buf, len);
		if (year < 1970) {
			/*
			 * At least some test certificates have been configured
			 * to use dates prior to 1970. Set the date to
			 * beginning of 1970 to handle these case.
			 */
			FUNC4(MSG_DEBUG, "X509: Year=%d before epoch - "
				   "assume epoch as the time", year);
			*val = 0;
			return 0;
		}
		return -1;
	}

	return 0;
}