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
struct radius_attr_type {char* name; int data_type; } ;
struct radius_attr_hdr {int length; int /*<<< orphan*/  type; } ;
struct in_addr {int dummy; } ;
struct in6_addr {int dummy; } ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int /*<<< orphan*/  AF_INET6 ; 
 int /*<<< orphan*/  MSG_INFO ; 
#define  RADIUS_ATTR_HEXDUMP 133 
#define  RADIUS_ATTR_INT32 132 
#define  RADIUS_ATTR_IP 131 
#define  RADIUS_ATTR_IPV6 130 
#define  RADIUS_ATTR_TEXT 129 
#define  RADIUS_ATTR_UNDIST 128 
 int FUNC0 (unsigned char*) ; 
 int FUNC1 (struct in_addr) ; 
 char* FUNC2 (int /*<<< orphan*/ ,struct in6_addr*,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct in_addr*,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,int,unsigned char*,int) ; 
 struct radius_attr_type* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC7 (char*,int,unsigned char*,int) ; 

__attribute__((used)) static void FUNC8(struct radius_attr_hdr *hdr)
{
	const struct radius_attr_type *attr;
	int len;
	unsigned char *pos;
	char buf[1000];

	attr = FUNC5(hdr->type);

	FUNC6(MSG_INFO, "   Attribute %d (%s) length=%d",
		   hdr->type, attr ? attr->name : "?Unknown?", hdr->length);

	if (attr == NULL || hdr->length < sizeof(struct radius_attr_hdr))
		return;

	len = hdr->length - sizeof(struct radius_attr_hdr);
	pos = (unsigned char *) (hdr + 1);

	switch (attr->data_type) {
	case RADIUS_ATTR_TEXT:
		FUNC4(buf, sizeof(buf), pos, len);
		FUNC6(MSG_INFO, "      Value: '%s'", buf);
		break;

	case RADIUS_ATTR_IP:
		if (len == 4) {
			struct in_addr addr;
			FUNC3(&addr, pos, 4);
			FUNC6(MSG_INFO, "      Value: %s",
				   FUNC1(addr));
		} else {
			FUNC6(MSG_INFO, "      Invalid IP address length %d",
				   len);
		}
		break;

#ifdef CONFIG_IPV6
	case RADIUS_ATTR_IPV6:
		if (len == 16) {
			const char *atxt;
			struct in6_addr *addr = (struct in6_addr *) pos;
			atxt = inet_ntop(AF_INET6, addr, buf, sizeof(buf));
			wpa_printf(MSG_INFO, "      Value: %s",
				   atxt ? atxt : "?");
		} else {
			wpa_printf(MSG_INFO, "      Invalid IPv6 address length %d",
				   len);
		}
		break;
#endif /* CONFIG_IPV6 */

	case RADIUS_ATTR_HEXDUMP:
	case RADIUS_ATTR_UNDIST:
		FUNC7(buf, sizeof(buf), pos, len);
		FUNC6(MSG_INFO, "      Value: %s", buf);
		break;

	case RADIUS_ATTR_INT32:
		if (len == 4)
			FUNC6(MSG_INFO, "      Value: %u",
				   FUNC0(pos));
		else
			FUNC6(MSG_INFO, "      Invalid INT32 length %d",
				   len);
		break;

	default:
		break;
	}
}