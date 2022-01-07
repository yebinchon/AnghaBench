
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dirent {int d_name; } ;


 int strcmp (int ,int ) ;

__attribute__((used)) static int
opendir_compar(const void *p1, const void *p2)
{

 return (strcmp((*(const struct dirent * const *)p1)->d_name,
     (*(const struct dirent * const *)p2)->d_name));
}
