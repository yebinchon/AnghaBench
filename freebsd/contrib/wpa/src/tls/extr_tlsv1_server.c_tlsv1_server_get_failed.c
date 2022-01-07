
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tlsv1_server {scalar_t__ state; } ;


 scalar_t__ FAILED ;

int tlsv1_server_get_failed(struct tlsv1_server *conn)
{
 return conn->state == FAILED;
}
