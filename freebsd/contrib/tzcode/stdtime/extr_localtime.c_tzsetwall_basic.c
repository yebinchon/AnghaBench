
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TRUE ;
 int _RWLOCK_RDLOCK (int *) ;
 int _RWLOCK_UNLOCK (int *) ;
 int _RWLOCK_WRLOCK (int *) ;
 int * calloc (int,int) ;
 int gmtload (int *) ;
 int lcl_is_set ;
 int lcl_rwlock ;
 int * lclptr ;
 int settzname () ;
 scalar_t__ tzload (char*,int *,int ) ;

__attribute__((used)) static void
tzsetwall_basic(int rdlocked)
{
 if (!rdlocked)
  _RWLOCK_RDLOCK(&lcl_rwlock);
 if (lcl_is_set < 0) {
  if (!rdlocked)
   _RWLOCK_UNLOCK(&lcl_rwlock);
  return;
 }
 _RWLOCK_UNLOCK(&lcl_rwlock);

 _RWLOCK_WRLOCK(&lcl_rwlock);
 lcl_is_set = -1;
 if (tzload((char *) ((void*)0), lclptr, TRUE) != 0)
  gmtload(lclptr);
 settzname();
 _RWLOCK_UNLOCK(&lcl_rwlock);

 if (rdlocked)
  _RWLOCK_RDLOCK(&lcl_rwlock);
}
