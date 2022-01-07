
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int i2 (unsigned char const*) ;

__attribute__((used)) static unsigned i4(const unsigned char *p) { return (i2(p) | (i2(p + 2) << 16)); }
