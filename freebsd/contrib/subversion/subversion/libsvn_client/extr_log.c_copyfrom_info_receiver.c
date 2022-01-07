
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int range_end; int path; } ;
typedef TYPE_1__ svn_location_segment_t ;
typedef int svn_error_t ;
struct TYPE_5__ {int rev; int pool; scalar_t__ path; scalar_t__ is_first; } ;
typedef TYPE_2__ copyfrom_info_t ;
typedef int apr_pool_t ;


 scalar_t__ FALSE ;
 int * SVN_NO_ERROR ;
 scalar_t__ apr_pstrdup (int ,int ) ;

__attribute__((used)) static svn_error_t *
copyfrom_info_receiver(svn_location_segment_t *segment,
                       void *baton,
                       apr_pool_t *pool)
{
  copyfrom_info_t *copyfrom_info = baton;




  if (copyfrom_info->path)
    return SVN_NO_ERROR;




  if (copyfrom_info->is_first)
    {
      copyfrom_info->is_first = FALSE;
    }
  else if (segment->path)
    {

      copyfrom_info->path = apr_pstrdup(copyfrom_info->pool, segment->path);
      copyfrom_info->rev = segment->range_end;



    }

  return SVN_NO_ERROR;
}
