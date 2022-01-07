
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct server_request {int n_answer; int n_authority; int n_additional; int port; struct server_reply_item* additional; struct server_reply_item* authority; struct server_reply_item* answer; scalar_t__ response; } ;
struct server_reply_item {int type; int dns_question_class; int ttl; int is_name; int datalen; int * data; struct server_reply_item* name; struct server_reply_item* next; } ;
struct evdns_server_request {int dummy; } ;





 int EVDNS_LOCK (int ) ;
 int EVDNS_UNLOCK (int ) ;
 struct server_request* TO_SERVER_REQUEST (struct evdns_server_request*) ;
 int memcpy (int *,char const*,int) ;
 int mm_free (struct server_reply_item*) ;
 void* mm_malloc (int) ;
 void* mm_strdup (char const*) ;

int
evdns_server_request_add_reply(struct evdns_server_request *req_, int section, const char *name, int type, int class, int ttl, int datalen, int is_name, const char *data)
{
 struct server_request *req = TO_SERVER_REQUEST(req_);
 struct server_reply_item **itemp, *item;
 int *countp;
 int result = -1;

 EVDNS_LOCK(req->port);
 if (req->response)
  goto done;

 switch (section) {
 case 129:
  itemp = &req->answer;
  countp = &req->n_answer;
  break;
 case 128:
  itemp = &req->authority;
  countp = &req->n_authority;
  break;
 case 130:
  itemp = &req->additional;
  countp = &req->n_additional;
  break;
 default:
  goto done;
 }
 while (*itemp) {
  itemp = &((*itemp)->next);
 }
 item = mm_malloc(sizeof(struct server_reply_item));
 if (!item)
  goto done;
 item->next = ((void*)0);
 if (!(item->name = mm_strdup(name))) {
  mm_free(item);
  goto done;
 }
 item->type = type;
 item->dns_question_class = class;
 item->ttl = ttl;
 item->is_name = is_name != 0;
 item->datalen = 0;
 item->data = ((void*)0);
 if (data) {
  if (item->is_name) {
   if (!(item->data = mm_strdup(data))) {
    mm_free(item->name);
    mm_free(item);
    goto done;
   }
   item->datalen = (u16)-1;
  } else {
   if (!(item->data = mm_malloc(datalen))) {
    mm_free(item->name);
    mm_free(item);
    goto done;
   }
   item->datalen = datalen;
   memcpy(item->data, data, datalen);
  }
 }

 *itemp = item;
 ++(*countp);
 result = 0;
done:
 EVDNS_UNLOCK(req->port);
 return result;
}
