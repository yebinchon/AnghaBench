
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef struct mtx* t_Handle ;
struct mtx {int dummy; } ;


 int MTX_DEF ;
 int MTX_DUPOK ;
 int M_NETCOMMSW ;
 int M_NOWAIT ;
 int M_ZERO ;
 struct mtx* malloc (int,int ,int) ;
 int mtx_init (struct mtx*,char*,int *,int) ;

t_Handle
XX_InitSpinlock(void)
{
 struct mtx *m;

 m = malloc(sizeof(*m), M_NETCOMMSW, M_NOWAIT | M_ZERO);
 if (!m)
  return (0);

 mtx_init(m, "NetCommSW Lock", ((void*)0), MTX_DEF | MTX_DUPOK);

 return (m);
}
