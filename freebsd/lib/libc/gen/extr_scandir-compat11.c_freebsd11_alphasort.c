
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct freebsd11_dirent {int d_name; } ;


 int strcoll (int ,int ) ;

int
freebsd11_alphasort(const struct freebsd11_dirent **d1,
    const struct freebsd11_dirent **d2)
{

 return (strcoll((*d1)->d_name, (*d2)->d_name));
}
