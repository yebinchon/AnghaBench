
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FreeAndNull (int ) ;
 int my_blob ;
 int my_list ;

__attribute__((used)) static void
free_cache(void)
{
    FreeAndNull(my_blob);
    FreeAndNull(my_list);
}
