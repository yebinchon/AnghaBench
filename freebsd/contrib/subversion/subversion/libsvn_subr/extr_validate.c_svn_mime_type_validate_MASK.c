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
 int /*<<< orphan*/  SVN_ERR_BAD_MIME_TYPE ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char* FUNC1 (char const*,char const) ; 
 size_t FUNC2 (char const*,char*) ; 
 size_t FUNC3 (char const*) ; 
 int /*<<< orphan*/  FUNC4 (char const) ; 
 scalar_t__ FUNC5 (char const) ; 
 scalar_t__ FUNC6 (char const) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*,...) ; 

svn_error_t *
FUNC8(const char *mime_type, apr_pool_t *pool)
{
  /* Since svn:mime-type can actually contain a full content type
     specification, e.g., "text/html; charset=UTF-8", make sure we're
     only looking at the media type here. */
  const apr_size_t len = FUNC2(mime_type, "; ");
  const apr_size_t len2 = FUNC3(mime_type);
  const char *const slash_pos = FUNC1(mime_type, '/');
  apr_size_t i;
  const char *tspecials = "()<>@,;:\\\"/[]?=";

  if (len == 0)
    return FUNC7
      (SVN_ERR_BAD_MIME_TYPE, NULL,
       FUNC0("MIME type '%s' has empty media type"), mime_type);

  if (slash_pos == NULL || slash_pos >= &mime_type[len])
    return FUNC7
      (SVN_ERR_BAD_MIME_TYPE, NULL,
       FUNC0("MIME type '%s' does not contain '/'"), mime_type);

  /* Check the mime type for illegal characters. See RFC 1521. */
  for (i = 0; i < len; i++)
    {
      if (&mime_type[i] != slash_pos
         && (! FUNC4(mime_type[i])
            || FUNC5(mime_type[i])
            || FUNC6(mime_type[i])
            || (FUNC1(tspecials, mime_type[i]) != NULL)))
        return FUNC7
          (SVN_ERR_BAD_MIME_TYPE, NULL,
           FUNC0("MIME type '%s' contains invalid character '%c' "
             "in media type"),
           mime_type, mime_type[i]);
    }

  /* Check the whole string for unsafe characters. (issue #2872) */
  for (i = 0; i < len2; i++)
    {
      if (FUNC5(mime_type[i]) && mime_type[i] != '\t')
        return FUNC7(
           SVN_ERR_BAD_MIME_TYPE, NULL,
           FUNC0("MIME type '%s' contains invalid character '0x%02x' "
             "in postfix"),
           mime_type, mime_type[i]);
    }

  return SVN_NO_ERROR;
}