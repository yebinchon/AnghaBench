
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct umutex {int m_flags; int m_owner; } ;


 int EPERM ;
 int UMTX_OP_MUTEX_WAKE2 ;
 int UMUTEX_CONTESTED ;
 int UMUTEX_NONCONSISTENT ;
 int UMUTEX_PRIO_INHERIT ;
 int UMUTEX_PRIO_PROTECT ;
 int UMUTEX_RB_NOTRECOV ;
 int UMUTEX_UNOWNED ;
 scalar_t__ __predict_false (int) ;
 int __thr_umutex_unlock (struct umutex*) ;
 int _umtx_op_err (struct umutex*,int ,int,int ,int ) ;
 scalar_t__ atomic_cmpset_rel_32 (int*,int,int ) ;

__attribute__((used)) static inline int
_thr_umutex_unlock2(struct umutex *mtx, uint32_t id, int *defer)
{
 uint32_t flags, owner;
 bool noncst;

 flags = mtx->m_flags;
 noncst = (flags & UMUTEX_NONCONSISTENT) != 0;

 if ((flags & (UMUTEX_PRIO_PROTECT | UMUTEX_PRIO_INHERIT)) != 0) {
  if (atomic_cmpset_rel_32(&mtx->m_owner, id, noncst ?
      UMUTEX_RB_NOTRECOV : UMUTEX_UNOWNED))
   return (0);
  return (__thr_umutex_unlock(mtx));
 }

 do {
  owner = mtx->m_owner;
  if (__predict_false((owner & ~UMUTEX_CONTESTED) != id))
   return (EPERM);
 } while (__predict_false(!atomic_cmpset_rel_32(&mtx->m_owner, owner,
     noncst ? UMUTEX_RB_NOTRECOV : UMUTEX_UNOWNED)));
 if ((owner & UMUTEX_CONTESTED) != 0) {
  if (defer == ((void*)0) || noncst)
   (void)_umtx_op_err(mtx, UMTX_OP_MUTEX_WAKE2,
       flags, 0, 0);
  else
   *defer = 1;
 }
 return (0);
}
