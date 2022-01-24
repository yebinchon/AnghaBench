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
struct ext_password_data {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_INFO ; 
 int /*<<< orphan*/  FUNC0 (struct ext_password_data*) ; 
 int /*<<< orphan*/  FUNC1 (struct wpabuf*) ; 
 struct wpabuf* FUNC2 (struct ext_password_data*,char*) ; 
 struct ext_password_data* FUNC3 (char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int FUNC5(void)
{
	struct ext_password_data *data;
	int ret = 0;
	struct wpabuf *pw;

	FUNC4(MSG_INFO, "ext_password tests");

	data = FUNC3("unknown", "foo");
	if (data != NULL)
		return -1;

	data = FUNC3("test", NULL);
	if (data == NULL)
		return -1;
	pw = FUNC2(data, "foo");
	if (pw != NULL)
		ret = -1;
	FUNC1(pw);

	FUNC0(data);

	pw = FUNC2(NULL, "foo");
	if (pw != NULL)
		ret = -1;
	FUNC1(pw);

	return ret;
}