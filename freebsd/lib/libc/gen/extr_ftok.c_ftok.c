
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int st_dev; int st_ino; } ;
typedef int key_t ;


 scalar_t__ stat (char const*,struct stat*) ;

key_t
ftok(const char *path, int id)
{
 struct stat st;

 if (stat(path, &st) < 0)
  return (key_t)-1;

 return ((key_t)((unsigned int)id << 24 | (st.st_dev & 0xff) << 16 |
     (st.st_ino & 0xffff)));
}
