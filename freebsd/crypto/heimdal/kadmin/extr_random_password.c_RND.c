
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int krb5_generate_random_block (unsigned char*,int) ;

__attribute__((used)) static int
RND(unsigned char *key, int keylen, int *left)
{
    if(*left == 0){
 krb5_generate_random_block(key, keylen);
 *left = keylen;
    }
    (*left)--;
    return ((unsigned char*)key)[*left];
}
