
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum MAD_FIELDS { ____Placeholder_MAD_FIELDS } MAD_FIELDS ;


 int IBWARN (char*,scalar_t__,int ) ;
 scalar_t__ SUP_MAX ;
 int mad_field_name (int) ;
 scalar_t__ sup_total ;
 int* suppressed_fields ;

__attribute__((used)) static void add_suppressed(enum MAD_FIELDS field)
{
 if (sup_total >= SUP_MAX) {
  IBWARN("Maximum (%d) fields have been suppressed; skipping %s",
         sup_total, mad_field_name(field));
  return;
 }
 suppressed_fields[sup_total++] = field;
}
