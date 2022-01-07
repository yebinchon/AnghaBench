
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tac_handle {int rem_addr; } ;


 int save_str (struct tac_handle*,int *,char const*,int ) ;
 int strlen (char const*) ;

int
tac_set_rem_addr(struct tac_handle *h, const char *addr)
{
 return save_str(h, &h->rem_addr, addr, addr != ((void*)0) ? strlen(addr) : 0);
}
