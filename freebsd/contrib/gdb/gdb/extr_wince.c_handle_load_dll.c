
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int gdb_wince_len ;
typedef int dll_buf ;
struct TYPE_5__ {char* lpImageName; int lpBaseOfDll; scalar_t__ fUnicode; } ;
struct TYPE_4__ {TYPE_2__ LoadDll; } ;
struct TYPE_6__ {TYPE_1__ u; } ;
typedef int LPCWSTR ;
typedef TYPE_2__ LOAD_DLL_DEBUG_INFO ;


 int CP_ACP ;
 int MAX_PATH ;
 int WideCharToMultiByte (int ,int ,int ,int,char*,int,int ,int ) ;
 char* alloca (int) ;
 TYPE_3__ current_event ;
 int current_process_handle ;
 int memcpy (char*,char*,int) ;
 int printf_unfiltered (char*,...) ;
 int read_process_memory (int ,char*,char*,int,int*) ;
 char* strchr (char*,char) ;
 char* strrchr (char*,char) ;

__attribute__((used)) static int
handle_load_dll (void *dummy)
{
  LOAD_DLL_DEBUG_INFO *event = &current_event.u.LoadDll;
  char dll_buf[MAX_PATH + 1];
  char *p, *bufp, *imgp, *dll_name, *dll_basename;
  int len;

  dll_buf[0] = dll_buf[sizeof (dll_buf) - 1] = '\0';
  if (!event->lpImageName)
    return 1;

  len = 0;
  for (bufp = dll_buf, imgp = event->lpImageName;
       bufp < dll_buf + sizeof (dll_buf);
       bufp += 16, imgp += 16)
    {
      gdb_wince_len nbytes = 0;
      (void) read_process_memory (current_process_handle,
      imgp, bufp, 16, &nbytes);

      if (!nbytes && bufp == dll_buf)
 return 1;
      for (p = bufp; p < bufp + nbytes; p++)
 {
   len++;
   if (*p == '\0')
     goto out;
   if (event->fUnicode)
     p++;
 }
      if (!nbytes)
 break;
    }

out:
  if (!len)
    return 1;



  dll_name = alloca (len);

  if (!dll_name)
    return 1;

  if (!event->fUnicode)
    memcpy (dll_name, dll_buf, len);
  else
    WideCharToMultiByte (CP_ACP, 0, (LPCWSTR) dll_buf, len,
    dll_name, len, 0, 0);

  while ((p = strchr (dll_name, '\\')))
    *p = '/';




  if (!(dll_basename = strrchr (dll_name, '/')))
    dll_basename = dll_name;
  else
    dll_basename++;







  printf_unfiltered ("%x:%s", event->lpBaseOfDll, dll_name);
  printf_unfiltered ("\n");

  return 1;
}
