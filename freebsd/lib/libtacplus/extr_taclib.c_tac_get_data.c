
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tac_handle {int srvr_data; } ;


 void* dup_str (struct tac_handle*,int *,size_t*) ;

void *
tac_get_data(struct tac_handle *h, size_t *len)
{
 return dup_str(h, &h->srvr_data, len);
}
