
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fstypelist {int dummy; } ;
struct entry {void* options; void* type; } ;


 int TAILQ_INSERT_TAIL (struct fstypelist*,struct entry*,int ) ;
 struct entry* emalloc (int) ;
 int entries ;
 void* estrdup (char const*) ;

__attribute__((used)) static void
addentry(struct fstypelist *list, const char *type, const char *opts)
{
 struct entry *e;

 e = emalloc(sizeof(struct entry));
 e->type = estrdup(type);
 e->options = estrdup(opts);
 TAILQ_INSERT_TAIL(list, e, entries);
}
