
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int hash_state ;


 int md5_done (int *,int *) ;
 int md5_init (int *) ;
 int md5_process (int *,int const*,size_t const) ;

int md5_vector(size_t num_elem, const u8 *addr[], const size_t *len, u8 *mac)
{
 hash_state md;
 size_t i;

 md5_init(&md);
 for (i = 0; i < num_elem; i++)
  md5_process(&md, addr[i], len[i]);
 md5_done(&md, mac);
 return 0;
}
