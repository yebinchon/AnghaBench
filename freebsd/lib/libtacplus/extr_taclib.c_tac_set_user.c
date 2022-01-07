
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tac_handle {int user; } ;


 int save_str (struct tac_handle*,int *,char const*,int ) ;
 int strlen (char const*) ;

int
tac_set_user(struct tac_handle *h, const char *user)
{
 return save_str(h, &h->user, user, user != ((void*)0) ? strlen(user) : 0);
}
