
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 size_t ssh_digest_bytes (int) ;

size_t
ssh_hmac_bytes(int alg)
{
 return ssh_digest_bytes(alg);
}
