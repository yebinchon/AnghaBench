
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EBUSY ;
 scalar_t__ SLIST_EMPTY (int *) ;
 int head ;

int
vmmdev_cleanup(void)
{
 int error;

 if (SLIST_EMPTY(&head))
  error = 0;
 else
  error = EBUSY;

 return (error);
}
