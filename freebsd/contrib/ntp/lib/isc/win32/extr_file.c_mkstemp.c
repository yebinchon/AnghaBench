
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ gettemp (char*,int*) ;

__attribute__((used)) static int
mkstemp(char *path) {
 int fd;

 return (gettemp(path, &fd) ? fd : -1);
}
