
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char* LPVOID ;
typedef int LPTSTR ;


 int FORMAT_MESSAGE_ALLOCATE_BUFFER ;
 int FORMAT_MESSAGE_FROM_SYSTEM ;
 int FORMAT_MESSAGE_IGNORE_INSERTS ;
 int FormatMessage (int,int *,int,int ,int ,int ,int *) ;
 int LANG_NEUTRAL ;
 int MAKELANGID (int ,int ) ;
 int SUBLANG_DEFAULT ;

char *
FormatError(int error) {
 LPVOID lpMsgBuf = ((void*)0);
 FormatMessage(
  FORMAT_MESSAGE_ALLOCATE_BUFFER |
  FORMAT_MESSAGE_FROM_SYSTEM |
  FORMAT_MESSAGE_IGNORE_INSERTS,
  ((void*)0),
  error,

  MAKELANGID(LANG_NEUTRAL, SUBLANG_DEFAULT),
  (LPTSTR) &lpMsgBuf,
  0,
  ((void*)0));

 return (lpMsgBuf);
}
