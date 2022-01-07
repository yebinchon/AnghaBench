
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int c_keytype; int c_output_name; int c_namelist; } ;
typedef TYPE_1__ con ;


 int conalloc (int ,int ,int ) ;
 int confree (int) ;
 TYPE_1__* fdcon ;

__attribute__((used)) static int
conrecycle(int s)
{
 con *c = &fdcon[s];
 int ret;

 ret = conalloc(c->c_namelist, c->c_output_name, c->c_keytype);
 confree(s);
 return (ret);
}
