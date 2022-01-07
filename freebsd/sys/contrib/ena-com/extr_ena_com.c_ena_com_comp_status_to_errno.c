
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
 int ENA_COM_INVAL ;
 int ENA_COM_NO_MEM ;
 int ENA_COM_UNSUPPORTED ;
 int ena_trc_err (char*,int) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int ena_com_comp_status_to_errno(u8 comp_status)
{
 if (unlikely(comp_status != 0))
  ena_trc_err("admin command failed[%u]\n", comp_status);

 if (unlikely(comp_status > 129))
  return ENA_COM_INVAL;

 switch (comp_status) {
 case 130:
  return 0;
 case 131:
  return ENA_COM_NO_MEM;
 case 128:
  return ENA_COM_UNSUPPORTED;
 case 134:
 case 132:
 case 133:
 case 129:
  return ENA_COM_INVAL;
 }

 return 0;
}
