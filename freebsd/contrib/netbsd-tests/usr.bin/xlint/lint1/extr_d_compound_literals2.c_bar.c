
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct p {int dummy; } ;



struct p *bar(int i)
{
 static struct p q[10];
 return &q[i];
}
