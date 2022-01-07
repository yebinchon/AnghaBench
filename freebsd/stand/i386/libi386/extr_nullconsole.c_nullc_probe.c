
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct console {int c_flags; } ;


 int C_PRESENTIN ;
 int C_PRESENTOUT ;

__attribute__((used)) static void
nullc_probe(struct console *cp)
{
 cp->c_flags |= (C_PRESENTIN | C_PRESENTOUT);
}
