
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ heim_base_atomic_type ;


 int HEIMDAL_MUTEX_lock (int *) ;
 int HEIMDAL_MUTEX_unlock (int *) ;
 int _heim_base_mutex ;

__attribute__((used)) static inline heim_base_atomic_type
heim_base_atomic_inc(heim_base_atomic_type *x)
{
    heim_base_atomic_type t;
    HEIMDAL_MUTEX_lock(&_heim_base_mutex);
    t = ++(*x);
    HEIMDAL_MUTEX_unlock(&_heim_base_mutex);
    return t;
}
