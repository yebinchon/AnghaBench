
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int LONGEST ;


 int DEPRECATED_REGISTER_RAW_SIZE (int) ;
 int MAX_REGISTER_SIZE ;
 int NUM_PSEUDO_REGS ;
 int NUM_REGS ;
 char* REGISTER_NAME (int) ;
 int deprecated_read_register_gen (int,unsigned char*) ;
 int fprintf_unfiltered (int ,char*,...) ;
 int gdb_stdlog ;
 int paddr_d (int ) ;
 int paddr_nz (int ) ;
 int read_register (int) ;

__attribute__((used)) static void
debug_print_register (const char * func, int regno)
{
  fprintf_unfiltered (gdb_stdlog, "%s ", func);
  if (regno >= 0 && regno < NUM_REGS + NUM_PSEUDO_REGS
      && REGISTER_NAME (regno) != ((void*)0) && REGISTER_NAME (regno)[0] != '\0')
    fprintf_unfiltered (gdb_stdlog, "(%s)", REGISTER_NAME (regno));
  else
    fprintf_unfiltered (gdb_stdlog, "(%d)", regno);
  if (regno >= 0)
    {
      int i;
      unsigned char buf[MAX_REGISTER_SIZE];
      deprecated_read_register_gen (regno, buf);
      fprintf_unfiltered (gdb_stdlog, " = ");
      for (i = 0; i < DEPRECATED_REGISTER_RAW_SIZE (regno); i++)
 {
   fprintf_unfiltered (gdb_stdlog, "%02x", buf[i]);
 }
      if (DEPRECATED_REGISTER_RAW_SIZE (regno) <= sizeof (LONGEST))
 {
   fprintf_unfiltered (gdb_stdlog, " 0x%s %s",
         paddr_nz (read_register (regno)),
         paddr_d (read_register (regno)));
 }
    }
  fprintf_unfiltered (gdb_stdlog, "\n");
}
