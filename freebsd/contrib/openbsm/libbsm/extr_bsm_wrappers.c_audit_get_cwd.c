
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int A_GETCWD ;
 int auditon (int ,char*,size_t) ;

int
audit_get_cwd(char *path, size_t sz)
{

 return (auditon(A_GETCWD, path, sz));
}
