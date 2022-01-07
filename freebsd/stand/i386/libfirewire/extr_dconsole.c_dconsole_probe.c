
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct console {int c_flags; } ;


 int C_ACTIVEIN ;
 int C_ACTIVEOUT ;
 int C_PRESENTIN ;
 int C_PRESENTOUT ;
 int dconsole_init (int ) ;

__attribute__((used)) static void
dconsole_probe(struct console *cp)
{

    cp->c_flags |= (C_PRESENTIN | C_PRESENTOUT);




}
