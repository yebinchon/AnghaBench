
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
void
foo(void) {
 unsigned long l = 100;
 unsigned long long ll = 100;
 unsigned int i = 100;
 unsigned short s = 100;
 unsigned char c = 1;

 l = ll >> 32;

 i = ll >> 32;
 s = ll >> 48;
 c = ll >> 56;
 s = i >> 16;
 c = i >> 24;
 c = s >> 8;
 (void)&ll;
 (void)&l;
 (void)&i;
 (void)&s;
 (void)&c;
}
