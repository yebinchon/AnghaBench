
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inotab {scalar_t__ t_ino; struct inotab* t_next; } ;
typedef scalar_t__ ino_t ;


 size_t INOHASH (scalar_t__) ;
 struct inotab** inotab ;

__attribute__((used)) static struct inotab *
inotablookup(ino_t ino)
{
 struct inotab *itp;

 for (itp = inotab[INOHASH(ino)]; itp != ((void*)0); itp = itp->t_next)
  if (itp->t_ino == ino)
   return (itp);
 return (((void*)0));
}
