
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int svn_mergeinfo_t ;
struct TYPE_6__ {scalar_t__ apr_err; } ;
typedef TYPE_1__ svn_error_t ;
typedef int apr_pool_t ;


 scalar_t__ SVN_ERR_MERGEINFO_PARSE_ERROR ;
 int _ (char*) ;
 TYPE_1__* parse_top (char const**,char const*,int ,int *) ;
 int strlen (char const*) ;
 TYPE_1__* svn_error_createf (scalar_t__,TYPE_1__*,int ,char const*) ;
 int svn_hash__make (int *) ;

svn_error_t *
svn_mergeinfo_parse(svn_mergeinfo_t *mergeinfo,
                    const char *input,
                    apr_pool_t *pool)
{
  svn_error_t *err;

  *mergeinfo = svn_hash__make(pool);
  err = parse_top(&input, input + strlen(input), *mergeinfo, pool);


  if (err && err->apr_err != SVN_ERR_MERGEINFO_PARSE_ERROR)
    err = svn_error_createf(SVN_ERR_MERGEINFO_PARSE_ERROR, err,
                            _("Could not parse mergeinfo string '%s'"),
                            input);
  return err;
}
