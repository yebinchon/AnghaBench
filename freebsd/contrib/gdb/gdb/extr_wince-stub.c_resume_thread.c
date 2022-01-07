
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int HANDLE ;
typedef int DWORD ;


 int GDB_RESUMETHREAD ;
 int ResumeThread (int ) ;
 int gethandle (char*,int,int ) ;
 int putdword (char*,int,int ,int ) ;

__attribute__((used)) static void
resume_thread (int s)
{
  DWORD res;
  HANDLE h = gethandle (L"ResumeThread handle", s, GDB_RESUMETHREAD);
  res = ResumeThread (h);
  putdword (L"ResumeThread result", s, GDB_RESUMETHREAD, res);
}
