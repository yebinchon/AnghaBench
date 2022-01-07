
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int64_t ;



__attribute__((used)) static int64_t
le4(const unsigned char *p)
{
 return ((p[0] << 16) + (((int64_t)p[1]) << 24) + (p[2] << 0) + (p[3] << 8));
}
