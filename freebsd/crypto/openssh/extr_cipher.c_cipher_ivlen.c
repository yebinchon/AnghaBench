
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_int ;
struct sshcipher {scalar_t__ iv_len; int flags; scalar_t__ block_size; } ;


 int CFLAG_CHACHAPOLY ;

u_int
cipher_ivlen(const struct sshcipher *c)
{




 return (c->iv_len != 0 || (c->flags & CFLAG_CHACHAPOLY) != 0) ?
     c->iv_len : c->block_size;
}
