
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int keyboard_t ;



__attribute__((used)) static int
ckb_get_state(keyboard_t *kbd, void *buf, size_t len)
{

 return (len == 0) ? 1 : -1;
}
