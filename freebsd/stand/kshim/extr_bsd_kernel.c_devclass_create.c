
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int * devclass_t ;


 int M_DEVBUF ;
 int M_WAITOK ;
 int M_ZERO ;
 int * malloc (int,int ,int) ;

__attribute__((used)) static uint8_t
devclass_create(devclass_t *dc_pp)
{
 if (dc_pp == ((void*)0)) {
  return (1);
 }
 if (dc_pp[0] == ((void*)0)) {
  dc_pp[0] = malloc(sizeof(**(dc_pp)),
      M_DEVBUF, M_WAITOK | M_ZERO);

  if (dc_pp[0] == ((void*)0)) {
   return (1);
  }
 }
 return (0);
}
