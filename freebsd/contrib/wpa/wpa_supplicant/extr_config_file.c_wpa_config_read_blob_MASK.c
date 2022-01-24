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
struct wpa_config_blob {int /*<<< orphan*/ * data; int /*<<< orphan*/ * name; int /*<<< orphan*/  len; } ;
typedef  int /*<<< orphan*/  buf ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_ERROR ; 
 int /*<<< orphan*/  MSG_MSGDUMP ; 
 int /*<<< orphan*/ * FUNC0 (unsigned char*,size_t,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (unsigned char*) ; 
 int /*<<< orphan*/  FUNC2 (unsigned char*,char*,size_t) ; 
 unsigned char* FUNC3 (unsigned char*,size_t) ; 
 scalar_t__ FUNC4 (char*,char*) ; 
 int /*<<< orphan*/ * FUNC5 (char const*) ; 
 size_t FUNC6 (char*) ; 
 struct wpa_config_blob* FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (struct wpa_config_blob*) ; 
 scalar_t__ FUNC9 (char*,int,int /*<<< orphan*/ *,int*,char**) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*,int,...) ; 

__attribute__((used)) static struct wpa_config_blob * FUNC11(FILE *f, int *line,
						     const char *name)
{
	struct wpa_config_blob *blob;
	char buf[256], *pos;
	unsigned char *encoded = NULL, *nencoded;
	int end = 0;
	size_t encoded_len = 0, len;

	FUNC10(MSG_MSGDUMP, "Line: %d - start of a new named blob '%s'",
		   *line, name);

	while (FUNC9(buf, sizeof(buf), f, line, &pos)) {
		if (FUNC4(pos, "}") == 0) {
			end = 1;
			break;
		}

		len = FUNC6(pos);
		nencoded = FUNC3(encoded, encoded_len + len);
		if (nencoded == NULL) {
			FUNC10(MSG_ERROR, "Line %d: not enough memory for "
				   "blob", *line);
			FUNC1(encoded);
			return NULL;
		}
		encoded = nencoded;
		FUNC2(encoded + encoded_len, pos, len);
		encoded_len += len;
	}

	if (!end || !encoded) {
		FUNC10(MSG_ERROR, "Line %d: blob was not terminated "
			   "properly", *line);
		FUNC1(encoded);
		return NULL;
	}

	blob = FUNC7(sizeof(*blob));
	if (blob == NULL) {
		FUNC1(encoded);
		return NULL;
	}
	blob->name = FUNC5(name);
	blob->data = FUNC0(encoded, encoded_len, &blob->len);
	FUNC1(encoded);

	if (blob->name == NULL || blob->data == NULL) {
		FUNC8(blob);
		return NULL;
	}

	return blob;
}