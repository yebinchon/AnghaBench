
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct target_waitstatus {int dummy; } ;
typedef int s ;
typedef int p ;
typedef int gdb_wince_len ;
struct TYPE_4__ {int nDebugStringLength; int lpDebugStringData; } ;
struct TYPE_5__ {TYPE_1__ DebugString; } ;
struct TYPE_6__ {TYPE_2__ u; } ;
typedef int LPCWSTR ;


 int CP_ACP ;
 int WideCharToMultiByte (int ,int ,int ,int,char*,int,int *,int *) ;
 TYPE_3__ current_event ;
 int current_process_handle ;
 int memset (char*,int ,int) ;
 int read_process_memory (int ,int ,char**,int,int*) ;
 char* strchr (char*,char) ;
 int warning (char*) ;

__attribute__((used)) static void
handle_output_debug_string (struct target_waitstatus *ourstatus)
{
  char p[256];
  char s[255];
  char *q;
  gdb_wince_len nbytes_read;
  gdb_wince_len nbytes = current_event.u.DebugString.nDebugStringLength;

  if (nbytes > 255)
    nbytes = 255;

  memset (p, 0, sizeof (p));
  if (!read_process_memory (current_process_handle,
       current_event.u.DebugString.lpDebugStringData,
       &p, nbytes, &nbytes_read)
      || !*p)
    return;

  memset (s, 0, sizeof (s));
  WideCharToMultiByte (CP_ACP, 0, (LPCWSTR) p, (int) nbytes_read, s,
         sizeof (s) - 1, ((void*)0), ((void*)0));
  q = strchr (s, '\n');
  if (q != ((void*)0))
    {
      *q = '\0';
      if (*--q = '\r')
 *q = '\0';
    }

  warning (s);

  return;
}
