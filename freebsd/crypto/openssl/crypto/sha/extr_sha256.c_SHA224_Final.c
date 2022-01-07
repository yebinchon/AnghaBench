
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SHA256_CTX ;


 int SHA256_Final (unsigned char*,int *) ;

int SHA224_Final(unsigned char *md, SHA256_CTX *c)
{
    return SHA256_Final(md, c);
}
