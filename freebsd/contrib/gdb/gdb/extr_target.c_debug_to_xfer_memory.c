
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct target_ops {int dummy; } ;
struct mem_attrib {int dummy; } ;
struct TYPE_2__ {int (* to_xfer_memory ) (scalar_t__,char*,int,int,struct mem_attrib*,struct target_ops*) ;} ;
typedef scalar_t__ CORE_ADDR ;


 TYPE_1__ debug_target ;
 int fprintf_unfiltered (int ,char*,...) ;
 int fputc_unfiltered (char,int ) ;
 int fputs_unfiltered (char*,int ) ;
 int gdb_stdlog ;
 int stub1 (scalar_t__,char*,int,int,struct mem_attrib*,struct target_ops*) ;

__attribute__((used)) static int
debug_to_xfer_memory (CORE_ADDR memaddr, char *myaddr, int len, int write,
        struct mem_attrib *attrib,
        struct target_ops *target)
{
  int retval;

  retval = debug_target.to_xfer_memory (memaddr, myaddr, len, write,
     attrib, target);

  fprintf_unfiltered (gdb_stdlog,
        "target_xfer_memory (0x%x, xxx, %d, %s, xxx) = %d",
        (unsigned int) memaddr,
        len, write ? "write" : "read", retval);



  if (retval > 0)
    {
      int i;

      fputs_unfiltered (", bytes =", gdb_stdlog);
      for (i = 0; i < retval; i++)
 {
   if ((((long) &(myaddr[i])) & 0xf) == 0)
     fprintf_unfiltered (gdb_stdlog, "\n");
   fprintf_unfiltered (gdb_stdlog, " %02x", myaddr[i] & 0xff);
 }
    }

  fputc_unfiltered ('\n', gdb_stdlog);

  return retval;
}
