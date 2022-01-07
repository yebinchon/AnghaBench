
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scroll_tab_list {int * element; struct scroll_tab_list* next; } ;
struct Strbuf {scalar_t__ len; } ;
typedef int Char ;


 int Strbuf_append (struct Strbuf*,int *) ;
 int Strbuf_terminate (struct Strbuf*) ;
 int cleanup_push (int **,int ) ;
 int cleanup_until (int **) ;
 size_t curchoice ;
 int fcompare ;
 int qsort (int **,int,int,int ) ;
 struct scroll_tab_list* scroll_tab ;
 int xfree ;
 int ** xmalloc (int) ;

__attribute__((used)) static void
choose_scroll_tab(struct Strbuf *exp_name, int cnt)
{
    struct scroll_tab_list *loop;
    int tmp = cnt;
    Char **ptr;

    ptr = xmalloc(sizeof(Char *) * cnt);
    cleanup_push(ptr, xfree);

    for(loop = scroll_tab; loop && (tmp >= 0); loop = loop->next)
 ptr[--tmp] = loop->element;

    qsort(ptr, cnt, sizeof(Char *), fcompare);

    exp_name->len = 0;
    Strbuf_append(exp_name, ptr[curchoice]);
    Strbuf_terminate(exp_name);
    cleanup_until(ptr);
}
