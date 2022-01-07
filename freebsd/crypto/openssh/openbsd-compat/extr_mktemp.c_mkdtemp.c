
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MKTEMP_DIR ;
 int mktemp_internal (char*,int ,int ) ;

char *
mkdtemp(char *path)
{
 int error;

 error = mktemp_internal(path, 0, MKTEMP_DIR);
 return(error ? ((void*)0) : path);
}
