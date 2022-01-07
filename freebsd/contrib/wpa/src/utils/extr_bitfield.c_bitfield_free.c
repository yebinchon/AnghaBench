
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bitfield {int dummy; } ;


 int os_free (struct bitfield*) ;

void bitfield_free(struct bitfield *bf)
{
 os_free(bf);
}
