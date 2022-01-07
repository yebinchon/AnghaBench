
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct terminate_state {int gotclosecb; } ;
struct evhttp_connection {int dummy; } ;



__attribute__((used)) static void
terminate_chunked_close_cb(struct evhttp_connection *evcon, void *arg)
{
 struct terminate_state *state = arg;
 state->gotclosecb = 1;
}
