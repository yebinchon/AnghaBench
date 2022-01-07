
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct console {int dummy; } ;
struct TYPE_3__ {int (* c_probe ) (struct console*) ;} ;


 TYPE_1__** consoles ;
 TYPE_1__* parent ;
 int stub1 (struct console*) ;

__attribute__((used)) static void
spinc_probe(struct console *cp)
{

 if (parent == ((void*)0))
  parent = consoles[0];
 parent->c_probe(cp);
}
