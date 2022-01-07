
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pthread_mutex {int m_count; int m_flags; } ;


 int EAGAIN ;
 int EBUSY ;
 int EINVAL ;
 int PMUTEX_TYPE (int ) ;





__attribute__((used)) static int
mutex_self_trylock(struct pthread_mutex *m)
{
 int ret;

 switch (PMUTEX_TYPE(m->m_flags)) {
 case 130:
 case 129:
 case 131:
  ret = EBUSY;
  break;

 case 128:

  if (m->m_count + 1 > 0) {
   m->m_count++;
   ret = 0;
  } else
   ret = EAGAIN;
  break;

 default:

  ret = EINVAL;
 }

 return (ret);
}
