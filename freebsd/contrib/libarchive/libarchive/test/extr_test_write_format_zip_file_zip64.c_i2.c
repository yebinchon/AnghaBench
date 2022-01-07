
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static unsigned i2(const unsigned char *p) { return ((p[0] & 0xff) | ((p[1] & 0xff) << 8)); }
