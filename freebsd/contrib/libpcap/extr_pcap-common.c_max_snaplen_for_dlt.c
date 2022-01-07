
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;


 int DLT_DBUS ;
 int MAXIMUM_SNAPLEN ;

u_int
max_snaplen_for_dlt(int dlt)
{
 if (dlt == DLT_DBUS)
  return 134217728;
 else
  return MAXIMUM_SNAPLEN;
}
