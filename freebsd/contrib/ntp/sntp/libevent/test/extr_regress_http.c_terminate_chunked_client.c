
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct terminate_state {int fd; int bev; } ;
typedef int evutil_socket_t ;


 int bufferevent_free (int ) ;
 int evutil_closesocket (int ) ;

__attribute__((used)) static void
terminate_chunked_client(evutil_socket_t fd, short event, void *arg)
{
 struct terminate_state *state = arg;
 bufferevent_free(state->bev);
 evutil_closesocket(state->fd);
}
