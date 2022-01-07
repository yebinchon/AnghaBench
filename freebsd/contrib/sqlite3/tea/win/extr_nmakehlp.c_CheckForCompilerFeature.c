
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int msg ;
struct TYPE_12__ {int buffer; int pipe; } ;
struct TYPE_11__ {int cb; int nLength; int hProcess; int hThread; int hStdError; int hStdOutput; int bInheritHandle; int * lpSecurityDescriptor; int hStdInput; int dwFlags; } ;
typedef TYPE_1__ STARTUPINFO ;
typedef TYPE_1__ SECURITY_ATTRIBUTES ;
typedef TYPE_1__ PROCESS_INFORMATION ;
typedef int LPVOID ;
typedef int HANDLE ;
typedef int DWORD ;
typedef int BOOL ;


 int CloseHandle (int ) ;
 int CreatePipe (int *,int *,TYPE_1__*,int ) ;
 int CreateProcess (int *,char*,int *,int *,int ,int ,int *,int *,TYPE_1__*,TYPE_1__*) ;
 int CreateThread (int *,int ,int ,TYPE_5__*,int ,int*) ;
 int DETACHED_PROCESS ;
 int DUPLICATE_CLOSE_SOURCE ;
 int DUPLICATE_SAME_ACCESS ;
 int DuplicateHandle (int ,int ,int ,int *,int ,int ,int) ;
 TYPE_5__ Err ;
 int FALSE ;
 int FORMAT_MESSAGE_FROM_SYSTEM ;
 int FORMAT_MESSAGE_IGNORE_INSERTS ;
 int FORMAT_MESSAGE_MAX_WIDTH_MASK ;
 int FormatMessage (int,long,int,int ,int ,int,int ) ;
 int GetCurrentProcess () ;
 int GetLastError () ;
 int GetStdHandle (int ) ;
 int INFINITE ;
 int INVALID_HANDLE_VALUE ;
 TYPE_5__ Out ;
 int ReadFromPipe ;
 int STARTF_USESTDHANDLES ;
 int STD_ERROR_HANDLE ;
 int TRUE ;
 int WaitForInputIdle (int ,int) ;
 int WaitForMultipleObjects (int,int *,int ,int) ;
 int WaitForSingleObject (int ,int ) ;
 int WriteFile (int ,char*,int ,int*,int *) ;
 int ZeroMemory (TYPE_1__*,int) ;
 int lstrcat (char*,char const*) ;
 int lstrcpy (char*,char*) ;
 int lstrlen (char*) ;
 int snprintf (char*,int,char*,char*,int) ;
 int * strstr (int ,char*) ;

__attribute__((used)) static int
CheckForCompilerFeature(
    const char *option)
{
    STARTUPINFO si;
    PROCESS_INFORMATION pi;
    SECURITY_ATTRIBUTES sa;
    DWORD threadID;
    char msg[300];
    BOOL ok;
    HANDLE hProcess, h, pipeThreads[2];
    char cmdline[100];

    hProcess = GetCurrentProcess();

    ZeroMemory(&pi, sizeof(PROCESS_INFORMATION));
    ZeroMemory(&si, sizeof(STARTUPINFO));
    si.cb = sizeof(STARTUPINFO);
    si.dwFlags = STARTF_USESTDHANDLES;
    si.hStdInput = INVALID_HANDLE_VALUE;

    ZeroMemory(&sa, sizeof(SECURITY_ATTRIBUTES));
    sa.nLength = sizeof(SECURITY_ATTRIBUTES);
    sa.lpSecurityDescriptor = ((void*)0);
    sa.bInheritHandle = FALSE;





    CreatePipe(&Out.pipe, &h, &sa, 0);





    DuplicateHandle(hProcess, h, hProcess, &si.hStdOutput, 0, TRUE,
     DUPLICATE_SAME_ACCESS | DUPLICATE_CLOSE_SOURCE);





    CreatePipe(&Err.pipe, &h, &sa, 0);
    DuplicateHandle(hProcess, h, hProcess, &si.hStdError, 0, TRUE,
     DUPLICATE_SAME_ACCESS | DUPLICATE_CLOSE_SOURCE);





    lstrcpy(cmdline, "cl.exe -nologo -c -TC -Zs -X -Fp.\\_junk.pch ");





    lstrcat(cmdline, option);





    lstrcat(cmdline, " .\\nul");

    ok = CreateProcess(
     ((void*)0),
     cmdline,
     ((void*)0),
     ((void*)0),
     TRUE,
     DETACHED_PROCESS,
     ((void*)0),
     ((void*)0),
     &si,
     &pi);

    if (!ok) {
 DWORD err = GetLastError();
 int chars = snprintf(msg, sizeof(msg) - 1,
  "Tried to launch: \"%s\", but got error [%u]: ", cmdline, err);

 FormatMessage(FORMAT_MESSAGE_FROM_SYSTEM|FORMAT_MESSAGE_IGNORE_INSERTS|
  FORMAT_MESSAGE_MAX_WIDTH_MASK, 0L, err, 0, (LPVOID)&msg[chars],
  (300-chars), 0);
 WriteFile(GetStdHandle(STD_ERROR_HANDLE), msg, lstrlen(msg), &err,((void*)0));
 return 2;
    }





    CloseHandle(si.hStdOutput);
    CloseHandle(si.hStdError);

    WaitForInputIdle(pi.hProcess, 5000);
    CloseHandle(pi.hThread);





    pipeThreads[0] = CreateThread(((void*)0), 0, ReadFromPipe, &Out, 0, &threadID);
    pipeThreads[1] = CreateThread(((void*)0), 0, ReadFromPipe, &Err, 0, &threadID);





    WaitForSingleObject(pi.hProcess, INFINITE);
    CloseHandle(pi.hProcess);





    WaitForMultipleObjects(2, pipeThreads, TRUE, 500);
    CloseHandle(pipeThreads[0]);
    CloseHandle(pipeThreads[1]);






    return !(strstr(Out.buffer, "D4002") != ((void*)0)
             || strstr(Err.buffer, "D4002") != ((void*)0)
             || strstr(Out.buffer, "D9002") != ((void*)0)
             || strstr(Err.buffer, "D9002") != ((void*)0)
             || strstr(Out.buffer, "D2021") != ((void*)0)
             || strstr(Err.buffer, "D2021") != ((void*)0));
}
