
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evhttp_connection {int retry_max; } ;



void
evhttp_connection_set_retries(struct evhttp_connection *evcon,
    int retry_max)
{
 evcon->retry_max = retry_max;
}
