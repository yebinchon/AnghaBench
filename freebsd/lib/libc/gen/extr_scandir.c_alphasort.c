
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dirent {int d_name; } ;


 int strcoll (int ,int ) ;

int
alphasort(const struct dirent **d1, const struct dirent **d2)
{

 return (strcoll((*d1)->d_name, (*d2)->d_name));
}
