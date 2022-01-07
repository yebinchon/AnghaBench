
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SHA512_CTX ;


 int SHA512_Final (unsigned char*,int *) ;

int SHA384_Final(unsigned char *md, SHA512_CTX *c)
{
    return SHA512_Final(md, c);
}
