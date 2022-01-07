
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int64_t ;



__attribute__((used)) static int64_t
be4(const unsigned char *p)
{
 return ((((int64_t)p[0]) << 24) + (p[1] << 16) + (p[2] << 8) + (p[3]));
}
