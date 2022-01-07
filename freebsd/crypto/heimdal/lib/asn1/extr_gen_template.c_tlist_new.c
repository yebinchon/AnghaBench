
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tlist {int template; int name; } ;


 int ASN1_TAILQ_INIT (int *) ;
 struct tlist* calloc (int,int) ;
 int strdup (char const*) ;

__attribute__((used)) static struct tlist *
tlist_new(const char *name)
{
    struct tlist *tl = calloc(1, sizeof(*tl));
    tl->name = strdup(name);
    ASN1_TAILQ_INIT(&tl->template);
    return tl;
}
