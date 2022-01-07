
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct somemem {int mutexetum; } ;
typedef int krwlock_t ;
typedef int kmutex_t ;
typedef enum locktest { ____Placeholder_locktest } locktest ;


 int IPL_NONE ;
 int KM_SLEEP ;
 int MUTEX_DEFAULT ;
 int RW_READER ;
 int RW_WRITER ;
 struct somemem* kmem_alloc (int,int ) ;
 int kmem_free (struct somemem*,int) ;
 int mutex_destroy (int *) ;
 int mutex_enter (int *) ;
 int mutex_init (int *,int ,int ) ;
 int rw_enter (int *,int ) ;
 int rw_init (int *) ;

void
rumptest_lockme(enum locktest what)
{
 struct somemem *some;
 kmutex_t mtx;
 krwlock_t rw;

 rw_init(&rw);
 mutex_init(&mtx, MUTEX_DEFAULT, IPL_NONE);

 switch (what) {
 case 131:
  mutex_enter(&mtx);
  mutex_enter(&mtx);
  break;
 case 130:
  rw_enter(&rw, RW_WRITER);
  rw_enter(&rw, RW_WRITER);
  break;
 case 129:
  rw_enter(&rw, RW_READER);
  rw_enter(&rw, RW_WRITER);
  break;
 case 128:
  rw_enter(&rw, RW_WRITER);
  rw_enter(&rw, RW_READER);
  break;
 case 133:
  mutex_init(&mtx, MUTEX_DEFAULT, IPL_NONE);
  break;
 case 134:
  mutex_destroy(&mtx);
  mutex_destroy(&mtx);
  break;
 case 135:
  mutex_enter(&mtx);
  mutex_destroy(&mtx);
  break;
 case 132:
  some = kmem_alloc(sizeof(*some), KM_SLEEP);
  mutex_init(&some->mutexetum, MUTEX_DEFAULT, IPL_NONE);
  kmem_free(some, sizeof(*some));
  break;
 }
}
