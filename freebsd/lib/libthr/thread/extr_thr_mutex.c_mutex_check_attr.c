
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pthread_mutex_attr {scalar_t__ m_type; scalar_t__ m_protocol; } ;


 int EINVAL ;
 scalar_t__ PTHREAD_MUTEX_ERRORCHECK ;
 scalar_t__ PTHREAD_MUTEX_TYPE_MAX ;
 scalar_t__ PTHREAD_PRIO_NONE ;
 scalar_t__ PTHREAD_PRIO_PROTECT ;

__attribute__((used)) static int
mutex_check_attr(const struct pthread_mutex_attr *attr)
{

 if (attr->m_type < PTHREAD_MUTEX_ERRORCHECK ||
     attr->m_type >= PTHREAD_MUTEX_TYPE_MAX)
  return (EINVAL);
 if (attr->m_protocol < PTHREAD_PRIO_NONE ||
     attr->m_protocol > PTHREAD_PRIO_PROTECT)
  return (EINVAL);
 return (0);
}
