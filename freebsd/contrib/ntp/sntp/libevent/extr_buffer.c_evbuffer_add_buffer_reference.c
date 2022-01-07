
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evbuffer_chain {int flags; struct evbuffer_chain* next; } ;
struct evbuffer {size_t total_len; size_t n_add_for_cb; struct evbuffer_chain* first; scalar_t__ freeze_end; } ;


 int APPEND_CHAIN_MULTICAST (struct evbuffer*,struct evbuffer*) ;
 int EVBUFFER_FILESEGMENT ;
 int EVBUFFER_LOCK2 (struct evbuffer*,struct evbuffer*) ;
 int EVBUFFER_MULTICAST ;
 int EVBUFFER_SENDFILE ;
 int EVBUFFER_UNLOCK2 (struct evbuffer*,struct evbuffer*) ;
 int evbuffer_free_all_chains (struct evbuffer_chain*) ;
 int evbuffer_invoke_callbacks_ (struct evbuffer*) ;

int
evbuffer_add_buffer_reference(struct evbuffer *outbuf, struct evbuffer *inbuf)
{
 size_t in_total_len, out_total_len;
 struct evbuffer_chain *chain;
 int result = 0;

 EVBUFFER_LOCK2(inbuf, outbuf);
 in_total_len = inbuf->total_len;
 out_total_len = outbuf->total_len;
 chain = inbuf->first;

 if (in_total_len == 0)
  goto done;

 if (outbuf->freeze_end || outbuf == inbuf) {
  result = -1;
  goto done;
 }

 for (; chain; chain = chain->next) {
  if ((chain->flags & (EVBUFFER_FILESEGMENT|EVBUFFER_SENDFILE|EVBUFFER_MULTICAST)) != 0) {

   result = -1;
   goto done;
  }
 }

 if (out_total_len == 0) {


  evbuffer_free_all_chains(outbuf->first);
 }
 APPEND_CHAIN_MULTICAST(outbuf, inbuf);

 outbuf->n_add_for_cb += in_total_len;
 evbuffer_invoke_callbacks_(outbuf);

done:
 EVBUFFER_UNLOCK2(inbuf, outbuf);
 return result;
}
