
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zvol_state_t ;


 int ENXIO ;
 int SET_ERROR (int ) ;
 int mutex_enter (int *) ;
 int mutex_exit (int *) ;
 int zfsdev_state_lock ;
 int * zvol_minor_lookup (char const*) ;
 int zvol_remove_zv (int *) ;

int
zvol_remove_minor(const char *name)
{
 zvol_state_t *zv;
 int rc;

 mutex_enter(&zfsdev_state_lock);
 if ((zv = zvol_minor_lookup(name)) == ((void*)0)) {
  mutex_exit(&zfsdev_state_lock);
  return (SET_ERROR(ENXIO));
 }
 rc = zvol_remove_zv(zv);
 mutex_exit(&zfsdev_state_lock);
 return (rc);
}
