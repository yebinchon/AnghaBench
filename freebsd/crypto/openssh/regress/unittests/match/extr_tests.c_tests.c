
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ASSERT_INT_EQ (int ,int) ;
 int CHECK_FILTER (char*,char*,char*) ;
 int TEST_DONE () ;
 int TEST_START (char*) ;
 int addr_match_list (char*,char*) ;
 int match_pattern (char*,char*) ;
 int match_pattern_list (char*,char*,int) ;

void
tests(void)
{
 TEST_START("match_pattern");
 ASSERT_INT_EQ(match_pattern("", ""), 1);
 ASSERT_INT_EQ(match_pattern("", "aaa"), 0);
 ASSERT_INT_EQ(match_pattern("aaa", ""), 0);
 ASSERT_INT_EQ(match_pattern("aaa", "aaaa"), 0);
 ASSERT_INT_EQ(match_pattern("aaaa", "aaa"), 0);
 TEST_DONE();

 TEST_START("match_pattern wildcard");
 ASSERT_INT_EQ(match_pattern("", "*"), 1);
 ASSERT_INT_EQ(match_pattern("a", "?"), 1);
 ASSERT_INT_EQ(match_pattern("aa", "a?"), 1);
 ASSERT_INT_EQ(match_pattern("a", "*"), 1);
 ASSERT_INT_EQ(match_pattern("aa", "a*"), 1);
 ASSERT_INT_EQ(match_pattern("aa", "?*"), 1);
 ASSERT_INT_EQ(match_pattern("aa", "**"), 1);
 ASSERT_INT_EQ(match_pattern("aa", "?a"), 1);
 ASSERT_INT_EQ(match_pattern("aa", "*a"), 1);
 ASSERT_INT_EQ(match_pattern("ba", "a?"), 0);
 ASSERT_INT_EQ(match_pattern("ba", "a*"), 0);
 ASSERT_INT_EQ(match_pattern("ab", "?a"), 0);
 ASSERT_INT_EQ(match_pattern("ab", "*a"), 0);
 TEST_DONE();

 TEST_START("match_pattern_list");
 ASSERT_INT_EQ(match_pattern_list("", "", 0), 0);
 ASSERT_INT_EQ(match_pattern_list("", "*", 0), 1);
 ASSERT_INT_EQ(match_pattern_list("", "!*", 0), -1);
 ASSERT_INT_EQ(match_pattern_list("", "!a,*", 0), 1);
 ASSERT_INT_EQ(match_pattern_list("", "*,!a", 0), 1);
 ASSERT_INT_EQ(match_pattern_list("", "a,!*", 0), -1);
 ASSERT_INT_EQ(match_pattern_list("", "!*,a", 0), -1);
 ASSERT_INT_EQ(match_pattern_list("a", "", 0), 0);
 ASSERT_INT_EQ(match_pattern_list("a", "*", 0), 1);
 ASSERT_INT_EQ(match_pattern_list("a", "!*", 0), -1);
 ASSERT_INT_EQ(match_pattern_list("a", "!a", 0), -1);

 ASSERT_INT_EQ(match_pattern_list("a", "!a,*", 0), -1);
 ASSERT_INT_EQ(match_pattern_list("b", "!a,*", 0), 1);
 ASSERT_INT_EQ(match_pattern_list("a", "*,!a", 0), -1);
 ASSERT_INT_EQ(match_pattern_list("b", "*,!a", 0), 1);
 ASSERT_INT_EQ(match_pattern_list("a", "a,!*", 0), -1);
 ASSERT_INT_EQ(match_pattern_list("b", "a,!*", 0), -1);
 ASSERT_INT_EQ(match_pattern_list("a", "a,!a", 0), -1);

 ASSERT_INT_EQ(match_pattern_list("a", "!*,a", 0), -1);
 ASSERT_INT_EQ(match_pattern_list("b", "!*,a", 0), -1);
 TEST_DONE();

 TEST_START("match_pattern_list lowercase");
 ASSERT_INT_EQ(match_pattern_list("abc", "ABC", 0), 0);
 ASSERT_INT_EQ(match_pattern_list("ABC", "abc", 0), 0);
 ASSERT_INT_EQ(match_pattern_list("abc", "ABC", 1), 1);
 ASSERT_INT_EQ(match_pattern_list("ABC", "abc", 1), 0);
 TEST_DONE();

 TEST_START("addr_match_list");
 ASSERT_INT_EQ(addr_match_list("127.0.0.1", "127.0.0.1/44"), -2);
 ASSERT_INT_EQ(addr_match_list(((void*)0), "127.0.0.1/44"), -2);
 ASSERT_INT_EQ(addr_match_list("a", "*"), 0);
 ASSERT_INT_EQ(addr_match_list("127.0.0.1", "*"), 1);
 ASSERT_INT_EQ(addr_match_list(((void*)0), "*"), 0);
 ASSERT_INT_EQ(addr_match_list("127.0.0.1", "127.0.0.1"), 1);
 ASSERT_INT_EQ(addr_match_list("127.0.0.1", "127.0.0.2"), 0);
 ASSERT_INT_EQ(addr_match_list("127.0.0.1", "!127.0.0.1"), -1);

 ASSERT_INT_EQ(addr_match_list("127.0.0.255", "127.0.0.0/24"), 1);
 ASSERT_INT_EQ(addr_match_list("127.0.1.1", "127.0.0.0/24"), 0);
 ASSERT_INT_EQ(addr_match_list("127.0.0.1", "127.0.0.0/24"), 1);
 ASSERT_INT_EQ(addr_match_list("127.0.0.1", "127.0.1.0/24"), 0);
 ASSERT_INT_EQ(addr_match_list("127.0.0.1", "!127.0.0.0/24"), -1);

 ASSERT_INT_EQ(addr_match_list("127.0.0.1", "10.0.0.1,!127.0.0.1"), -1);
 ASSERT_INT_EQ(addr_match_list("127.0.0.1", "!127.0.0.1,10.0.0.1"), -1);
 ASSERT_INT_EQ(addr_match_list("127.0.0.1", "10.0.0.1,127.0.0.2"), 0);
 ASSERT_INT_EQ(addr_match_list("127.0.0.1", "127.0.0.2,10.0.0.1"), 0);


 TEST_DONE();
 TEST_START("match_filter_list");
 do { char *result = match_filter_blacklist(("a,b,c"), ("")); ASSERT_STRING_EQ(result, "a,b,c"); free(result); } while (0);
 do { char *result = match_filter_blacklist(("a,b,c"), ("a")); ASSERT_STRING_EQ(result, "b,c"); free(result); } while (0);
 do { char *result = match_filter_blacklist(("a,b,c"), ("b")); ASSERT_STRING_EQ(result, "a,c"); free(result); } while (0);
 do { char *result = match_filter_blacklist(("a,b,c"), ("c")); ASSERT_STRING_EQ(result, "a,b"); free(result); } while (0);
 do { char *result = match_filter_blacklist(("a,b,c"), ("a,b")); ASSERT_STRING_EQ(result, "c"); free(result); } while (0);
 do { char *result = match_filter_blacklist(("a,b,c"), ("a,c")); ASSERT_STRING_EQ(result, "b"); free(result); } while (0);
 do { char *result = match_filter_blacklist(("a,b,c"), ("b,c")); ASSERT_STRING_EQ(result, "a"); free(result); } while (0);
 do { char *result = match_filter_blacklist(("a,b,c"), ("a,b,c")); ASSERT_STRING_EQ(result, ""); free(result); } while (0);
 do { char *result = match_filter_blacklist(("a,b,c"), ("b,c")); ASSERT_STRING_EQ(result, "a"); free(result); } while (0);
 do { char *result = match_filter_blacklist((""), ("a,b,c")); ASSERT_STRING_EQ(result, ""); free(result); } while (0);
 TEST_DONE();







}
