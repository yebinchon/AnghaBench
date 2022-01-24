#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  parser; int /*<<< orphan*/ * error; } ;
typedef  TYPE_1__ svn_xml_parser_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  svn_boolean_t ;
typedef  scalar_t__ apr_size_t ;

/* Variables and functions */
 int /*<<< orphan*/  SVN_ERR_XML_MALFORMED ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 long FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,char const*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,long) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 

svn_error_t *
FUNC7(svn_xml_parser_t *svn_parser,
              const char *buf,
              apr_size_t len,
              svn_boolean_t is_final)
{
  svn_error_t *err;
  int success;

  /* Parse some xml data */
  success = FUNC3(svn_parser->parser, buf, (int) len, is_final);

  /* Did an error occur somewhere *inside* the expat callbacks? */
  if (svn_parser->error)
    {
      /* Kill all parsers and return the error */
      FUNC6(svn_parser);
      return svn_parser->error;
    }

  /* If expat choked internally, return its error. */
  if (! success)
    {
      /* Line num is "int" in Expat v1, "long" in v2; hide the difference. */
      long line = FUNC1(svn_parser->parser);

      err = FUNC5
        (SVN_ERR_XML_MALFORMED, NULL,
         FUNC4("Malformed XML: %s at line %ld"),
         FUNC0(FUNC2(svn_parser->parser)), line);

      /* Kill all parsers and return the expat error */
      FUNC6(svn_parser);
      return err;
    }

  return SVN_NO_ERROR;
}