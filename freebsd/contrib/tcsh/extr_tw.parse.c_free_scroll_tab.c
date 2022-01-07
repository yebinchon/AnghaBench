
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scroll_tab_list {struct scroll_tab_list* element; struct scroll_tab_list* next; } ;


 struct scroll_tab_list* scroll_tab ;
 int xfree (struct scroll_tab_list*) ;

__attribute__((used)) static void
free_scroll_tab(void)
{
    struct scroll_tab_list *loop;

    while(scroll_tab) {
 loop = scroll_tab;
 scroll_tab = scroll_tab->next;
 xfree(loop->element);
 xfree(loop);
    }
}
