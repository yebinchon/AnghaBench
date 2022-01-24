#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {scalar_t__ len; char* data; } ;
typedef  TYPE_1__ svn_stringbuf_t ;
struct TYPE_9__ {char* data; scalar_t__ len; } ;
typedef  TYPE_2__ svn_string_t ;
typedef  int /*<<< orphan*/  svn_stream_t ;
struct TYPE_10__ {int /*<<< orphan*/  (* delete_node_property ) (void*,char*) ;int /*<<< orphan*/  (* set_revision_property ) (void*,char*,TYPE_2__*) ;int /*<<< orphan*/  (* set_node_property ) (void*,char*,TYPE_2__*) ;} ;
typedef  TYPE_3__ svn_repos_parse_fns3_t ;
typedef  scalar_t__ svn_filesize_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  scalar_t__ svn_boolean_t ;
typedef  scalar_t__ apr_uint64_t ;
typedef  scalar_t__ apr_size_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  scalar_t__ apr_int64_t ;

/* Variables and functions */
 int /*<<< orphan*/  APR_SIZE_MAX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SVN_ERR_STREAM_MALFORMED_DATA ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char**,scalar_t__*,int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 
 int /*<<< orphan*/ * FUNC4 () ; 
 int /*<<< orphan*/ * FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (void*,char*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (void*,char*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC8 (void*,char*) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__*,char*) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,TYPE_1__**,char*,scalar_t__*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC16(svn_stream_t *stream,
                     svn_filesize_t content_length,
                     const svn_repos_parse_fns3_t *parse_fns,
                     void *record_baton,
                     void *parse_baton,
                     svn_boolean_t is_node,
                     svn_filesize_t *actual_length,
                     apr_pool_t *pool)
{
  svn_stringbuf_t *strbuf;
  apr_pool_t *proppool = FUNC13(pool);

  *actual_length = 0;
  while (content_length != *actual_length)
    {
      char *buf;  /* a pointer into the stringbuf's data */
      svn_boolean_t eof;

      FUNC12(proppool);

      /* Read a key length line.  (Actually, it might be PROPS_END). */
      FUNC0(FUNC15(stream, &strbuf, "\n", &eof, proppool));

      if (eof)
        {
          /* We could just use stream_ran_dry() or stream_malformed(),
             but better to give a non-generic property block error. */
          return FUNC11
            (SVN_ERR_STREAM_MALFORMED_DATA, NULL,
             FUNC1("Incomplete or unterminated property block"));
        }

      *actual_length += (strbuf->len + 1); /* +1 because we read a \n too. */
      buf = strbuf->data;

      if (! FUNC3(buf, "PROPS-END"))
        break; /* no more properties. */

      else if ((buf[0] == 'K') && (buf[1] == ' '))
        {
          char *keybuf;
          apr_uint64_t len;

          FUNC0(FUNC10(&len, buf + 2, 0, APR_SIZE_MAX, 10));
          FUNC0(FUNC2(&keybuf, actual_length,
                                  stream, (apr_size_t)len, proppool));

          /* Read a val length line */
          FUNC0(FUNC15(stream, &strbuf, "\n", &eof, proppool));
          if (eof)
            return FUNC5();

          *actual_length += (strbuf->len + 1); /* +1 because we read \n too */
          buf = strbuf->data;

          if ((buf[0] == 'V') && (buf[1] == ' '))
            {
              svn_string_t propstring;
              char *valbuf;
              apr_int64_t val;

              FUNC0(FUNC9(&val, buf + 2));
              propstring.len = (apr_size_t)val;
              FUNC0(FUNC2(&valbuf, actual_length,
                                      stream, propstring.len, proppool));
              propstring.data = valbuf;

              /* Now, send the property pair to the vtable! */
              if (is_node)
                {
                  FUNC0(parse_fns->set_node_property(record_baton,
                                                       keybuf,
                                                       &propstring));
                }
              else
                {
                  FUNC0(parse_fns->set_revision_property(record_baton,
                                                           keybuf,
                                                           &propstring));
                }
            }
          else
            return FUNC4(); /* didn't find expected 'V' line */
        }
      else if ((buf[0] == 'D') && (buf[1] == ' '))
        {
          char *keybuf;
          apr_uint64_t len;

          FUNC0(FUNC10(&len, buf + 2, 0, APR_SIZE_MAX, 10));
          FUNC0(FUNC2(&keybuf, actual_length,
                                  stream, (apr_size_t)len, proppool));

          /* We don't expect these in revision properties, and if we see
             one when we don't have a delete_node_property callback,
             then we're seeing a v3 feature in a v2 dump. */
          if (!is_node || !parse_fns->delete_node_property)
            return FUNC4();

          FUNC0(parse_fns->delete_node_property(record_baton, keybuf));
        }
      else
        return FUNC4(); /* didn't find expected 'K' line */

    } /* while (1) */

  FUNC14(proppool);
  return SVN_NO_ERROR;
}