
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int search_find () ;
 int search_redraw () ;
 int search_skip ;

__attribute__((used)) static void search_next(void)
{
 search_skip++;
 search_find();
 search_redraw();
}
