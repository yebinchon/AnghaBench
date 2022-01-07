
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct afile {int fname; } ;


 int strcoll (int ,int ) ;

__attribute__((used)) static int
fcmp(const void *f1, const void *f2)
{
 return (strcoll(((struct afile *)f1)->fname,
     ((struct afile *)f2)->fname));
}
