
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ggd_connection {int c_sendfd; int c_recvfd; } ;



__attribute__((used)) static int
connection_ready(struct ggd_connection *conn)
{

 return (conn->c_sendfd != -1 && conn->c_recvfd != -1);
}
