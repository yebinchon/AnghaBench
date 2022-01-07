
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int id ;
typedef int gdb_wince_id ;
typedef int WCHAR ;
 int MB_ICONERROR ;
 int MessageBoxW (int *,int *,char*,int ) ;
 int close_handle (int) ;
 int continue_debug_event (int) ;
 int create_process (int) ;
 int flag_single_step (int) ;
 int get_thread_context (int) ;
 int read_process_memory (int) ;
 int resume_thread (int) ;
 int set_thread_context (int) ;
 int skip_next_id ;
 scalar_t__ sockread (char*,int,int*,int) ;
 int suspend_thread (int) ;
 int terminate_process (int) ;
 int thread_alive (int) ;
 int wait_for_debug_event (int) ;
 int write_process_memory (int) ;
 int wsprintfW (int *,char*,int) ;

__attribute__((used)) static void
dispatch (int s)
{
  gdb_wince_id id;


  while (sockread (L"Dispatch", s, &id, sizeof (id)) > 0)
    {
      skip_next_id = 1;
      switch (id)
 {
 case 139:
   create_process (s);
   break;
 case 131:
   terminate_process (s);
   break;
 case 129:
   wait_for_debug_event (s);
   break;
 case 138:
   get_thread_context (s);
   break;
 case 135:
   set_thread_context (s);
   break;
 case 137:
   read_process_memory (s);
   break;
 case 128:
   write_process_memory (s);
   break;
 case 130:
   thread_alive (s);
   break;
 case 132:
   suspend_thread (s);
   break;
 case 136:
   resume_thread (s);
   break;
 case 140:
   continue_debug_event (s);
   break;
 case 141:
   close_handle (s);
   break;
 case 133:
   terminate_process (s);
   return;
 case 134:
   flag_single_step (s);
   break;
 default:
   {
     WCHAR buf[80];
     wsprintfW (buf, L"Invalid command id received: %d", id);
     MessageBoxW (((void*)0), buf, L"GDB", MB_ICONERROR);
     skip_next_id = 0;
   }
 }
    }
}
