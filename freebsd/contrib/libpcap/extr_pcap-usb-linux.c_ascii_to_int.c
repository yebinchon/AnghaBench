
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline int
ascii_to_int(char c)
{
 return c < 'A' ? c- '0': ((c<'a') ? c - 'A' + 10: c-'a'+10);
}
