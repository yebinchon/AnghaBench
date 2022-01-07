
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int isc_result_t ;
struct TYPE_8__ {void* action_arg; int * action; int * url; } ;
typedef TYPE_1__ isc_httpdurl_t ;
struct TYPE_9__ {int urls; int mctx; int * render_404; } ;
typedef TYPE_2__ isc_httpdmgr_t ;
typedef int isc_httpdaction_t ;


 int ISC_LINK_INIT (TYPE_1__*,int ) ;
 int ISC_LIST_APPEND (int ,TYPE_1__*,int ) ;
 int ISC_R_NOMEMORY ;
 int ISC_R_SUCCESS ;
 TYPE_1__* isc_mem_get (int ,int) ;
 int isc_mem_put (int ,TYPE_1__*,int) ;
 int * isc_mem_strdup (int ,char const*) ;
 int link ;

isc_result_t
isc_httpdmgr_addurl(isc_httpdmgr_t *httpdmgr, const char *url,
      isc_httpdaction_t *func, void *arg)
{
 isc_httpdurl_t *item;

 if (url == ((void*)0)) {
  httpdmgr->render_404 = func;
  return (ISC_R_SUCCESS);
 }

 item = isc_mem_get(httpdmgr->mctx, sizeof(isc_httpdurl_t));
 if (item == ((void*)0))
  return (ISC_R_NOMEMORY);

 item->url = isc_mem_strdup(httpdmgr->mctx, url);
 if (item->url == ((void*)0)) {
  isc_mem_put(httpdmgr->mctx, item, sizeof(isc_httpdurl_t));
  return (ISC_R_NOMEMORY);
 }

 item->action = func;
 item->action_arg = arg;
 ISC_LINK_INIT(item, link);
 ISC_LIST_APPEND(httpdmgr->urls, item, link);

 return (ISC_R_SUCCESS);
}
