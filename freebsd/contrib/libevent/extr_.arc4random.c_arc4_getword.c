
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int arc4_getbyte () ;

__attribute__((used)) static inline unsigned int
arc4_getword(void)
{
 unsigned int val;

 val = arc4_getbyte() << 24;
 val |= arc4_getbyte() << 16;
 val |= arc4_getbyte() << 8;
 val |= arc4_getbyte();

 return val;
}
