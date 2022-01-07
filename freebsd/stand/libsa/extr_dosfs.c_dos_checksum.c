
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int bcopy (unsigned char*,char*,int) ;

__attribute__((used)) static int
dos_checksum(unsigned char *name, unsigned char *ext)
{
    int x, i;
    char buf[11];

    bcopy(name, buf, 8);
    bcopy(ext, buf+8, 3);
    x = 0;
    for (i = 0; i < 11; i++) {
 x = ((x & 1) << 7) | (x >> 1);
 x += buf[i];
 x &= 0xff;
    }
    return (x);
}
