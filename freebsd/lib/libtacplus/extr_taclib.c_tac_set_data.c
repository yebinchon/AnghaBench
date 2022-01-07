
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tac_handle {int data; } ;


 int save_str (struct tac_handle*,int *,void const*,size_t) ;

int
tac_set_data(struct tac_handle *h, const void *data, size_t data_len)
{
 return save_str(h, &h->data, data, data_len);
}
