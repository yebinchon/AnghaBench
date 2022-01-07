
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tlist {int dummy; } ;


 int tlist_cmp (struct tlist*,struct tlist*) ;
 struct tlist* tlist_find_by_name (char const*) ;

__attribute__((used)) static int
tlist_cmp_name(const char *tname, const char *qname)
{
    struct tlist *tl = tlist_find_by_name(tname);
    struct tlist *ql = tlist_find_by_name(qname);
    return tlist_cmp(tl, ql);
}
