
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cuse_dev_entered {int cmd; struct cuse_dev* cdev; } ;
struct cuse_dev {int dummy; } ;


 struct cuse_dev_entered* cuse_dev_get_entered () ;

struct cuse_dev *
cuse_dev_get_current(int *pcmd)
{
 struct cuse_dev_entered *pe;

 pe = cuse_dev_get_entered();
 if (pe == ((void*)0)) {
  if (pcmd != ((void*)0))
   *pcmd = 0;
  return (((void*)0));
 }
 if (pcmd != ((void*)0))
  *pcmd = pe->cmd;
 return (pe->cdev);
}
