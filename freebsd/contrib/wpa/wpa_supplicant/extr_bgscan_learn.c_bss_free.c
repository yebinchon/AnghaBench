
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bgscan_learn_bss {struct bgscan_learn_bss* neigh; } ;


 int os_free (struct bgscan_learn_bss*) ;

__attribute__((used)) static void bss_free(struct bgscan_learn_bss *bss)
{
 os_free(bss->neigh);
 os_free(bss);
}
