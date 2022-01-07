
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct sshcipher {int flags; } ;


 int CFLAG_CBC ;

u_int
cipher_is_cbc(const struct sshcipher *c)
{
 return (c->flags & CFLAG_CBC) != 0;
}
