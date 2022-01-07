
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tac_handle {int srvr_msg; } ;


 char* dup_str (struct tac_handle*,int *,int *) ;

char *
tac_get_msg(struct tac_handle *h)
{
 return dup_str(h, &h->srvr_msg, ((void*)0));
}
