
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sha384_state {int dummy; } ;


 int sha512_process (struct sha384_state*,unsigned char const*,unsigned long) ;

int sha384_process(struct sha384_state *md, const unsigned char *in,
     unsigned long inlen)
{
 return sha512_process(md, in, inlen);
}
