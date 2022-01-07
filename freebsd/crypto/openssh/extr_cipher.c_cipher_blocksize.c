
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct sshcipher {int block_size; } ;



u_int
cipher_blocksize(const struct sshcipher *c)
{
 return (c->block_size);
}
