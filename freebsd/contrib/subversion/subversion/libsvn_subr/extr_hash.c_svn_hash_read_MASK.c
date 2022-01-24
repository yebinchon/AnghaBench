#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {int len; void* data; } ;
typedef  TYPE_1__ svn_string_t ;
struct TYPE_14__ {int /*<<< orphan*/  apr_err; } ;
typedef  TYPE_2__ svn_error_t ;
typedef  int /*<<< orphan*/  buf ;
typedef  int apr_size_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_hash_t ;
typedef  int /*<<< orphan*/  apr_file_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  SVN_ERR_MALFORMED_FILE ; 
 int SVN_KEYLINE_MAXLEN ; 
 TYPE_2__* SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,void*,size_t,TYPE_1__*) ; 
 void* FUNC3 (int /*<<< orphan*/ *,int) ; 
 TYPE_2__* FUNC4 (int*,char*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 TYPE_2__* FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC7 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC8 (int /*<<< orphan*/ *,void*,int,int*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC9 (int /*<<< orphan*/ *,char*,int*,int /*<<< orphan*/ *) ; 

svn_error_t *
FUNC10(apr_hash_t *hash,
              apr_file_t *srcfile,
              apr_pool_t *pool)
{
  svn_error_t *err;
  char buf[SVN_KEYLINE_MAXLEN];
  apr_size_t num_read;
  char c;
  int first_time = 1;


  while (1)
    {
      /* Read a key length line.  Might be END, though. */
      apr_size_t len = sizeof(buf);

      err = FUNC9(srcfile, buf, &len, pool);
      if (err && FUNC0(err->apr_err) && first_time)
        {
          /* We got an EOF on our very first attempt to read, which
             means it's a zero-byte file.  No problem, just go home. */
          FUNC5(err);
          return SVN_NO_ERROR;
        }
      else if (err)
        /* Any other circumstance is a genuine error. */
        return err;

      first_time = 0;

      if (((len == 3) && (buf[0] == 'E') && (buf[1] == 'N') && (buf[2] == 'D'))
          || ((len == 9)
              && (buf[0] == 'P')
              && (buf[1] == 'R')       /* We formerly used just "END" to */
              && (buf[2] == 'O')       /* end a property hash, but later */
              && (buf[3] == 'P')       /* we added "PROPS-END", so that  */
              && (buf[4] == 'S')       /* the fs dump format would be    */
              && (buf[5] == '-')       /* more human-readable.  That's   */
              && (buf[6] == 'E')       /* why we accept either way here. */
              && (buf[7] == 'N')
              && (buf[8] == 'D')))
        {
          /* We've reached the end of the dumped hash table, so leave. */
          return SVN_NO_ERROR;
        }
      else if ((buf[0] == 'K') && (buf[1] == ' '))
        {
          size_t keylen;
          int parsed_len;
          void *keybuf;

          /* Get the length of the key */
          FUNC1(FUNC4(&parsed_len, buf + 2));
          keylen = parsed_len;

          /* Now read that much into a buffer, + 1 byte for null terminator */
          keybuf = FUNC3(pool, keylen + 1);
          FUNC1(FUNC8(srcfile,
                                         keybuf, keylen,
                                         &num_read, NULL, pool));
          ((char *) keybuf)[keylen] = '\0';

          /* Suck up extra newline after key data */
          FUNC1(FUNC7(&c, srcfile, pool));
          if (c != '\n')
            return FUNC6(SVN_ERR_MALFORMED_FILE, NULL, NULL);

          /* Read a val length line */
          len = sizeof(buf);
          FUNC1(FUNC9(srcfile, buf, &len, pool));

          if ((buf[0] == 'V') && (buf[1] == ' '))
            {
              svn_string_t *value = FUNC3(pool, sizeof(*value));
              apr_size_t vallen;
              void *valbuf;

              /* Get the length of the value */
              FUNC1(FUNC4(&parsed_len, buf + 2));
              vallen = parsed_len;

              /* Again, 1 extra byte for the null termination. */
              valbuf = FUNC3(pool, vallen + 1);
              FUNC1(FUNC8(srcfile,
                                             valbuf, vallen,
                                             &num_read, NULL, pool));
              ((char *) valbuf)[vallen] = '\0';

              /* Suck up extra newline after val data */
              FUNC1(FUNC7(&c, srcfile, pool));
              if (c != '\n')
                return FUNC6(SVN_ERR_MALFORMED_FILE, NULL, NULL);

              value->data = valbuf;
              value->len = vallen;

              /* The Grand Moment:  add a new hash entry! */
              FUNC2(hash, keybuf, keylen, value);
            }
          else
            {
              return FUNC6(SVN_ERR_MALFORMED_FILE, NULL, NULL);
            }
        }
      else
        {
          return FUNC6(SVN_ERR_MALFORMED_FILE, NULL, NULL);
        }
    } /* while (1) */
}