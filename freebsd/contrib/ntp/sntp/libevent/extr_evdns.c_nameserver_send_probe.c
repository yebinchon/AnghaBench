
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr {int dummy; } ;
struct request {struct nameserver* ns; } ;
struct nameserver {int base; struct evdns_request* probe_request; int address; } ;
struct evdns_request {int dummy; } ;
typedef int addrbuf ;


 int ASSERT_LOCKED (int ) ;
 int DNS_QUERY_NO_SEARCH ;
 int EVDNS_LOG_DEBUG ;
 int TYPE_A ;
 int evutil_format_sockaddr_port_ (struct sockaddr*,char*,int) ;
 int log (int ,char*,int ) ;
 struct evdns_request* mm_calloc (int,int) ;
 int mm_free (struct evdns_request*) ;
 int nameserver_probe_callback ;
 struct request* request_new (int ,struct evdns_request*,int ,char*,int ,int ,struct nameserver* const) ;
 int request_submit (struct request*) ;
 int request_trans_id_set (struct request*,int ) ;
 int transaction_id_pick (int ) ;

__attribute__((used)) static void
nameserver_send_probe(struct nameserver *const ns) {
 struct evdns_request *handle;
 struct request *req;
 char addrbuf[128];



 ASSERT_LOCKED(ns->base);
 log(EVDNS_LOG_DEBUG, "Sending probe to %s",
     evutil_format_sockaddr_port_(
      (struct sockaddr *)&ns->address,
      addrbuf, sizeof(addrbuf)));
 handle = mm_calloc(1, sizeof(*handle));
 if (!handle) return;
 req = request_new(ns->base, handle, TYPE_A, "google.com", DNS_QUERY_NO_SEARCH, nameserver_probe_callback, ns);
 if (!req) {
  mm_free(handle);
  return;
 }
 ns->probe_request = handle;

 request_trans_id_set(req, transaction_id_pick(ns->base));
 req->ns = ns;
 request_submit(req);
}
