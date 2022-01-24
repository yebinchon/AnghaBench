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
struct wpa_config_blob {int dummy; } ;
struct wpa_config {int dummy; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_ERROR ; 
 char* FUNC0 (char*,char) ; 
 struct wpa_config_blob* FUNC1 (int /*<<< orphan*/ *,int*,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct wpa_config*,struct wpa_config_blob*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int,...) ; 

__attribute__((used)) static int FUNC4(struct wpa_config *config, FILE *f,
				   int *line, char *bname)
{
	char *name_end;
	struct wpa_config_blob *blob;

	name_end = FUNC0(bname, '=');
	if (name_end == NULL) {
		FUNC3(MSG_ERROR, "Line %d: no blob name terminator",
			   *line);
		return -1;
	}
	*name_end = '\0';

	blob = FUNC1(f, line, bname);
	if (blob == NULL) {
		FUNC3(MSG_ERROR, "Line %d: failed to read blob %s",
			   *line, bname);
		return -1;
	}
	FUNC2(config, blob);
	return 0;
}