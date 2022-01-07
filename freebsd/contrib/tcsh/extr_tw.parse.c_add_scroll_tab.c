
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scroll_tab_list {struct scroll_tab_list* next; int element; } ;
typedef int Char ;


 int Strsave (int *) ;
 struct scroll_tab_list* scroll_tab ;
 struct scroll_tab_list* xmalloc (int) ;

__attribute__((used)) static void
add_scroll_tab(Char *item)
{
    struct scroll_tab_list *new_scroll;

    new_scroll = xmalloc(sizeof(struct scroll_tab_list));
    new_scroll->element = Strsave(item);
    new_scroll->next = scroll_tab;
    scroll_tab = new_scroll;
}
