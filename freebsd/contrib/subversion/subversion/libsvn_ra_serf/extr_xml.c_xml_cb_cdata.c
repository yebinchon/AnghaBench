
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ waiting; int scratch_pool; TYPE_3__* current; int baton; int (* cdata_cb ) (TYPE_3__*,int ,int ,char const*,int ,int ) ;} ;
typedef TYPE_1__ svn_ra_serf__xml_context_t ;
typedef int svn_error_t ;
typedef int apr_size_t ;
struct TYPE_7__ {int state; int * cdata; } ;


 int END_CALLBACK (TYPE_1__*) ;
 int START_CALLBACK (TYPE_1__*) ;
 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int stub1 (TYPE_3__*,int ,int ,char const*,int ,int ) ;
 int svn_pool_clear (int ) ;
 int svn_stringbuf_appendbytes (int *,char const*,int ) ;

__attribute__((used)) static svn_error_t *
xml_cb_cdata(svn_ra_serf__xml_context_t *xmlctx,
             const char *data,
             apr_size_t len)
{


  if (xmlctx->waiting > 0)
    return SVN_NO_ERROR;


  if (xmlctx->current->cdata != ((void*)0))
    {
      svn_stringbuf_appendbytes(xmlctx->current->cdata, data, len);
    }


  else if (xmlctx->cdata_cb != ((void*)0))
    {
      START_CALLBACK(xmlctx);
      SVN_ERR(xmlctx->cdata_cb(xmlctx->current,
                               xmlctx->baton,
                               xmlctx->current->state,
                               data, len,
                               xmlctx->scratch_pool));
      END_CALLBACK(xmlctx);
      svn_pool_clear(xmlctx->scratch_pool);
    }

  return SVN_NO_ERROR;
}
