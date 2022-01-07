
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ib_portid_t ;


 int printf (char*,char*) ;
 char* vlarb_dump_table_entry (int *,int,int,int) ;

__attribute__((used)) static char *vlarb_dump_table(ib_portid_t * dest, int portnum,
         char *name, int offset, int cap)
{
 char *ret;

 printf("# %s priority VL Arbitration Table:", name);
 ret = vlarb_dump_table_entry(dest, portnum, offset,
         cap < 32 ? cap : 32);
 if (!ret && cap > 32)
  ret = vlarb_dump_table_entry(dest, portnum, offset + 1,
          cap - 32);
 return ret;
}
