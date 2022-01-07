
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct roff {int format; } ;



int
roff_getformat(const struct roff *r)
{

 return r->format;
}
