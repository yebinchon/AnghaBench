
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct revoked_serial {scalar_t__ hi; scalar_t__ lo; } ;



__attribute__((used)) static int
serial_cmp(struct revoked_serial *a, struct revoked_serial *b)
{
 if (a->hi >= b->lo && a->lo <= b->hi)
  return 0;
 return a->lo < b->lo ? -1 : 1;
}
