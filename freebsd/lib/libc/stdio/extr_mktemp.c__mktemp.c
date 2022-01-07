
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int AT_FDCWD ;
 scalar_t__ _gettemp (int ,char*,int*,int ,int ,int ) ;

char *
_mktemp(char *path)
{
 return (_gettemp(AT_FDCWD, path, (int *)((void*)0), 0, 0, 0) ? path : (char *)((void*)0));
}
