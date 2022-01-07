
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tlsv1_server {int write_alerts; } ;



int tlsv1_server_get_write_alerts(struct tlsv1_server *conn)
{
 return conn->write_alerts;
}
