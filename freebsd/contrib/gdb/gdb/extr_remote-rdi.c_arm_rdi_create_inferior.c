
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ CORE_ADDR ;


 int RDIError_NoError ;
 int RDIInfo_SetTopMem ;
 int RDISet_Cmdline ;
 int TARGET_SIGNAL_DEFAULT ;
 scalar_t__ alloca (int) ;
 int angel_RDI_info (int ,unsigned long*,unsigned long*) ;
 int arm_rdi_kill () ;
 scalar_t__ bfd_get_start_address (scalar_t__) ;
 int error (char*) ;
 scalar_t__ exec_bfd ;
 int inferior_ptid ;
 int init_wait_for_inferior () ;
 int insert_breakpoints () ;
 int pid_to_ptid (int) ;
 int printf_filtered (char*,unsigned long) ;
 int proceed (scalar_t__,int ,int ) ;
 unsigned long rdi_error_message (int) ;
 int remove_breakpoints () ;
 int strcat (char*,char*) ;
 int strlen (char*) ;
 scalar_t__ strncmp (char*,char*,int) ;
 unsigned long strtoul (char*,char**,int ) ;

__attribute__((used)) static void
arm_rdi_create_inferior (char *exec_file, char *args, char **env)
{
  int len, rslt;
  unsigned long arg1, arg2;
  char *arg_buf;
  CORE_ADDR entry_point;

  if (exec_file == 0 || exec_bfd == 0)
    error ("No executable file specified.");

  entry_point = (CORE_ADDR) bfd_get_start_address (exec_bfd);

  arm_rdi_kill ();
  remove_breakpoints ();
  init_wait_for_inferior ();

  len = strlen (exec_file) + 1 + strlen (args) + 1 + 10;
  arg_buf = (char *) alloca (len);
  arg_buf[0] = '\0';
  strcat (arg_buf, exec_file);
  strcat (arg_buf, " ");
  strcat (arg_buf, args);

  inferior_ptid = pid_to_ptid (42);
  insert_breakpoints ();

  if (env != ((void*)0))
    {
      while (*env)
 {
   if (strncmp (*env, "MEMSIZE=", sizeof ("MEMSIZE=") - 1) == 0)
     {
       unsigned long top_of_memory;
       char *end_of_num;


       top_of_memory = strtoul (*env + sizeof ("MEMSIZE=") - 1,
           &end_of_num, 0);
       printf_filtered ("Setting top-of-memory to 0x%lx\n",
          top_of_memory);

       rslt = angel_RDI_info (RDIInfo_SetTopMem, &top_of_memory, &arg2);
       if (rslt != RDIError_NoError)
  {
    printf_filtered ("RDI_info: %s\n", rdi_error_message (rslt));
  }
     }
   env++;
 }
    }

  arg1 = (unsigned long) arg_buf;
  rslt = angel_RDI_info (RDISet_Cmdline, (unsigned long *) arg_buf, &arg2);
  if (rslt != RDIError_NoError)
    {
      printf_filtered ("RDI_info: %s\n", rdi_error_message (rslt));
    }

  proceed (entry_point, TARGET_SIGNAL_DEFAULT, 0);
}
