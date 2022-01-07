
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int close (int) ;
 scalar_t__ listen (int,int) ;
 int unix_bind (char*) ;

int
unix_listen(char *path)
{
 int s;
 if ((s = unix_bind(path)) < 0)
  return (-1);

 if (listen(s, 5) < 0) {
  close(s);
  return (-1);
 }
 return (s);
}
