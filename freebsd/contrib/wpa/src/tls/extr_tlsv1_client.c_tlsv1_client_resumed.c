
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tlsv1_client {int session_resumed; } ;



int tlsv1_client_resumed(struct tlsv1_client *conn)
{
 return !!conn->session_resumed;
}
