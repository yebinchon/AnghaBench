
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ revision; scalar_t__ kind; scalar_t__ schedule; scalar_t__ uuid; scalar_t__ repos; int name; scalar_t__ url; } ;
typedef TYPE_1__ svn_wc_entry_t ;
typedef int apr_pool_t ;


 scalar_t__ SVN_INVALID_REVNUM ;
 scalar_t__ svn_node_dir ;
 scalar_t__ svn_path_url_add_component2 (scalar_t__,int ,int *) ;
 scalar_t__ svn_wc_schedule_add ;
 scalar_t__ svn_wc_schedule_replace ;

__attribute__((used)) static void
take_from_entry(const svn_wc_entry_t *src,
                svn_wc_entry_t *dst,
                apr_pool_t *pool)
{


  if ((dst->revision == SVN_INVALID_REVNUM) && (dst->kind != svn_node_dir))
    dst->revision = src->revision;


  if (! dst->url)
    dst->url = svn_path_url_add_component2(src->url, dst->name, pool);

  if (! dst->repos)
    dst->repos = src->repos;

  if ((! dst->uuid)
      && (! ((dst->schedule == svn_wc_schedule_add)
             || (dst->schedule == svn_wc_schedule_replace))))
    {
      dst->uuid = src->uuid;
    }
}
