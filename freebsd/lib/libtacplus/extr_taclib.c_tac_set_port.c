
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tac_handle {int port; } ;


 int save_str (struct tac_handle*,int *,char const*,int ) ;
 int strlen (char const*) ;

int
tac_set_port(struct tac_handle *h, const char *port)
{
 return save_str(h, &h->port, port, port != ((void*)0) ? strlen(port) : 0);
}
