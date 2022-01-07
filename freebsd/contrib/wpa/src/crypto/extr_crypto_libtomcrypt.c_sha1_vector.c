
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int hash_state ;


 int sha1_done (int *,int *) ;
 int sha1_init (int *) ;
 int sha1_process (int *,int const*,size_t const) ;

int sha1_vector(size_t num_elem, const u8 *addr[], const size_t *len, u8 *mac)
{
 hash_state md;
 size_t i;

 sha1_init(&md);
 for (i = 0; i < num_elem; i++)
  sha1_process(&md, addr[i], len[i]);
 sha1_done(&md, mac);
 return 0;
}
