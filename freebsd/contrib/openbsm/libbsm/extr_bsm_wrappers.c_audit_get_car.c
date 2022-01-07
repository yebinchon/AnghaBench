
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int A_GETCAR ;
 int auditon (int ,char*,size_t) ;

int
audit_get_car(char *path, size_t sz)
{

 return (auditon(A_GETCAR, path, sz));
}
