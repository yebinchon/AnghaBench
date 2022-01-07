
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int O_DIRECTORY ;
 int O_RDONLY ;
 int openat (int,char const*,int) ;

__attribute__((used)) static int
opendirat(int parent, const char *name)
{
 return openat(parent, name, O_RDONLY | O_DIRECTORY);
}
