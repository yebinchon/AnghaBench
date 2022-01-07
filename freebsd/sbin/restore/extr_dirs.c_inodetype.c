
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inotab {int dummy; } ;
typedef int ino_t ;


 int LEAF ;
 int NODE ;
 struct inotab* inotablookup (int ) ;

int
inodetype(ino_t ino)
{
 struct inotab *itp;

 itp = inotablookup(ino);
 if (itp == ((void*)0))
  return (LEAF);
 return (NODE);
}
