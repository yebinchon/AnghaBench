
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int svn_rangelist_t ;
typedef scalar_t__ svn_mergeinfo_t ;
struct TYPE_3__ {scalar_t__ start; scalar_t__ end; int inheritable; } ;
typedef TYPE_1__ svn_merge_range_t ;
typedef int svn_error_t ;
typedef int apr_pool_t ;


 int FALSE ;
 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int * svn_hash_gets (scalar_t__,char const*) ;
 int * svn_rangelist__initialize (scalar_t__,scalar_t__,int ,int *) ;
 int svn_rangelist_remove (int **,int *,int *,int ,int *) ;

__attribute__((used)) static svn_error_t *
filter_natural_history_from_mergeinfo(svn_rangelist_t **filtered_rangelist,
                                      const char *source_rel_path,
                                      svn_mergeinfo_t implicit_mergeinfo,
                                      svn_merge_range_t *requested_range,
                                      apr_pool_t *pool)
{

  svn_rangelist_t *requested_rangelist =
    svn_rangelist__initialize(requested_range->start, requested_range->end,
                              requested_range->inheritable, pool);

  *filtered_rangelist = ((void*)0);



  if (implicit_mergeinfo
      && (requested_range->start < requested_range->end))
    {
      svn_rangelist_t *implied_rangelist =
                        svn_hash_gets(implicit_mergeinfo, source_rel_path);

      if (implied_rangelist)
        SVN_ERR(svn_rangelist_remove(filtered_rangelist,
                                     implied_rangelist,
                                     requested_rangelist,
                                     FALSE, pool));
    }



  if (! (*filtered_rangelist))
    *filtered_rangelist = requested_rangelist;

  return SVN_NO_ERROR;
}
