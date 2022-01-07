
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static unsigned int
i2(const void *p_)
{
 const unsigned char *p = p_;
 return (p[0] | (p[1] << 8));
}
