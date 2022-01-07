
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ path; } ;
typedef TYPE_1__ svn_location_segment_t ;
typedef int apr_pool_t ;


 TYPE_1__* apr_palloc (int *,int) ;
 scalar_t__ apr_pstrdup (int *,scalar_t__) ;

svn_location_segment_t *
svn_location_segment_dup(const svn_location_segment_t *segment,
                         apr_pool_t *pool)
{
  svn_location_segment_t *new_segment =
    apr_palloc(pool, sizeof(*new_segment));

  *new_segment = *segment;
  if (segment->path)
    new_segment->path = apr_pstrdup(pool, segment->path);
  return new_segment;
}
