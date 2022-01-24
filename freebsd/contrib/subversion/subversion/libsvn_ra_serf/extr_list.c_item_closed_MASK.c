#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {char* data; } ;
typedef  TYPE_1__ svn_string_t ;
typedef  int /*<<< orphan*/  svn_ra_serf__xml_estate_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
struct TYPE_10__ {int /*<<< orphan*/ * last_author; int /*<<< orphan*/  time; int /*<<< orphan*/  created_rev; int /*<<< orphan*/  size; int /*<<< orphan*/  kind; int /*<<< orphan*/  has_props; int /*<<< orphan*/  member_0; } ;
typedef  TYPE_2__ svn_dirent_t ;
struct TYPE_11__ {int /*<<< orphan*/ * author; int /*<<< orphan*/  receiver_baton; int /*<<< orphan*/  (* receiver ) (char const*,TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ;TYPE_4__* author_buf; } ;
typedef  TYPE_3__ list_context_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_hash_t ;
struct TYPE_12__ {int /*<<< orphan*/ * data; } ;

/* Variables and functions */
 int AUTHOR ; 
 int /*<<< orphan*/  FALSE ; 
 int ITEM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SVN_ERR_RA_DAV_MALFORMED_DATA ; 
 int /*<<< orphan*/  SVN_INVALID_FILESIZE ; 
 int /*<<< orphan*/  SVN_INVALID_REVNUM ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ FUNC2 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC3 (char const*,TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC4 (TYPE_1__ const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 char* FUNC8 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC9 (char const*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_4__*,char*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC13(svn_ra_serf__xml_estate_t *xes,
            void *baton,
            int leaving_state,
            const svn_string_t *cdata,
            apr_hash_t *attrs,
            apr_pool_t *scratch_pool)
{
  list_context_t *list_ctx = baton;

  if (leaving_state == AUTHOR)
    {
      /* For compatibility with liveprops, current servers will not use
       * base64-encoding for "binary" user names bu simply drop the
       * offending control chars.
       *
       * We might want to switch to revprop-style encoding, though,
       * and this is the code to do that. */
      const char *encoding = FUNC8(attrs, "encoding");
      if (encoding)
        {
          /* Check for a known encoding type.  This is easy -- there's
             only one.  */
          if (FUNC2(encoding, "base64") != 0)
            {
              return FUNC6(SVN_ERR_RA_DAV_MALFORMED_DATA, NULL,
                                       FUNC1("Unsupported encoding '%s'"),
                                       encoding);
            }

          cdata = FUNC4(cdata, scratch_pool);
        }

      /* Remember until the next ITEM closing tag. */
      FUNC11(list_ctx->author_buf, cdata->data);
      list_ctx->author = list_ctx->author_buf->data;
    }
  else if (leaving_state == ITEM)
    {
      const char *dirent_path = cdata->data;
      const char *kind_word, *date, *crev, *size;
      svn_dirent_t dirent = { 0 };

      kind_word = FUNC8(attrs, "node-kind");
      size = FUNC8(attrs, "size");

      dirent.has_props = FUNC7(attrs, "has-props", FALSE);
      crev = FUNC8(attrs, "created-rev");
      date = FUNC8(attrs, "date");

      /* Convert data. */
      dirent.kind = FUNC9(kind_word);

      if (size)
        FUNC0(FUNC5(&dirent.size, size));
      else
        dirent.size = SVN_INVALID_FILESIZE;

      if (crev)
        FUNC0(FUNC10(&dirent.created_rev, crev, NULL));
      else
        dirent.created_rev = SVN_INVALID_REVNUM;

      if (date)
        FUNC0(FUNC12(&dirent.time, date, scratch_pool));

      if (list_ctx->author)
        dirent.last_author = list_ctx->author;

      /* Invoke RECEIVER */
      FUNC0(list_ctx->receiver(dirent_path, &dirent,
                                 list_ctx->receiver_baton, scratch_pool));

      /* Reset buffered info. */
      list_ctx->author = NULL;
    }

  return SVN_NO_ERROR;
}