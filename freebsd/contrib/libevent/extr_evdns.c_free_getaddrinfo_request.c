
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evdns_getaddrinfo_request {int timeout; struct evdns_getaddrinfo_request* cname_result; scalar_t__ pending_result; } ;


 int event_del (int *) ;
 int evutil_freeaddrinfo (scalar_t__) ;
 int mm_free (struct evdns_getaddrinfo_request*) ;

__attribute__((used)) static void
free_getaddrinfo_request(struct evdns_getaddrinfo_request *data)
{


 if (data->pending_result)
  evutil_freeaddrinfo(data->pending_result);
 if (data->cname_result)
  mm_free(data->cname_result);
 event_del(&data->timeout);
 mm_free(data);
 return;
}
