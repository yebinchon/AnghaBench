
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evhttp_connection {int ai_family; } ;



void evhttp_connection_set_family(struct evhttp_connection *evcon,
 int family)
{
 evcon->ai_family = family;
}
