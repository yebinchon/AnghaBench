
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef struct sockaddr const sockaddr ;
struct evhttp_connection {scalar_t__ conn_address; } ;



const struct sockaddr*
evhttp_connection_get_addr(struct evhttp_connection *evcon)
{
 return (struct sockaddr *)evcon->conn_address;
}
