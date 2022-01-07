
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int sock; } ;
typedef TYPE_1__ sock_baton_t ;
typedef int apr_interval_time_t ;


 int apr_socket_timeout_set (int ,int ) ;

__attribute__((used)) static void
sock_timeout_cb(void *baton, apr_interval_time_t interval)
{
  sock_baton_t *b = baton;
  apr_socket_timeout_set(b->sock, interval);
}
