
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ expiration_date; } ;
typedef TYPE_1__ svn_lock_t ;
typedef int svn_boolean_t ;


 scalar_t__ apr_time_now () ;

__attribute__((used)) static svn_boolean_t lock_expired(const svn_lock_t *lock)
{
  return lock->expiration_date && (apr_time_now() > lock->expiration_date);
}
