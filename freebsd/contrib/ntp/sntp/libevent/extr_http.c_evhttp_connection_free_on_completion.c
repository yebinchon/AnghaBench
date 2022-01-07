
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evhttp_connection {int flags; } ;


 int EVHTTP_CON_AUTOFREE ;

void
evhttp_connection_free_on_completion(struct evhttp_connection *evcon) {
 evcon->flags |= EVHTTP_CON_AUTOFREE;
}
