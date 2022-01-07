
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tlsv1_server {int verify_peer; } ;



int tlsv1_server_set_verify(struct tlsv1_server *conn, int verify_peer)
{
 conn->verify_peer = verify_peer;
 return 0;
}
