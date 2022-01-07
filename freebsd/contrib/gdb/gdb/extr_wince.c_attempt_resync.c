
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int LPCSTR ;


 int stub_error (char*,int ) ;

__attribute__((used)) static void
attempt_resync (LPCSTR huh, int s)
{
  stub_error ("lost synchronization with target attempting %s", huh);
}
