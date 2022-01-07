
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static void
append_id(char **p, int id)
{
 if (id < 0)
  id = 0;
 if (id > 9)
  append_id(p, id / 10);
 *(*p)++ = "0123456789"[id % 10];
}
