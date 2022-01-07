
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int LPCWSTR ;


 int WSAGetLastError () ;
 int stub_error (char*,int ,int ) ;

__attribute__((used)) static void
attempt_resync (LPCWSTR huh, int s)
{
  stub_error (L"lost synchronization with host attempting %s.  Error %d", huh, WSAGetLastError ());
}
