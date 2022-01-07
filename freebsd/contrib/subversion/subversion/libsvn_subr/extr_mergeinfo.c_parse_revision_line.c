
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {scalar_t__ nelts; } ;
typedef TYPE_1__ svn_rangelist_t ;
typedef int svn_mergeinfo_t ;
typedef int svn_merge_range_t ;
typedef int svn_error_t ;
typedef int apr_ssize_t ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int SVN_ERR_MERGEINFO_PARSE_ERROR ;
 int * SVN_NO_ERROR ;
 int _ (char*) ;
 TYPE_1__* apr_array_make (int *,int,int) ;
 TYPE_1__* apr_hash_get (int ,char const*,int ) ;
 int apr_hash_pool_get (int ) ;
 int apr_hash_set (int ,int ,int ,int ) ;
 int apr_pstrmemdup (int ,char const*,int ) ;
 int parse_pathname (char const**,char const*,char const**,int *) ;
 int parse_rangelist (char const**,char const*,TYPE_1__*,int *) ;
 int strlen (char const*) ;
 int * svn_error_create (int ,int *,int ) ;
 int * svn_error_createf (int ,int *,int ,char const*) ;
 int svn_rangelist__canonicalize (TYPE_1__*,int *) ;
 int svn_rangelist_dup (TYPE_1__*,int ) ;
 int svn_rangelist_merge2 (TYPE_1__*,TYPE_1__*,int *,int *) ;

__attribute__((used)) static svn_error_t *
parse_revision_line(const char **input, const char *end, svn_mergeinfo_t hash,
                    apr_pool_t *scratch_pool)
{
  const char *pathname = "";
  apr_ssize_t klen;
  svn_rangelist_t *existing_rangelist;
  svn_rangelist_t *rangelist = apr_array_make(scratch_pool, 1,
                                              sizeof(svn_merge_range_t *));

  SVN_ERR(parse_pathname(input, end, &pathname, scratch_pool));

  if (*(*input) != ':')
    return svn_error_create(SVN_ERR_MERGEINFO_PARSE_ERROR, ((void*)0),
                            _("Pathname not terminated by ':'"));

  *input = *input + 1;

  SVN_ERR(parse_rangelist(input, end, rangelist, scratch_pool));

  if (rangelist->nelts == 0)
      return svn_error_createf(SVN_ERR_MERGEINFO_PARSE_ERROR, ((void*)0),
                               _("Mergeinfo for '%s' maps to an "
                                 "empty revision range"), pathname);
  if (*input != end && *(*input) != '\n')
    return svn_error_createf(SVN_ERR_MERGEINFO_PARSE_ERROR, ((void*)0),
                             _("Could not find end of line in range list line "
                               "in '%s'"), *input);

  if (*input != end)
    *input = *input + 1;





  SVN_ERR(svn_rangelist__canonicalize(rangelist, scratch_pool));







  klen = strlen(pathname);
  existing_rangelist = apr_hash_get(hash, pathname, klen);
  if (existing_rangelist)
    SVN_ERR(svn_rangelist_merge2(rangelist, existing_rangelist,
                                 scratch_pool, scratch_pool));

  apr_hash_set(hash, apr_pstrmemdup(apr_hash_pool_get(hash), pathname, klen),
               klen, svn_rangelist_dup(rangelist, apr_hash_pool_get(hash)));

  return SVN_NO_ERROR;
}
