
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {char const* data; int len; } ;
typedef TYPE_1__ svn_string_t ;
typedef int svn_stream_t ;
typedef int svn_error_t ;
typedef scalar_t__ svn_boolean_t ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;


 char const* APR_EOL_STR ;
 int FALSE ;
 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int TRUE ;
 char* _ (char*) ;
 int * apr_hash_make (int *) ;
 char* apr_psprintf (int *,char*,char const*,...) ;
 int stream_write (int *,char const*,int ) ;
 int strlen (char const*) ;
 char* svn_cl__local_style_skip_ancestor (char const*,char const*,int *) ;
 int svn_cmdline__print_prop_hash (int *,int *,int ,int *) ;
 int svn_cmdline_cstring_from_utf8 (char const**,char const*,int *) ;
 int svn_hash_sets (int *,char const*,TYPE_1__*) ;
 int svn_path_is_url (char const*) ;
 scalar_t__ svn_prop_needs_translation (char const*) ;
 int svn_subst_detranslate_string (TYPE_1__**,TYPE_1__*,int ,int *) ;
 int svn_subst_translate_cstring2 (char const*,char const**,char const*,int ,int *,int ,int *) ;

__attribute__((used)) static svn_error_t *
print_single_prop(svn_string_t *propval,
                  const char *target_abspath_or_url,
                  const char *abspath_or_URL,
                  const char *wc_path_prefix,
                  svn_stream_t *out,
                  const char *pname,
                  svn_boolean_t print_filenames,
                  svn_boolean_t omit_newline,
                  svn_boolean_t like_proplist,
                  svn_boolean_t inherited_property,
                  apr_pool_t *scratch_pool)
{
  if (print_filenames)
    {
      const char *header;



      if (! svn_path_is_url(abspath_or_URL))
        abspath_or_URL = svn_cl__local_style_skip_ancestor(wc_path_prefix,
                                                           abspath_or_URL,
                                                           scratch_pool);



      if (inherited_property)
        {
          if (like_proplist)
            {
              if (! svn_path_is_url(target_abspath_or_url))
                target_abspath_or_url =
                  svn_cl__local_style_skip_ancestor(wc_path_prefix,
                                                    target_abspath_or_url,
                                                    scratch_pool);
              header = apr_psprintf(
                scratch_pool,
                _("Inherited properties on '%s',\nfrom '%s':\n"),
                target_abspath_or_url, abspath_or_URL);
            }
          else
            {
              header = apr_psprintf(scratch_pool, "%s - ", abspath_or_URL);
            }
        }
      else
        header = apr_psprintf(scratch_pool, like_proplist
                              ? _("Properties on '%s':\n")
                              : "%s - ", abspath_or_URL);
      SVN_ERR(svn_cmdline_cstring_from_utf8(&header, header, scratch_pool));
      SVN_ERR(svn_subst_translate_cstring2(header, &header,
                                           APR_EOL_STR,
                                           FALSE,
                                           ((void*)0),
                                           FALSE,
                                           scratch_pool));
      SVN_ERR(stream_write(out, header, strlen(header)));
    }

  if (like_proplist)
    {

      apr_hash_t *hash = apr_hash_make(scratch_pool);

      svn_hash_sets(hash, pname, propval);
      SVN_ERR(svn_cmdline__print_prop_hash(out, hash, FALSE, scratch_pool));
    }
  else
    {


      if (svn_prop_needs_translation(pname))
        SVN_ERR(svn_subst_detranslate_string(&propval, propval,
                                             TRUE, scratch_pool));

      SVN_ERR(stream_write(out, propval->data, propval->len));

      if (! omit_newline)
        SVN_ERR(stream_write(out, APR_EOL_STR,
                             strlen(APR_EOL_STR)));
    }
  return SVN_NO_ERROR;
}
