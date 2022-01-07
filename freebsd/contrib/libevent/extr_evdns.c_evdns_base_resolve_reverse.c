
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef int u32 ;
struct request {int dummy; } ;
struct in_addr {int s_addr; } ;
struct evdns_request {int * current_req; } ;
struct evdns_base {int dummy; } ;
typedef int evdns_callback_type ;
typedef int buf ;
typedef scalar_t__ a ;


 int EVDNS_LOCK (struct evdns_base*) ;
 int EVDNS_LOG_DEBUG ;
 int EVDNS_UNLOCK (struct evdns_base*) ;
 int EVUTIL_ASSERT (struct in_addr const*) ;
 int TYPE_PTR ;
 int evutil_snprintf (char*,int,char*,int,int,int,int) ;
 int log (int ,char*,char*) ;
 struct evdns_request* mm_calloc (int,int) ;
 int mm_free (struct evdns_request*) ;
 int ntohl (int ) ;
 struct request* request_new (struct evdns_base*,struct evdns_request*,int ,char*,int,int ,void*) ;
 int request_submit (struct request*) ;

struct evdns_request *
evdns_base_resolve_reverse(struct evdns_base *base, const struct in_addr *in, int flags, evdns_callback_type callback, void *ptr) {
 char buf[32];
 struct evdns_request *handle;
 struct request *req;
 u32 a;
 EVUTIL_ASSERT(in);
 a = ntohl(in->s_addr);
 evutil_snprintf(buf, sizeof(buf), "%d.%d.%d.%d.in-addr.arpa",
   (int)(u8)((a )&0xff),
   (int)(u8)((a>>8 )&0xff),
   (int)(u8)((a>>16)&0xff),
   (int)(u8)((a>>24)&0xff));
 handle = mm_calloc(1, sizeof(*handle));
 if (handle == ((void*)0))
  return ((void*)0);
 log(EVDNS_LOG_DEBUG, "Resolve requested for %s (reverse)", buf);
 EVDNS_LOCK(base);
 req = request_new(base, handle, TYPE_PTR, buf, flags, callback, ptr);
 if (req)
  request_submit(req);
 if (handle->current_req == ((void*)0)) {
  mm_free(handle);
  handle = ((void*)0);
 }
 EVDNS_UNLOCK(base);
 return (handle);
}
