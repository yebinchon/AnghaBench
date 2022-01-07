
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;


typedef int time_t ;
struct cleanup {int dummy; } ;
typedef scalar_t__ file_ptr ;
typedef int bfd_vma ;
typedef scalar_t__ bfd_size_type ;
struct TYPE_17__ {TYPE_2__* sections; } ;
typedef TYPE_1__ bfd ;
struct TYPE_18__ {struct TYPE_18__* next; } ;
typedef TYPE_2__ asection ;


 int QUIT ;
 int SEC_LOAD ;
 int WRITESIZE ;
 int bfd_check_format (TYPE_1__*,int ) ;
 char* bfd_errmsg (int ) ;
 int bfd_get_error () ;
 int bfd_get_section_contents (TYPE_1__*,TYPE_2__*,char*,scalar_t__,int) ;
 int bfd_get_section_flags (TYPE_1__*,TYPE_2__*) ;
 int bfd_get_section_name (TYPE_1__*,TYPE_2__*) ;
 scalar_t__ bfd_get_section_size (TYPE_2__*) ;
 int bfd_get_section_vma (TYPE_1__*,TYPE_2__*) ;
 int bfd_get_start_address (TYPE_1__*) ;
 int bfd_object ;
 TYPE_1__* bfd_openr (char*,int ) ;
 int clear_symtab_users () ;
 int do_cleanups (struct cleanup*) ;
 int e7000_desc ;
 int errno ;
 int error (char*,char*,...) ;
 TYPE_1__* exec_bfd ;
 int expect (char*) ;
 int expect_prompt () ;
 int fprintf_unfiltered (int ,char*,int ) ;
 int gdb_flush (int ) ;
 int gdb_stderr ;
 int gdb_stdout ;
 int generic_load (char*,int) ;
 char* get_exec_file (int) ;
 int gnutarget ;
 int inferior_ptid ;
 scalar_t__ isspace (char) ;
 struct cleanup* make_cleanup_bfd_close (TYPE_1__*) ;
 int min (scalar_t__,int ) ;
 int null_ptid ;
 int paddr_nz (int) ;
 int paddr_u (scalar_t__) ;
 int perror_with_name (char*) ;
 int printf_filtered (char*,int ,int ,int ) ;
 int printf_unfiltered (char*,...) ;
 int puts_e7000debug (char*) ;
 int remote_timeout ;
 int report_transfer_performance (unsigned long,int ,int ) ;
 int safe_strerror (int ) ;
 scalar_t__ serial_write (int ,char*,int) ;
 int strlen (char*) ;
 scalar_t__ strncmp (char*,char*,int ) ;
 int time (int *) ;
 int timeout ;
 int using_tcp ;
 int write_e7000 (char*) ;
 int write_pc (int) ;

__attribute__((used)) static void
e7000_load (char *args, int from_tty)
{
  struct cleanup *old_chain;
  asection *section;
  bfd *pbfd;
  bfd_vma entry;

  char buf[2 + 4 + 4 + 0x1000];
  char *filename;
  int quiet;
  int nostart;
  time_t start_time, end_time;
  unsigned long data_count;
  int oldtimeout = timeout;

  timeout = remote_timeout;



  if (!using_tcp)
    {
      generic_load (args, from_tty);
      return;
    }


  buf[0] = 'D';
  buf[1] = 'T';
  quiet = 0;
  nostart = 0;
  filename = ((void*)0);

  while (*args != '\000')
    {
      char *arg;

      while (isspace (*args))
 args++;

      arg = args;

      while ((*args != '\000') && !isspace (*args))
 args++;

      if (*args != '\000')
 *args++ = '\000';

      if (*arg != '-')
 filename = arg;
      else if (strncmp (arg, "-quiet", strlen (arg)) == 0)
 quiet = 1;
      else if (strncmp (arg, "-nostart", strlen (arg)) == 0)
 nostart = 1;
      else
 error ("unknown option `%s'", arg);
    }

  if (!filename)
    filename = get_exec_file (1);

  pbfd = bfd_openr (filename, gnutarget);
  if (pbfd == ((void*)0))
    {
      perror_with_name (filename);
      return;
    }
  old_chain = make_cleanup_bfd_close (pbfd);

  if (!bfd_check_format (pbfd, bfd_object))
    error ("\"%s\" is not an object file: %s", filename,
    bfd_errmsg (bfd_get_error ()));

  start_time = time (((void*)0));
  data_count = 0;

  puts_e7000debug ("mw\r");

  expect ("\nOK");

  for (section = pbfd->sections; section; section = section->next)
    {
      if (bfd_get_section_flags (pbfd, section) & SEC_LOAD)
 {
   bfd_vma section_address;
   bfd_size_type section_size;
   file_ptr fptr;

   section_address = bfd_get_section_vma (pbfd, section);
   section_size = bfd_get_section_size (section);

   if (!quiet)
     printf_filtered ("[Loading section %s at 0x%s (%s bytes)]\n",
        bfd_get_section_name (pbfd, section),
        paddr_nz (section_address),
        paddr_u (section_size));

   fptr = 0;

   data_count += section_size;

   while (section_size > 0)
     {
       int count;
       static char inds[] = "|/-\\";
       static int k = 0;

       QUIT;

       count = min (section_size, 0x1000);

       buf[2] = section_address >> 24;
       buf[3] = section_address >> 16;
       buf[4] = section_address >> 8;
       buf[5] = section_address;

       buf[6] = count >> 24;
       buf[7] = count >> 16;
       buf[8] = count >> 8;
       buf[9] = count;

       bfd_get_section_contents (pbfd, section, buf + 10, fptr, count);

       if (serial_write (e7000_desc, buf, count + 10))
  fprintf_unfiltered (gdb_stderr,
        "e7000_load: serial_write failed: %s\n",
        safe_strerror (errno));

       expect ("OK");

       if (!quiet)
  {
    printf_unfiltered ("\r%c", inds[k++ % 4]);
    gdb_flush (gdb_stdout);
  }

       section_address += count;
       fptr += count;
       section_size -= count;
     }
 }
    }

  write_e7000 ("ED");

  expect_prompt ();

  end_time = time (((void*)0));



  if (exec_bfd)
    write_pc (bfd_get_start_address (exec_bfd));

  inferior_ptid = null_ptid;







  clear_symtab_users ();

  if (!nostart)
    {
      entry = bfd_get_start_address (pbfd);

      if (!quiet)
 printf_unfiltered ("[Starting %s at 0x%s]\n", filename, paddr_nz (entry));


    }

  report_transfer_performance (data_count, start_time, end_time);

  do_cleanups (old_chain);
  timeout = oldtimeout;
}
