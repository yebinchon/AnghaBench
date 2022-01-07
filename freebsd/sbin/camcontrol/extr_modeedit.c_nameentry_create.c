
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pagename {int page; int subpage; int * name; } ;


 int EX_OSERR ;
 int RTRIM (int *) ;
 int SLIST_INSERT_HEAD (int *,struct pagename*,int ) ;
 int err (int ,int *) ;
 int link ;
 struct pagename* malloc (int) ;
 int namelist ;
 int * strdup (char*) ;

__attribute__((used)) static void
nameentry_create(int page, int subpage, char *name) {
 struct pagename *newentry;

 if (page < 0 || subpage < 0 || name == ((void*)0) || name[0] == '\0')
  return;


 if ((newentry = malloc(sizeof(struct pagename))) == ((void*)0) ||
     (newentry->name = strdup(name)) == ((void*)0))
  err(EX_OSERR, ((void*)0));


 RTRIM(newentry->name);

 newentry->page = page;
 newentry->subpage = subpage;
 SLIST_INSERT_HEAD(&namelist, newentry, link);
}
