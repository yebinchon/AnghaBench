
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int dtdt_flags; scalar_t__ dtdt_kind; int dtdt_size; } ;
typedef TYPE_1__ dtrace_diftype_t ;


 int ASSERT (int) ;
 int DIF_TF_BYREF ;
 scalar_t__ DIF_TYPE_STRING ;
 int MIN (int ,size_t) ;
 int dtrace_bcopy (void*,void*,int ) ;
 int dtrace_strcpy (void*,void*,int ) ;

__attribute__((used)) static void
dtrace_vcopy(void *src, void *dst, dtrace_diftype_t *type, size_t limit)
{
 ASSERT(type->dtdt_flags & DIF_TF_BYREF);

 if (type->dtdt_kind == DIF_TYPE_STRING) {
  dtrace_strcpy(src, dst, MIN(type->dtdt_size, limit));
 } else {
  dtrace_bcopy(src, dst, MIN(type->dtdt_size, limit));
 }
}
