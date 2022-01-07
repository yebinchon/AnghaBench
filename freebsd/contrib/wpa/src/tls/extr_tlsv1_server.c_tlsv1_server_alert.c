
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* u8 ;
struct tlsv1_server {void* alert_description; void* alert_level; } ;



void tlsv1_server_alert(struct tlsv1_server *conn, u8 level, u8 description)
{
 conn->alert_level = level;
 conn->alert_description = description;
}
