
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct console {int dummy; } ;


 struct console* userboot_comconsp ;

__attribute__((used)) static void
userboot_comcons_probe(struct console *cp)
{







 userboot_comconsp = cp;
}
