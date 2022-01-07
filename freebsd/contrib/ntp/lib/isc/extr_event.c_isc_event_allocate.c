
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct isc_event {int dummy; } ;
typedef int * isc_taskaction_t ;
typedef int isc_mem_t ;
typedef int isc_eventtype_t ;
typedef int isc_event_t ;


 int DE_CONST (void const*,void*) ;
 int ISC_EVENT_INIT (int *,size_t,int ,int *,int ,int *,void*,void*,int ,int *) ;
 int REQUIRE (int) ;
 int destroy ;
 int * isc_mem_get (int *,size_t) ;

isc_event_t *
isc_event_allocate(isc_mem_t *mctx, void *sender, isc_eventtype_t type,
     isc_taskaction_t action, const void *arg, size_t size)
{
 isc_event_t *event;
 void *deconst_arg;

 REQUIRE(size >= sizeof(struct isc_event));
 REQUIRE(action != ((void*)0));

 event = isc_mem_get(mctx, size);
 if (event == ((void*)0))
  return (((void*)0));
 DE_CONST(arg, deconst_arg);

 ISC_EVENT_INIT(event, size, 0, ((void*)0), type, action, deconst_arg,
         sender, destroy, mctx);

 return (event);
}
