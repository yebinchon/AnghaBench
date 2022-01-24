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
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  size_t apr_size_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  APR_EINVAL ; 
 int /*<<< orphan*/  SVN_VA_NULL ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,unsigned char) ; 
 char* FUNC2 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*,char const*) ; 
 char* FUNC4 (char const*,size_t) ; 

__attribute__((used)) static svn_error_t *
FUNC5(const char *data, apr_size_t len, apr_pool_t *pool)
{
  const char *last = FUNC4(data, len);
  const char *valid_txt = "", *invalid_txt = "";
  apr_size_t i;
  size_t valid, invalid;

  /* We will display at most 24 valid octets (this may split a leading
     multi-byte character) as that should fit on one 80 character line. */
  valid = last - data;
  if (valid > 24)
    valid = 24;
  for (i = 0; i < valid; ++i)
    valid_txt = FUNC2(pool, valid_txt,
                            FUNC1(pool, " %02x",
                                         (unsigned char)last[i-valid]),
                                         SVN_VA_NULL);

  /* 4 invalid octets will guarantee that the faulty octet is displayed */
  invalid = data + len - last;
  if (invalid > 4)
    invalid = 4;
  for (i = 0; i < invalid; ++i)
    invalid_txt = FUNC2(pool, invalid_txt,
                              FUNC1(pool, " %02x",
                                           (unsigned char)last[i]),
                                           SVN_VA_NULL);

  return FUNC3(APR_EINVAL, NULL,
                           FUNC0("Valid UTF-8 data\n(hex:%s)\n"
                             "followed by invalid UTF-8 sequence\n(hex:%s)"),
                           valid_txt, invalid_txt);
}