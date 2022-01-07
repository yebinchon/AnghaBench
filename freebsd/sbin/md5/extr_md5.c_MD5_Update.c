
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int MD5_CTX ;


 int MD5Update (int *,unsigned char const*,size_t) ;

__attribute__((used)) static void
MD5_Update(MD5_CTX *c, const unsigned char *data, size_t len)
{
 MD5Update(c, data, len);
}
