
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int dummy; } ;


 scalar_t__ guest ;
 scalar_t__ lstat (char*,struct stat*) ;
 scalar_t__ noguestmod ;
 int perror_reply (int,char*) ;
 int reply (int,char*) ;

char *
renamefrom(char *name)
{
 struct stat st;

 if (guest && noguestmod) {
  reply(550, "Operation not permitted.");
  return (((void*)0));
 }
 if (lstat(name, &st) < 0) {
  perror_reply(550, name);
  return (((void*)0));
 }
 reply(350, "File exists, ready for destination name.");
 return (name);
}
