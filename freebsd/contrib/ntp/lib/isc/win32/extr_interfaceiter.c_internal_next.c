
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int isc_result_t ;
struct TYPE_3__ {scalar_t__ numIF; scalar_t__ v4IF; int * pos4; int IFData; int * buf4; } ;
typedef TYPE_1__ isc_interfaceiter_t ;
typedef int INTERFACE_INFO ;


 int ISC_R_NOMORE ;
 int ISC_R_SUCCESS ;
 int memcpy (int *,int *,int) ;
 int memset (int *,int ,int) ;

__attribute__((used)) static isc_result_t
internal_next(isc_interfaceiter_t *iter) {
 if (iter->numIF >= iter->v4IF)
  return (ISC_R_NOMORE);
 if (iter->numIF == 0)
  iter->pos4 = (INTERFACE_INFO *)(iter->buf4 + (iter->v4IF));

 iter->pos4--;
 if (&(iter->pos4) < &(iter->buf4))
  return (ISC_R_NOMORE);

 memset(&(iter->IFData), 0, sizeof(INTERFACE_INFO));
 memcpy(&(iter->IFData), iter->pos4, sizeof(INTERFACE_INFO));
 iter->numIF++;

 return (ISC_R_SUCCESS);
}
