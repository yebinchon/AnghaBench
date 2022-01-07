
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct umutex {int dummy; } ;


 int _thr_umutex_unlock2 (struct umutex*,int ,int *) ;

__attribute__((used)) static inline int
_thr_umutex_unlock(struct umutex *mtx, uint32_t id)
{

 return (_thr_umutex_unlock2(mtx, id, ((void*)0)));
}
