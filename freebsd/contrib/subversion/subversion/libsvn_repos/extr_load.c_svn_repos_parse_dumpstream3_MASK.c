#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {scalar_t__ len; int /*<<< orphan*/ * data; } ;
typedef  TYPE_1__ svn_stringbuf_t ;
typedef  int /*<<< orphan*/  svn_stream_t ;
struct TYPE_12__ {int /*<<< orphan*/  (* close_revision ) (void*) ;int /*<<< orphan*/  (* close_node ) (void*) ;int /*<<< orphan*/  (* remove_node_props ) (void*) ;int /*<<< orphan*/  (* uuid_record ) (char const*,void*,int /*<<< orphan*/ *) ;int /*<<< orphan*/  (* new_node_record ) (void**,int /*<<< orphan*/ *,void*,int /*<<< orphan*/ *) ;int /*<<< orphan*/  (* new_revision_record ) (void**,int /*<<< orphan*/ *,void*,int /*<<< orphan*/ *) ;int /*<<< orphan*/  (* magic_header_record ) (int,void*,int /*<<< orphan*/ *) ;} ;
typedef  TYPE_2__ svn_repos_parse_fns3_t ;
typedef  scalar_t__ svn_filesize_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  (* svn_cancel_func_t ) (void*) ;
typedef  int svn_boolean_t ;
typedef  scalar_t__ apr_size_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_hash_t ;

