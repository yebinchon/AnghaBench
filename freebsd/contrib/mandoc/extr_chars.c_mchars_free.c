
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int mchars ;
 int ohash_delete (int *) ;

void
mchars_free(void)
{

 ohash_delete(&mchars);
}
