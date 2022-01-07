
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int memset (void*,int ,size_t) ;

__attribute__((used)) static int
abd_zero_off_cb(void *buf, size_t size, void *private)
{
 (void) memset(buf, 0, size);
 return (0);
}
