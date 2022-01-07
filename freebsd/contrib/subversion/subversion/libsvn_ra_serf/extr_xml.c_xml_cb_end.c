
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int svn_string_t ;
struct TYPE_8__ {scalar_t__ state_pool; struct TYPE_8__* prev; int attrs; int state; TYPE_4__* cdata; scalar_t__ custom_close; } ;
typedef TYPE_1__ svn_ra_serf__xml_estate_t ;
struct TYPE_9__ {scalar_t__ waiting; TYPE_1__* free_states; TYPE_1__* current; int scratch_pool; int baton; int (* closed_cb ) (TYPE_1__*,int ,int ,int const*,int ,int ) ;} ;
typedef TYPE_2__ svn_ra_serf__xml_context_t ;
typedef int svn_error_t ;
struct TYPE_10__ {int * pool; } ;


 int END_CALLBACK (TYPE_2__*) ;
 int START_CALLBACK (TYPE_2__*) ;
 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int stub1 (TYPE_1__*,int ,int ,int const*,int ,int ) ;
 int svn_pool_clear (int ) ;
 int svn_pool_destroy (scalar_t__) ;
 int * svn_stringbuf__morph_into_string (TYPE_4__*) ;

__attribute__((used)) static svn_error_t *
xml_cb_end(svn_ra_serf__xml_context_t *xmlctx,
           const char *raw_name)
{
  svn_ra_serf__xml_estate_t *xes = xmlctx->current;

  if (xmlctx->waiting > 0)
    {
      xmlctx->waiting--;
      return SVN_NO_ERROR;
    }

  if (xes->custom_close)
    {
      const svn_string_t *cdata;

      if (xes->cdata)
        {
          cdata = svn_stringbuf__morph_into_string(xes->cdata);






        }
      else
        cdata = ((void*)0);

      START_CALLBACK(xmlctx);
      SVN_ERR(xmlctx->closed_cb(xes, xmlctx->baton, xes->state,
                                cdata, xes->attrs,
                                xmlctx->scratch_pool));
      END_CALLBACK(xmlctx);
      svn_pool_clear(xmlctx->scratch_pool);
    }


  xmlctx->current = xes->prev;



  xes->prev = xmlctx->free_states;
  xmlctx->free_states = xes;




  if (xes->state_pool)
    svn_pool_destroy(xes->state_pool);

  return SVN_NO_ERROR;
}
