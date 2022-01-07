
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_13__ {int name; } ;
typedef TYPE_1__ svn_wc_entry_t ;
struct TYPE_14__ {char* data; int len; } ;
typedef TYPE_2__ svn_string_t ;
typedef int svn_stream_t ;
struct TYPE_15__ {int apr_err; } ;
typedef TYPE_3__ svn_error_t ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;


 int SVN_ERR (int ) ;
 int SVN_ERR_WC_CORRUPT ;
 int SVN_WC__ADM_ENTRIES ;
 int SVN__STREAM_CHUNK_SIZE ;
 int _ (char*) ;
 int * apr_hash_make (int *) ;
 scalar_t__ apr_strtoi64 (char const*,int *,int ) ;
 char* memchr (char*,float,int) ;
 int parse_entries_xml (char const*,int *,char*,int,int *,int *) ;
 TYPE_3__* read_entry (TYPE_1__**,char**,char const*,int,int *) ;
 int read_val (char const**,char**,char const*) ;
 int resolve_to_defaults (int *,int *) ;
 int svn_ctype_isdigit (char) ;
 int svn_dirent_local_style (char const*,int *) ;
 TYPE_3__* svn_error_create (int ,int *,int ) ;
 TYPE_3__* svn_error_createf (int ,TYPE_3__*,int ,int,...) ;
 TYPE_3__* svn_error_trace (int ) ;
 int svn_hash_sets (int *,int ,TYPE_1__*) ;
 int svn_string_from_stream2 (TYPE_2__**,int *,int ,int *) ;
 int svn_wc__open_adm_stream (int **,char const*,int ,int *,int *) ;

svn_error_t *
svn_wc__read_entries_old(apr_hash_t **entries,
                         const char *dir_abspath,
                         apr_pool_t *result_pool,
                         apr_pool_t *scratch_pool)
{
  char *curp;
  const char *endp;
  svn_wc_entry_t *entry;
  svn_stream_t *stream;
  svn_string_t *buf;

  *entries = apr_hash_make(result_pool);


  SVN_ERR(svn_wc__open_adm_stream(&stream, dir_abspath, SVN_WC__ADM_ENTRIES,
                                  scratch_pool, scratch_pool));
  SVN_ERR(svn_string_from_stream2(&buf, stream, SVN__STREAM_CHUNK_SIZE,
                                  scratch_pool));


  curp = (char *)buf->data;
  endp = buf->data + buf->len;



  if (curp != endp && !svn_ctype_isdigit(*curp))
    SVN_ERR(parse_entries_xml(dir_abspath, *entries, buf->data, buf->len,
                              result_pool, scratch_pool));
  else
    {
      int entryno, entries_format;
      const char *val;




      SVN_ERR(read_val(&val, &curp, endp));
      if (val)
        entries_format = (int)apr_strtoi64(val, ((void*)0), 0);
      else
        return svn_error_createf(SVN_ERR_WC_CORRUPT, ((void*)0),
                                 _("Invalid version line in entries file "
                                   "of '%s'"),
                                 svn_dirent_local_style(dir_abspath,
                                                        scratch_pool));
      entryno = 1;

      while (curp != endp)
        {
          svn_error_t *err = read_entry(&entry, &curp, endp,
                                        entries_format, result_pool);
          if (! err)
            {


              curp = memchr(curp, '\f', endp - curp);
              if (! curp)
                err = svn_error_create(SVN_ERR_WC_CORRUPT, ((void*)0),
                                       _("Missing entry terminator"));
              if (! err && (curp == endp || *(++curp) != '\n'))
                err = svn_error_create(SVN_ERR_WC_CORRUPT, ((void*)0),
                                       _("Invalid entry terminator"));
            }
          if (err)
            return svn_error_createf(err->apr_err, err,
                                     _("Error at entry %d in entries file for "
                                       "'%s':"),
                                     entryno,
                                     svn_dirent_local_style(dir_abspath,
                                                            scratch_pool));

          ++curp;
          ++entryno;

          svn_hash_sets(*entries, entry->name, entry);
        }
    }


  return svn_error_trace(resolve_to_defaults(*entries, result_pool));
}
