
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;



__attribute__((used)) static void
archive_le16enc(void *pp, uint16_t u)
{
 unsigned char *p = (unsigned char *)pp;

 p[0] = u & 0xff;
 p[1] = (u >> 8) & 0xff;
}
