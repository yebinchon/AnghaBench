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
typedef  int /*<<< orphan*/  krb5_error_code ;
typedef  int /*<<< orphan*/  krb5_context ;

/* Variables and functions */
 int /*<<< orphan*/  EACCES ; 
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int,char*) ; 

__attribute__((used)) static void
FUNC5(krb5_context context)
{
    krb5_error_code ret;
    char *s1, *s2;

    ret = FUNC3(context, "foo", "s", "foo");
    FUNC0(context, ret, 0, "single s");
    ret = FUNC3(context, "foo foo", "s", "foo");
    FUNC0(context, ret, EACCES, "too many strings");
    ret = FUNC3(context, "foo bar", "ss", "foo", "bar");
    FUNC0(context, ret, 0, "two strings");
    ret = FUNC3(context, "foo  bar", "ss", "foo", "bar");
    FUNC0(context, ret, 0, "two strings double space");
    ret = FUNC3(context, "foo \tbar", "ss", "foo", "bar");
    FUNC0(context, ret, 0, "two strings space + tab");
    ret = FUNC3(context, "foo", "ss", "foo", "bar");
    FUNC0(context, ret, EACCES, "one string, two format strings");
    ret = FUNC3(context, "foo", "ss", "foo", "foo");
    FUNC0(context, ret, EACCES, "one string, two format strings (same)");
    ret = FUNC3(context, "foo  \t", "s", "foo");
    FUNC0(context, ret, 0, "ending space");

    ret = FUNC3(context, "foo/bar", "f", "foo/bar");
    FUNC0(context, ret, 0, "liternal fnmatch");
    ret = FUNC3(context, "foo/bar", "f", "foo/*");
    FUNC0(context, ret, 0, "foo/*");
    ret = FUNC3(context, "foo/bar.example.org", "f",
				"foo/*.example.org");
    FUNC0(context, ret, 0, "foo/*.example.org");
    ret = FUNC3(context, "foo/bar.example.com", "f",
				"foo/*.example.org");
    FUNC0(context, ret, EACCES, "foo/*.example.com");

    ret = FUNC3(context, "foo/bar/baz", "f", "foo/*/baz");
    FUNC0(context, ret, 0, "foo/*/baz");

    ret = FUNC3(context, "foo", "r", &s1);
    FUNC0(context, ret, 0, "ret 1");
    FUNC1(context, "ret 1 match", s1, "foo"); FUNC2(s1);

    ret = FUNC3(context, "foo bar", "rr", &s1, &s2);
    FUNC0(context, ret, 0, "ret 2");
    FUNC1(context, "ret 2 match 1", s1, "foo"); FUNC2(s1);
    FUNC1(context, "ret 2 match 2", s2, "bar"); FUNC2(s2);

    ret = FUNC3(context, "foo bar", "sr", "bar", &s1);
    FUNC0(context, ret, EACCES, "ret mismatch");
    if (s1 != NULL) FUNC4(context, 1, "s1 not NULL");

    ret = FUNC3(context, "foo", "l", "foo");
    FUNC0(context, ret, EINVAL, "unknown letter");
}