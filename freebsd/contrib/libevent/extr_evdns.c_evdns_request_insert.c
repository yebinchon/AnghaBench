
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request {struct request* prev; struct request* next; int base; } ;


 int ASSERT_LOCKED (int ) ;
 int ASSERT_VALID_REQUEST (struct request*) ;

__attribute__((used)) static void
evdns_request_insert(struct request *req, struct request **head) {
 ASSERT_LOCKED(req->base);
 ASSERT_VALID_REQUEST(req);
 if (!*head) {
  *head = req;
  req->next = req->prev = req;
  return;
 }

 req->prev = (*head)->prev;
 req->prev->next = req;
 req->next = *head;
 (*head)->prev = req;
}
