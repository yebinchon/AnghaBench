
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int dummy; } ;


 int perror_reply (int,char*) ;
 int reply (int,char*) ;
 scalar_t__ stat (char*,struct stat*) ;

char *
renamefrom(char *name)
{
 struct stat st;

 if (stat(name, &st) < 0) {
  perror_reply(550, name);
  return ((void*)0);
 }
 reply(350, "File exists, ready for destination name");
 return (name);
}
