
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ total_hits; scalar_t__ total_writes; scalar_t__ total_reads; } ;
typedef TYPE_1__ svn_membuffer_t ;
typedef int svn_error_t ;
struct TYPE_9__ {int hits; int sets; int gets; } ;
typedef TYPE_2__ svn_cache__info_t ;


 int * SVN_NO_ERROR ;
 int TRUE ;
 int WITH_READ_LOCK (TYPE_1__*,int ) ;
 int svn_membuffer_get_segment_info (TYPE_1__*,TYPE_2__*,int ) ;

__attribute__((used)) static svn_error_t *
svn_membuffer_get_global_segment_info(svn_membuffer_t *segment,
                                      svn_cache__info_t *info)
{
  info->gets += segment->total_reads;
  info->sets += segment->total_writes;
  info->hits += segment->total_hits;

  WITH_READ_LOCK(segment,
                  svn_membuffer_get_segment_info(segment, info, TRUE));

  return SVN_NO_ERROR;
}