/* Variables and functions */
 int FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SVN_ERR_STREAM_MALFORMED_DATA ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  SVN_REPOS_DUMPFILE_CONTENT_LENGTH ; 
 int /*<<< orphan*/  SVN_REPOS_DUMPFILE_MAGIC_HEADER ; 
 int /*<<< orphan*/  SVN_REPOS_DUMPFILE_NODE_KIND ; 
 int /*<<< orphan*/  SVN_REPOS_DUMPFILE_NODE_PATH ; 
 int /*<<< orphan*/  SVN_REPOS_DUMPFILE_PROP_CONTENT_LENGTH ; 
 int /*<<< orphan*/  SVN_REPOS_DUMPFILE_PROP_DELTA ; 
 int /*<<< orphan*/  SVN_REPOS_DUMPFILE_REVISION_NUMBER ; 
 int /*<<< orphan*/  SVN_REPOS_DUMPFILE_TEXT_CONTENT_LENGTH ; 
 int /*<<< orphan*/  SVN_REPOS_DUMPFILE_TEXT_DELTA ; 
 int /*<<< orphan*/  SVN_REPOS_DUMPFILE_UUID ; 
 scalar_t__ SVN__STREAM_CHUNK_SIZE ; 
 int TRUE ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* FUNC2 (int /*<<< orphan*/ *,scalar_t__) ; 
 TYPE_2__* FUNC3 (TYPE_2__ const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,scalar_t__,TYPE_2__ const*,void*,void*,int,scalar_t__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,scalar_t__,int,TYPE_2__ const*,void*,char*,scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (char const*,char*) ; 
 int /*<<< orphan*/ * FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (int,void*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (void*) ; 
 int /*<<< orphan*/  FUNC12 (void**,int /*<<< orphan*/ *,void*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (void**,int /*<<< orphan*/ *,void*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (char const*,void*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (void*) ; 
 int /*<<< orphan*/  FUNC16 (void*) ; 
 int /*<<< orphan*/  FUNC17 (void*) ; 
 scalar_t__ FUNC18 (char const*) ; 
 int /*<<< orphan*/  FUNC19 (int*,char const*) ; 
 scalar_t__ FUNC20 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC21 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 char* FUNC22 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC24 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ *,char*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC27 (int /*<<< orphan*/ *,TYPE_1__**,char*,int*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC28 (TYPE_1__*) ; 

svn_error_t *
FUNC29(svn_stream_t *stream,
                            const svn_repos_parse_fns3_t *parse_fns,
                            void *parse_baton,
                            svn_boolean_t deltas_are_text,
                            svn_cancel_func_t cancel_func,
                            void *cancel_baton,
                            apr_pool_t *pool)
{
  svn_boolean_t eof;
  svn_stringbuf_t *linebuf;
  void *rev_baton = NULL;
  char *buffer = FUNC2(pool, SVN__STREAM_CHUNK_SIZE);
  apr_size_t buflen = SVN__STREAM_CHUNK_SIZE;
  apr_pool_t *linepool = FUNC24(pool);
  apr_pool_t *revpool = FUNC24(pool);
  apr_pool_t *nodepool = FUNC24(pool);
  int version;

  /* Make sure we can blindly invoke callbacks. */
  parse_fns = FUNC3(parse_fns, pool);

  /* Start parsing process. */
  FUNC0(FUNC27(stream, &linebuf, "\n", &eof, linepool));
  if (eof)
    return FUNC9();

  /* The first two lines of the stream are the dumpfile-format version
     number, and a blank line.  To preserve backward compatibility,
     don't assume the existence of newer parser-vtable functions. */
  FUNC0(FUNC4(&version, linebuf->data));
  if (parse_fns->magic_header_record != NULL)
    FUNC0(parse_fns->magic_header_record(version, parse_baton, pool));

  /* A dumpfile "record" is defined to be a header-block of
     rfc822-style headers, possibly followed by a content-block.

       - A header-block is always terminated by a single blank line (\n\n)

       - We know whether the record has a content-block by looking for
         a 'Content-length:' header.  The content-block will always be
         of a specific length, plus an extra newline.

     Once a record is fully sucked from the stream, an indeterminate
     number of blank lines (or lines that begin with whitespace) may
     follow before the next record (or the end of the stream.)
  */

  while (1)
    {
      apr_hash_t *headers;
      void *node_baton;
      svn_boolean_t found_node = FALSE;
      svn_boolean_t old_v1_with_cl = FALSE;
      const char *content_length;
      const char *prop_cl;
      const char *text_cl;
      const char *value;
      svn_filesize_t actual_prop_length;

      /* Clear our per-line pool. */
      FUNC23(linepool);

      /* Check for cancellation. */
      if (cancel_func)
        FUNC0(cancel_func(cancel_baton));

      /* Keep reading blank lines until we discover a new record, or until
         the stream runs out. */
      FUNC0(FUNC27(stream, &linebuf, "\n", &eof, linepool));

      if (eof)
        {
          if (FUNC28(linebuf))
            break;   /* end of stream, go home. */
          else
            return FUNC9();
        }

      if ((linebuf->len == 0) || (FUNC20(linebuf->data[0])))
        continue; /* empty line ... loop */

      /*** Found the beginning of a new record. ***/

      /* The last line we read better be a header of some sort.
         Read the whole header-block into a hash. */
      FUNC0(FUNC7(stream, linebuf, &headers, linepool));

      /*** Handle the various header blocks. ***/

      /* Is this a revision record? */
      if (FUNC22(headers, SVN_REPOS_DUMPFILE_REVISION_NUMBER))
        {
          /* If we already have a rev_baton open, we need to close it
             and clear the per-revision subpool. */
          if (rev_baton != NULL)
            {
              FUNC0(parse_fns->close_revision(rev_baton));
              FUNC23(revpool);
            }

          FUNC0(parse_fns->new_revision_record(&rev_baton,
                                                 headers, parse_baton,
                                                 revpool));
        }
      /* Or is this, perhaps, a node record? */
      else if (FUNC22(headers, SVN_REPOS_DUMPFILE_NODE_PATH))
        {
          FUNC0(parse_fns->new_node_record(&node_baton,
                                             headers,
                                             rev_baton,
                                             nodepool));
          found_node = TRUE;
        }
      /* Or is this the repos UUID? */
      else if ((value = FUNC22(headers, SVN_REPOS_DUMPFILE_UUID)))
        {
          FUNC0(parse_fns->uuid_record(value, parse_baton, pool));
        }
      /* Or perhaps a dumpfile format? */
      /* ### TODO: use parse_format_version */
      else if ((value = FUNC22(headers,
                                      SVN_REPOS_DUMPFILE_MAGIC_HEADER)))
        {
          /* ### someday, switch modes of operation here. */
          FUNC0(FUNC19(&version, value));
        }
      /* Or is this bogosity?! */
      else
        {
          /* What the heck is this record?!? */
          return FUNC21(SVN_ERR_STREAM_MALFORMED_DATA, NULL,
                                  FUNC1("Unrecognized record type in stream"));
        }

      /* Need 3 values below to determine v1 dump type

         Old (pre 0.14?) v1 dumps don't have Prop-content-length
         and Text-content-length fields, but always have a properties
         block in a block with Content-Length > 0 */

      content_length = FUNC22(headers,
                                     SVN_REPOS_DUMPFILE_CONTENT_LENGTH);
      prop_cl = FUNC22(headers, SVN_REPOS_DUMPFILE_PROP_CONTENT_LENGTH);
      text_cl = FUNC22(headers, SVN_REPOS_DUMPFILE_TEXT_CONTENT_LENGTH);
      old_v1_with_cl =
        version == 1 && content_length && ! prop_cl && ! text_cl;

      /* Is there a props content-block to parse? */
      if (prop_cl || old_v1_with_cl)
        {
          const char *delta = FUNC22(headers,
                                            SVN_REPOS_DUMPFILE_PROP_DELTA);
          svn_boolean_t is_delta = (delta && FUNC8(delta, "true") == 0);

          /* First, remove all node properties, unless this is a delta
             property block. */
          if (found_node && !is_delta)
            FUNC0(parse_fns->remove_node_props(node_baton));

          FUNC0(FUNC5
                  (stream,
                   FUNC18(prop_cl ? prop_cl : content_length),
                   parse_fns,
                   found_node ? node_baton : rev_baton,
                   parse_baton,
                   found_node,
                   &actual_prop_length,
                   found_node ? nodepool : revpool));
        }

      /* Is there a text content-block to parse? */
      if (text_cl)
        {
          const char *delta = FUNC22(headers,
                                            SVN_REPOS_DUMPFILE_TEXT_DELTA);
          svn_boolean_t is_delta = FALSE;
          if (! deltas_are_text)
            is_delta = (delta && FUNC8(delta, "true") == 0);

          FUNC0(FUNC6(stream,
                                   FUNC18(text_cl),
                                   is_delta,
                                   parse_fns,
                                   found_node ? node_baton : rev_baton,
                                   buffer,
                                   buflen,
                                   found_node ? nodepool : revpool));
        }
      else if (old_v1_with_cl)
        {
          /* An old-v1 block with a Content-length might have a text block.
             If the property block did not consume all the bytes of the
             Content-length, then it clearly does have a text block.
             If not, then we must deduce whether we have an *empty* text
             block or an *absent* text block.  The rules are:
             - "Node-kind: file" blocks have an empty (i.e. present, but
               zero-length) text block, since they represent a file
               modification.  Note that file-copied-text-unmodified blocks
               have no Content-length - even if they should have contained
               a modified property block, the pre-0.14 dumper forgets to
               dump the modified properties.
             - If it is not a file node, then it is a revision or directory,
               and so has an absent text block.
          */
          const char *node_kind;
          svn_filesize_t cl_value = FUNC18(content_length)
                                    - actual_prop_length;

          if (cl_value ||
              ((node_kind = FUNC22(headers,
                                          SVN_REPOS_DUMPFILE_NODE_KIND))
               && FUNC8(node_kind, "file") == 0)
             )
            FUNC0(FUNC6(stream,
                                     cl_value,
                                     FALSE,
                                     parse_fns,
                                     found_node ? node_baton : rev_baton,
                                     buffer,
                                     buflen,
                                     found_node ? nodepool : revpool));
        }

      /* if we have a content-length header, did we read all of it?
         in case of an old v1, we *always* read all of it, because
         text-content-length == content-length - prop-content-length
      */
      if (content_length && ! old_v1_with_cl)
        {
          apr_size_t rlen, num_to_read;
          svn_filesize_t remaining =
            FUNC18(content_length) -
            (prop_cl ? FUNC18(prop_cl) : 0) -
            (text_cl ? FUNC18(text_cl) : 0);


          if (remaining < 0)
            return FUNC21(SVN_ERR_STREAM_MALFORMED_DATA, NULL,
                                    FUNC1("Sum of subblock sizes larger than "
                                      "total block content length"));

          /* Consume remaining bytes in this content block */
          while (remaining > 0)
            {
              if (remaining >= (svn_filesize_t)buflen)
                rlen = buflen;
              else
                rlen = (apr_size_t) remaining;

              num_to_read = rlen;
              FUNC0(FUNC26(stream, buffer, &rlen));
              remaining -= rlen;
              if (rlen != num_to_read)
                return FUNC9();
            }
        }

      /* If we just finished processing a node record, we need to
         close the node record and clear the per-node subpool. */
      if (found_node)
        {
          FUNC0(parse_fns->close_node(node_baton));
          FUNC23(nodepool);
        }

      /*** End of processing for one record. ***/

    } /* end of stream */

  /* Close out whatever revision we're in. */
  if (rev_baton != NULL)
    FUNC0(parse_fns->close_revision(rev_baton));

  FUNC25(linepool);
  FUNC25(revpool);
  FUNC25(nodepool);
  return SVN_NO_ERROR;
}