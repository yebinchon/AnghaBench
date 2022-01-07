
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int svn_ra_serf__xml_transition_t ;
typedef int svn_ra_serf__xml_opened_t ;
struct TYPE_4__ {int * state_pool; } ;
typedef TYPE_1__ svn_ra_serf__xml_estate_t ;
struct TYPE_5__ {TYPE_1__* current; int scratch_pool; void* baton; int cdata_cb; int closed_cb; int opened_cb; int const* ttable; } ;
typedef TYPE_2__ svn_ra_serf__xml_context_t ;
typedef int svn_ra_serf__xml_closed_t ;
typedef int svn_ra_serf__xml_cdata_t ;
typedef int apr_pool_t ;


 void* apr_pcalloc (int *,int) ;
 int svn_pool_create (int *) ;

svn_ra_serf__xml_context_t *
svn_ra_serf__xml_context_create(
  const svn_ra_serf__xml_transition_t *ttable,
  svn_ra_serf__xml_opened_t opened_cb,
  svn_ra_serf__xml_closed_t closed_cb,
  svn_ra_serf__xml_cdata_t cdata_cb,
  void *baton,
  apr_pool_t *result_pool)
{
  svn_ra_serf__xml_context_t *xmlctx;
  svn_ra_serf__xml_estate_t *xes;

  xmlctx = apr_pcalloc(result_pool, sizeof(*xmlctx));
  xmlctx->ttable = ttable;
  xmlctx->opened_cb = opened_cb;
  xmlctx->closed_cb = closed_cb;
  xmlctx->cdata_cb = cdata_cb;
  xmlctx->baton = baton;
  xmlctx->scratch_pool = svn_pool_create(result_pool);

  xes = apr_pcalloc(result_pool, sizeof(*xes));





  xes->state_pool = result_pool;

  xmlctx->current = xes;

  return xmlctx;
}
