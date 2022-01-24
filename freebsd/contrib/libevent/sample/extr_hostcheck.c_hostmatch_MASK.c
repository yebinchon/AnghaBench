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
 int CURL_HOST_MATCH ; 
 int CURL_HOST_NOMATCH ; 
 scalar_t__ FUNC0 (char const*,char const*) ; 
 scalar_t__ FUNC1 (char const*,char const*,size_t) ; 
 char* FUNC2 (char const*,char) ; 

__attribute__((used)) static int FUNC3(const char *hostname, const char *pattern)
{
  const char *pattern_label_end, *pattern_wildcard, *hostname_label_end;
  int wildcard_enabled;
  size_t prefixlen, suffixlen;
  pattern_wildcard = FUNC2(pattern, '*');
  if(pattern_wildcard == NULL)
    return FUNC0(pattern, hostname) ?
      CURL_HOST_MATCH : CURL_HOST_NOMATCH;

  /* We require at least 2 dots in pattern to avoid too wide wildcard
     match. */
  wildcard_enabled = 1;
  pattern_label_end = FUNC2(pattern, '.');
  if(pattern_label_end == NULL || FUNC2(pattern_label_end+1, '.') == NULL ||
     pattern_wildcard > pattern_label_end ||
     FUNC1(pattern, "xn--", 4)) {
    wildcard_enabled = 0;
  }
  if(!wildcard_enabled)
    return FUNC0(pattern, hostname) ?
      CURL_HOST_MATCH : CURL_HOST_NOMATCH;

  hostname_label_end = FUNC2(hostname, '.');
  if(hostname_label_end == NULL ||
     !FUNC0(pattern_label_end, hostname_label_end))
    return CURL_HOST_NOMATCH;

  /* The wildcard must match at least one character, so the left-most
     label of the hostname is at least as large as the left-most label
     of the pattern. */
  if(hostname_label_end - hostname < pattern_label_end - pattern)
    return CURL_HOST_NOMATCH;

  prefixlen = pattern_wildcard - pattern;
  suffixlen = pattern_label_end - (pattern_wildcard+1);
  return FUNC1(pattern, hostname, prefixlen) &&
    FUNC1(pattern_wildcard+1, hostname_label_end - suffixlen,
                    suffixlen) ?
    CURL_HOST_MATCH : CURL_HOST_NOMATCH;
}