#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {int /*<<< orphan*/  name; } ;
typedef  TYPE_1__ svn_wc_entry_t ;
struct TYPE_14__ {char* data; int len; } ;
typedef  TYPE_2__ svn_string_t ;
typedef  int /*<<< orphan*/  svn_stream_t ;
struct TYPE_15__ {int /*<<< orphan*/  apr_err; } ;
typedef  TYPE_3__ svn_error_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_hash_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SVN_ERR_WC_CORRUPT ; 
 int /*<<< orphan*/  SVN_WC__ADM_ENTRIES ; 
 int /*<<< orphan*/  SVN__STREAM_CHUNK_SIZE ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 char* FUNC4 (char*,float,int) ; 
 int /*<<< orphan*/  FUNC5 (char const*,int /*<<< orphan*/ *,char*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_3__* FUNC6 (TYPE_1__**,char**,char const*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (char const**,char**,char const*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (char) ; 
 int /*<<< orphan*/  FUNC10 (char const*,int /*<<< orphan*/ *) ; 
 TYPE_3__* FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC12 (int /*<<< orphan*/ ,TYPE_3__*,int /*<<< orphan*/ ,int,...) ; 
 TYPE_3__* FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_2__**,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ **,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

svn_error_t *
FUNC17(apr_hash_t **entries,
                         const char *dir_abspath,
                         apr_pool_t *result_pool,
                         apr_pool_t *scratch_pool)
{
  char *curp;
  const char *endp;
  svn_wc_entry_t *entry;
  svn_stream_t *stream;
  svn_string_t *buf;

  *entries = FUNC2(result_pool);

  /* Open the entries file. */
  FUNC0(FUNC16(&stream, dir_abspath, SVN_WC__ADM_ENTRIES,
                                  scratch_pool, scratch_pool));
  FUNC0(FUNC15(&buf, stream, SVN__STREAM_CHUNK_SIZE,
                                  scratch_pool));

  /* We own the returned data; it is modifiable, so cast away... */
  curp = (char *)buf->data;
  endp = buf->data + buf->len;

  /* If the first byte of the file is not a digit, then it is probably in XML
     format. */
  if (curp != endp && !FUNC9(*curp))
    FUNC0(FUNC5(dir_abspath, *entries, buf->data, buf->len,
                              result_pool, scratch_pool));
  else
    {
      int entryno, entries_format;
      const char *val;

      /* Read the format line from the entries file. In case we're in the
         middle of upgrading a working copy, this line will contain the
         original format pre-upgrade. */
      FUNC0(FUNC7(&val, &curp, endp));
      if (val)
        entries_format = (int)FUNC3(val, NULL, 0);
      else
        return FUNC12(SVN_ERR_WC_CORRUPT, NULL,
                                 FUNC1("Invalid version line in entries file "
                                   "of '%s'"),
                                 FUNC10(dir_abspath,
                                                        scratch_pool));
      entryno = 1;

      while (curp != endp)
        {
          svn_error_t *err = FUNC6(&entry, &curp, endp,
                                        entries_format, result_pool);
          if (! err)
            {
              /* We allow extra fields at the end of the line, for
                 extensibility. */
              curp = FUNC4(curp, '\f', endp - curp);
              if (! curp)
                err = FUNC11(SVN_ERR_WC_CORRUPT, NULL,
                                       FUNC1("Missing entry terminator"));
              if (! err && (curp == endp || *(++curp) != '\n'))
                err = FUNC11(SVN_ERR_WC_CORRUPT, NULL,
                                       FUNC1("Invalid entry terminator"));
            }
          if (err)
            return FUNC12(err->apr_err, err,
                                     FUNC1("Error at entry %d in entries file for "
                                       "'%s':"),
                                     entryno,
                                     FUNC10(dir_abspath,
                                                            scratch_pool));

          ++curp;
          ++entryno;

          FUNC14(*entries, entry->name, entry);
        }
    }

  /* Fill in any implied fields. */
  return FUNC13(FUNC8(*entries, result_pool));
}