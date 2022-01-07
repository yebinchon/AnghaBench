
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int svn_revnum_t ;
typedef int svn_error_t ;
typedef int svn_depth_t ;
typedef int svn_boolean_t ;
struct TYPE_4__ {char* ancestor; int wrapped_report_baton; TYPE_1__* wrapped_reporter; int depth; } ;
typedef TYPE_2__ report_baton_t ;
typedef int apr_pool_t ;
struct TYPE_3__ {int * (* link_path ) (int ,char const*,char const*,int ,int ,int ,char const*,int *) ;} ;


 size_t strlen (char const*) ;
 int * stub1 (int ,char const*,char const*,int ,int ,int ,char const*,int *) ;
 int svn_depth_infinity ;
 int svn_uri__is_ancestor (char*,char const*) ;
 char* svn_uri_get_longest_ancestor (char const*,char*,int *) ;

__attribute__((used)) static svn_error_t *
reporter_link_path(void *report_baton, const char *path, const char *url,
                   svn_revnum_t revision, svn_depth_t depth,
                   svn_boolean_t start_empty,
                   const char *lock_token, apr_pool_t *pool)
{
  report_baton_t *rb = report_baton;

  if (!svn_uri__is_ancestor(rb->ancestor, url))
    {
      const char *ancestor;

      ancestor = svn_uri_get_longest_ancestor(url, rb->ancestor, pool);





      rb->ancestor[strlen(ancestor)] = '\0';
      rb->depth = svn_depth_infinity;
    }

  return rb->wrapped_reporter->link_path(rb->wrapped_report_baton, path, url,
                                         revision, depth, start_empty,
                                         lock_token, pool);
}
