
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ DWORD ;
typedef int BOOL ;


 int FALSE ;
 char* FormatError (scalar_t__) ;
 char* GetWSAErrorMessage (scalar_t__) ;
 int TRUE ;
 scalar_t__ WSABASEERR ;
 scalar_t__ _sys_nerr ;
 char* strerror (scalar_t__) ;

char *
NTstrerror(int err, BOOL *bfreebuf) {
 char *retmsg = ((void*)0);


 DWORD errval = err;

 *bfreebuf = FALSE;


 if (errval >= WSABASEERR && errval <= (WSABASEERR + 1015)) {
  retmsg = GetWSAErrorMessage(errval);
  if (retmsg != ((void*)0))
   return (retmsg);
 }




 if (errval > (DWORD) _sys_nerr) {
  *bfreebuf = TRUE;
  return (FormatError(errval));
 } else {
  return (strerror(errval));
 }
}
