
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_ra_reporter_t ;
typedef int svn_ra_reporter3_t ;
struct compat_report_baton {void* baton; int const* reporter; } ;
typedef int apr_pool_t ;


 struct compat_report_baton* apr_palloc (int *,int) ;
 int compat_reporter ;

__attribute__((used)) static void compat_wrap_reporter(const svn_ra_reporter_t **reporter,
                                 void **baton,
                                 const svn_ra_reporter3_t *wrapped,
                                 void *wrapped_baton,
                                 apr_pool_t *pool)
{
  struct compat_report_baton *crb = apr_palloc(pool, sizeof(*crb));
  crb->reporter = wrapped;
  crb->baton = wrapped_baton;

  *reporter = &compat_reporter;
  *baton = crb;
}
