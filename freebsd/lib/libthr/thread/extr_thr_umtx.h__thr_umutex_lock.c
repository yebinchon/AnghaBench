
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct umutex {int dummy; } ;


 int __thr_umutex_lock (struct umutex*,int ) ;
 scalar_t__ _thr_umutex_trylock2 (struct umutex*,int ) ;

__attribute__((used)) static inline int
_thr_umutex_lock(struct umutex *mtx, uint32_t id)
{

 if (_thr_umutex_trylock2(mtx, id) == 0)
  return (0);
 return (__thr_umutex_lock(mtx, id));
}
