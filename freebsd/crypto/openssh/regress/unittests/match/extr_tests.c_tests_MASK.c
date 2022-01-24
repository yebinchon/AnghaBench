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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*,int) ; 

void
FUNC7(void)
{
	FUNC3("match_pattern");
	FUNC0(FUNC5("", ""), 1);
	FUNC0(FUNC5("", "aaa"), 0);
	FUNC0(FUNC5("aaa", ""), 0);
	FUNC0(FUNC5("aaa", "aaaa"), 0);
	FUNC0(FUNC5("aaaa", "aaa"), 0);
	FUNC2();

	FUNC3("match_pattern wildcard");
	FUNC0(FUNC5("", "*"), 1);
	FUNC0(FUNC5("a", "?"), 1);
	FUNC0(FUNC5("aa", "a?"), 1);
	FUNC0(FUNC5("a", "*"), 1);
	FUNC0(FUNC5("aa", "a*"), 1);
	FUNC0(FUNC5("aa", "?*"), 1);
	FUNC0(FUNC5("aa", "**"), 1);
	FUNC0(FUNC5("aa", "?a"), 1);
	FUNC0(FUNC5("aa", "*a"), 1);
	FUNC0(FUNC5("ba", "a?"), 0);
	FUNC0(FUNC5("ba", "a*"), 0);
	FUNC0(FUNC5("ab", "?a"), 0);
	FUNC0(FUNC5("ab", "*a"), 0);
	FUNC2();

	FUNC3("match_pattern_list");
	FUNC0(FUNC6("", "", 0), 0); /* no patterns */
	FUNC0(FUNC6("", "*", 0), 1);
	FUNC0(FUNC6("", "!*", 0), -1);
	FUNC0(FUNC6("", "!a,*", 0), 1);
	FUNC0(FUNC6("", "*,!a", 0), 1);
	FUNC0(FUNC6("", "a,!*", 0), -1);
	FUNC0(FUNC6("", "!*,a", 0), -1);
	FUNC0(FUNC6("a", "", 0), 0);
	FUNC0(FUNC6("a", "*", 0), 1);
	FUNC0(FUNC6("a", "!*", 0), -1);
	FUNC0(FUNC6("a", "!a", 0), -1);
	/* XXX negated ASSERT_INT_EQ(match_pattern_list("a", "!b", 0), 1); */
	FUNC0(FUNC6("a", "!a,*", 0), -1);
	FUNC0(FUNC6("b", "!a,*", 0), 1);
	FUNC0(FUNC6("a", "*,!a", 0), -1);
	FUNC0(FUNC6("b", "*,!a", 0), 1);
	FUNC0(FUNC6("a", "a,!*", 0), -1);
	FUNC0(FUNC6("b", "a,!*", 0), -1);
	FUNC0(FUNC6("a", "a,!a", 0), -1);
	/* XXX negated ASSERT_INT_EQ(match_pattern_list("b", "a,!a", 0), 1); */
	FUNC0(FUNC6("a", "!*,a", 0), -1);
	FUNC0(FUNC6("b", "!*,a", 0), -1);
	FUNC2();

	FUNC3("match_pattern_list lowercase");
	FUNC0(FUNC6("abc", "ABC", 0), 0);
	FUNC0(FUNC6("ABC", "abc", 0), 0);
	FUNC0(FUNC6("abc", "ABC", 1), 1);
	FUNC0(FUNC6("ABC", "abc", 1), 0);
	FUNC2();

	FUNC3("addr_match_list");
	FUNC0(FUNC4("127.0.0.1", "127.0.0.1/44"), -2);
	FUNC0(FUNC4(NULL, "127.0.0.1/44"), -2);
	FUNC0(FUNC4("a", "*"), 0);
	FUNC0(FUNC4("127.0.0.1", "*"), 1);
	FUNC0(FUNC4(NULL, "*"), 0);
	FUNC0(FUNC4("127.0.0.1", "127.0.0.1"), 1);
	FUNC0(FUNC4("127.0.0.1", "127.0.0.2"), 0);
	FUNC0(FUNC4("127.0.0.1", "!127.0.0.1"), -1);
	/* XXX negated ASSERT_INT_EQ(addr_match_list("127.0.0.1", "!127.0.0.2"), 1); */
	FUNC0(FUNC4("127.0.0.255", "127.0.0.0/24"), 1);
	FUNC0(FUNC4("127.0.1.1", "127.0.0.0/24"), 0);
	FUNC0(FUNC4("127.0.0.1", "127.0.0.0/24"), 1);
	FUNC0(FUNC4("127.0.0.1", "127.0.1.0/24"), 0);
	FUNC0(FUNC4("127.0.0.1", "!127.0.0.0/24"), -1);
	/* XXX negated ASSERT_INT_EQ(addr_match_list("127.0.0.1", "!127.0.1.0/24"), 1); */
	FUNC0(FUNC4("127.0.0.1", "10.0.0.1,!127.0.0.1"), -1);
	FUNC0(FUNC4("127.0.0.1", "!127.0.0.1,10.0.0.1"), -1);
	FUNC0(FUNC4("127.0.0.1", "10.0.0.1,127.0.0.2"), 0);
	FUNC0(FUNC4("127.0.0.1", "127.0.0.2,10.0.0.1"), 0);
	/* XXX negated ASSERT_INT_EQ(addr_match_list("127.0.0.1", "10.0.0.1,!127.0.0.2"), 1); */
	/* XXX negated ASSERT_INT_EQ(addr_match_list("127.0.0.1", "!127.0.0.2,10.0.0.1"), 1); */
	FUNC2();

#define CHECK_FILTER(string,filter,expected) \
	do { \
		char *result = match_filter_blacklist((string), (filter)); \
		ASSERT_STRING_EQ(result, expected); \
		free(result); \
	} while (0)

	FUNC3("match_filter_list");
	CHECK_FILTER("a,b,c", "", "a,b,c");
	CHECK_FILTER("a,b,c", "a", "b,c");
	CHECK_FILTER("a,b,c", "b", "a,c");
	CHECK_FILTER("a,b,c", "c", "a,b");
	CHECK_FILTER("a,b,c", "a,b", "c");
	CHECK_FILTER("a,b,c", "a,c", "b");
	CHECK_FILTER("a,b,c", "b,c", "a");
	CHECK_FILTER("a,b,c", "a,b,c", "");
	CHECK_FILTER("a,b,c", "b,c", "a");
	CHECK_FILTER("", "a,b,c", "");
	FUNC2();
/*
 * XXX TODO
 * int      match_host_and_ip(const char *, const char *, const char *);
 * int      match_user(const char *, const char *, const char *, const char *);
 * char    *match_list(const char *, const char *, u_int *);
 * int      addr_match_cidr_list(const char *, const char *);
 */
}