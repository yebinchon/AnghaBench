
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ svn_revnum_t ;
struct TYPE_5__ {char const* path; scalar_t__ range_start; scalar_t__ range_end; } ;
typedef TYPE_1__ svn_location_segment_t ;
typedef int * (* svn_location_segment_receiver_t ) (TYPE_1__*,void*,int *) ;
typedef int svn_error_t ;
typedef int apr_pool_t ;


 int * SVN_NO_ERROR ;
 TYPE_1__* apr_pcalloc (int *,int) ;

__attribute__((used)) static svn_error_t *
maybe_crop_and_send_segment(const char *path,
                            svn_revnum_t start_rev,
                            svn_revnum_t range_start,
                            svn_revnum_t range_end,
                            svn_location_segment_receiver_t receiver,
                            void *receiver_baton,
                            apr_pool_t *pool)
{
  svn_location_segment_t *segment = apr_pcalloc(pool, sizeof(*segment));
  segment->path = path ? ((*path == '/') ? path + 1 : path) : ((void*)0);
  segment->range_start = range_start;
  segment->range_end = range_end;
  if (segment->range_start <= start_rev)
    {
      if (segment->range_end > start_rev)
        segment->range_end = start_rev;
      return receiver(segment, receiver_baton, pool);
    }
  return SVN_NO_ERROR;
}
