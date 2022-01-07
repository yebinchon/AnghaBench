
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ndef_record {scalar_t__ type_length; int * type; } ;


 scalar_t__ os_memcmp (int *,int ,scalar_t__) ;
 scalar_t__ os_strlen (int ) ;
 int wifi_handover_type ;

__attribute__((used)) static int wifi_filter(struct ndef_record *record)
{
 if (record->type == ((void*)0) ||
     record->type_length != os_strlen(wifi_handover_type))
  return 0;
 if (os_memcmp(record->type, wifi_handover_type,
        os_strlen(wifi_handover_type)) != 0)
  return 0;
 return 1;
}
