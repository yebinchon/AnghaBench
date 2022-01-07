
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct http_client {int * hread; } ;


 char* httpread_hdr_line_get (int *,char const*) ;

char * http_client_get_hdr_line(struct http_client *c, const char *tag)
{
 if (c->hread == ((void*)0))
  return ((void*)0);
 return httpread_hdr_line_get(c->hread, tag);
}
