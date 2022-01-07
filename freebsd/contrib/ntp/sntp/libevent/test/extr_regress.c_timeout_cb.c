
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int evutil_socket_t ;


 int evutil_gettimeofday (int *,int *) ;
 int tcalled ;

__attribute__((used)) static void
timeout_cb(evutil_socket_t fd, short event, void *arg)
{
 evutil_gettimeofday(&tcalled, ((void*)0));
}
