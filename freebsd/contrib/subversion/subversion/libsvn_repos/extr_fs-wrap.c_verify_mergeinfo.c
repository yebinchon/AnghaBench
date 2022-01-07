
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {scalar_t__ len; int data; } ;
typedef TYPE_1__ svn_string_t ;
typedef int svn_mergeinfo_t ;
struct TYPE_10__ {int apr_err; } ;
typedef TYPE_2__ svn_error_t ;
typedef int apr_pool_t ;


 int SVN_ERR_MERGEINFO_PARSE_ERROR ;
 TYPE_2__* SVN_NO_ERROR ;
 int _ (char*) ;
 scalar_t__ strlen (int ) ;
 TYPE_2__* svn_error_createf (int ,TYPE_2__*,int ,char const*) ;
 TYPE_2__* svn_mergeinfo_parse (int *,int ,int *) ;

__attribute__((used)) static svn_error_t *
verify_mergeinfo(const svn_string_t *value,
                 const char *path,
                 apr_pool_t *scratch_pool)
{
  svn_error_t *err;
  svn_mergeinfo_t mergeinfo;


  if (value == ((void*)0))
    return SVN_NO_ERROR;



  if (strlen(value->data) != value->len)
    return svn_error_createf(SVN_ERR_MERGEINFO_PARSE_ERROR, ((void*)0),
                             _("Commit rejected because mergeinfo on '%s' "
                               "contains unexpected string terminator"),
                             path);

  err = svn_mergeinfo_parse(&mergeinfo, value->data, scratch_pool);
  if (err)
    return svn_error_createf(err->apr_err, err,
                             _("Commit rejected because mergeinfo on '%s' "
                               "is syntactically invalid"),
                             path);
  return SVN_NO_ERROR;
}
