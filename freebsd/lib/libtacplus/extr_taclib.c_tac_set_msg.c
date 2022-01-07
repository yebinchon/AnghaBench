
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tac_handle {int user_msg; } ;


 int save_str (struct tac_handle*,int *,char const*,int ) ;
 int strlen (char const*) ;

int
tac_set_msg(struct tac_handle *h, const char *msg)
{
 return save_str(h, &h->user_msg, msg, msg != ((void*)0) ? strlen(msg) : 0);
}
