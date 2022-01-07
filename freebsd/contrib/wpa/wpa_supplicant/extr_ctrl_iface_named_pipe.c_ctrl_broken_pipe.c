
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int HANDLE ;
typedef scalar_t__ DWORD ;


 scalar_t__ ERROR_BAD_PIPE ;
 scalar_t__ ERROR_BROKEN_PIPE ;
 scalar_t__ GetLastError () ;
 scalar_t__ PeekNamedPipe (int ,int *,int ,int *,int *,int *) ;

__attribute__((used)) static int ctrl_broken_pipe(HANDLE pipe, int used)
{
 DWORD err;

 if (PeekNamedPipe(pipe, ((void*)0), 0, ((void*)0), ((void*)0), ((void*)0)))
  return 0;

 err = GetLastError();
 if (err == ERROR_BROKEN_PIPE || (err == ERROR_BAD_PIPE && used))
  return 1;
 return 0;
}
