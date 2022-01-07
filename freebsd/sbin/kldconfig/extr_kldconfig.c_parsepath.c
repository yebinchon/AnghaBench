
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pathhead {int dummy; } ;
struct pathentry {int * path; } ;


 int ENOMEM ;
 int TAILQ_INSERT_TAIL (struct pathhead*,struct pathentry*,int ) ;
 int addpath (struct pathhead*,char*,int,int ) ;
 int err (int,char*) ;
 int errno ;
 struct pathentry* malloc (int) ;
 int next ;
 int * strdup (char*) ;
 char* strsep (char**,char*) ;

__attribute__((used)) static void
parsepath(struct pathhead *pathq, char *path, int uniq)
{
 char *p;
 struct pathentry *pe;

 while ((p = strsep(&path, ";")) != ((void*)0))
  if (!uniq) {
   if (((pe = malloc(sizeof(*pe))) == ((void*)0)) ||
       ((pe->path = strdup(p)) == ((void*)0))) {
    errno = ENOMEM;
    err(1, "allocating path element");
   }
   TAILQ_INSERT_TAIL(pathq, pe, next);
  } else {
   addpath(pathq, p, 1, 0);
  }
}
