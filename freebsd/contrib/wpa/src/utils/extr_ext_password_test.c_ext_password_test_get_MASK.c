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
struct ext_password_test_data {char* params; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEBUG ; 
 struct wpabuf* FUNC0 (int) ; 
 char* FUNC1 (char*,char) ; 
 size_t FUNC2 (char const*) ; 
 scalar_t__ FUNC3 (char*,char const*,size_t) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,char const*) ; 
 int /*<<< orphan*/  FUNC6 (struct wpabuf*) ; 
 int /*<<< orphan*/  FUNC7 (struct wpabuf*) ; 
 int /*<<< orphan*/  FUNC8 (struct wpabuf*,char*,int) ; 

__attribute__((used)) static struct wpabuf * FUNC9(void *ctx, const char *name)
{
	struct ext_password_test_data *data = ctx;
	char *pos, *pos2;
	size_t nlen;

	FUNC5(MSG_DEBUG, "EXT PW TEST: get(%s)", name);

	pos = data->params;
	if (pos == NULL)
		return NULL;
	nlen = FUNC2(name);

	while (pos && *pos) {
		if (FUNC3(pos, name, nlen) == 0 && pos[nlen] == '=') {
			struct wpabuf *buf;
			pos += nlen + 1;
			pos2 = pos;
			while (*pos2 != '|' && *pos2 != '\0')
				pos2++;
			buf = FUNC0(pos2 - pos);
			if (buf == NULL)
				return NULL;
			FUNC8(buf, pos, pos2 - pos);
			FUNC4(MSG_DEBUG, "EXT PW TEST: value",
					      FUNC6(buf),
					      FUNC7(buf));
			return buf;
		}

		pos = FUNC1(pos + 1, '|');
		if (pos)
			pos++;
	}

	FUNC5(MSG_DEBUG, "EXT PW TEST: get(%s) - not found", name);

	return NULL;
}