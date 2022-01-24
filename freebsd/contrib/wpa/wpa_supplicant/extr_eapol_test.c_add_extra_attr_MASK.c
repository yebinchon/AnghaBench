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
typedef  int /*<<< orphan*/  u32 ;
struct radius_msg {int dummy; } ;
struct extra_radius_attr {int syntax; char* data; int type; } ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 size_t RADIUS_MAX_ATTR_LEN ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,int,char*,char*) ; 
 size_t FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (char*,...) ; 
 int /*<<< orphan*/  FUNC7 (struct radius_msg*,int,int /*<<< orphan*/ *,size_t) ; 

__attribute__((used)) static int FUNC8(struct radius_msg *msg,
			  struct extra_radius_attr *attr)
{
	size_t len;
	char *pos;
	u32 val;
	char buf[RADIUS_MAX_ATTR_LEN + 1];

	switch (attr->syntax) {
	case 's':
		FUNC4(buf, sizeof(buf), "%s", attr->data);
		len = FUNC5(buf);
		break;
	case 'n':
		buf[0] = '\0';
		len = 1;
		break;
	case 'x':
		pos = attr->data;
		if (pos[0] == '0' && pos[1] == 'x')
			pos += 2;
		len = FUNC5(pos);
		if ((len & 1) || (len / 2) > RADIUS_MAX_ATTR_LEN) {
			FUNC6("Invalid extra attribute hexstring\n");
			return -1;
		}
		len /= 2;
		if (FUNC1(pos, (u8 *) buf, len) < 0) {
			FUNC6("Invalid extra attribute hexstring\n");
			return -1;
		}
		break;
	case 'd':
		val = FUNC2(FUNC0(attr->data));
		FUNC3(buf, &val, 4);
		len = 4;
		break;
	default:
		FUNC6("Incorrect extra attribute syntax specification\n");
		return -1;
	}

	if (!FUNC7(msg, attr->type, (u8 *) buf, len)) {
		FUNC6("Could not add attribute %d\n", attr->type);
		return -1;
	}

	return 0;
}