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
struct hostapd_radius_attr {void* val; int /*<<< orphan*/  type; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char const*) ; 
 int /*<<< orphan*/  FUNC1 (char const*,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC2 (struct hostapd_radius_attr*) ; 
 char* FUNC3 (char const*,char) ; 
 size_t FUNC4 (char const*) ; 
 struct hostapd_radius_attr* FUNC5 (int) ; 
 void* FUNC6 (int) ; 
 void* FUNC7 (char const*,size_t) ; 
 int /*<<< orphan*/  FUNC8 (void*) ; 
 int /*<<< orphan*/  FUNC9 (void*,size_t) ; 
 int /*<<< orphan*/  FUNC10 (void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (void*,int /*<<< orphan*/ ) ; 

struct hostapd_radius_attr * FUNC12(const char *value)
{
	const char *pos;
	char syntax;
	struct hostapd_radius_attr *attr;
	size_t len;

	attr = FUNC5(sizeof(*attr));
	if (!attr)
		return NULL;

	attr->type = FUNC0(value);

	pos = FUNC3(value, ':');
	if (!pos) {
		attr->val = FUNC6(1);
		if (!attr->val) {
			FUNC2(attr);
			return NULL;
		}
		FUNC11(attr->val, 0);
		return attr;
	}

	pos++;
	if (pos[0] == '\0' || pos[1] != ':') {
		FUNC2(attr);
		return NULL;
	}
	syntax = *pos++;
	pos++;

	switch (syntax) {
	case 's':
		attr->val = FUNC7(pos, FUNC4(pos));
		break;
	case 'x':
		len = FUNC4(pos);
		if (len & 1)
			break;
		len /= 2;
		attr->val = FUNC6(len);
		if (!attr->val)
			break;
		if (FUNC1(pos, FUNC9(attr->val, len), len) < 0) {
			FUNC8(attr->val);
			FUNC2(attr);
			return NULL;
		}
		break;
	case 'd':
		attr->val = FUNC6(4);
		if (attr->val)
			FUNC10(attr->val, FUNC0(pos));
		break;
	default:
		FUNC2(attr);
		return NULL;
	}

	if (!attr->val) {
		FUNC2(attr);
		return NULL;
	}

	return attr;
}