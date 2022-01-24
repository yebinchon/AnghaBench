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
typedef  int /*<<< orphan*/  len_buf ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  soap_postfix ; 
 int /*<<< orphan*/  FUNC3 (struct wpabuf*,char*,char const*) ; 
 scalar_t__ FUNC4 (struct wpabuf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct wpabuf*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct wpabuf *buf, const char *name,
			    char *len_ptr, char *body_ptr)
{
	char len_buf[10];
	FUNC3(buf, "</u:%s>\n", name);
	FUNC5(buf, soap_postfix);
	FUNC1(len_buf, sizeof(len_buf), "%d",
		    (int) ((char *) FUNC4(buf, 0) - body_ptr));
	FUNC0(len_ptr, len_buf, FUNC2(len_buf));
}