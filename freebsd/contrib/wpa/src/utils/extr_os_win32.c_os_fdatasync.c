
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ HANDLE ;
typedef int FILE ;


 int FlushFileBuffers (scalar_t__) ;
 scalar_t__ INVALID_HANDLE_VALUE ;
 int _fileno (int *) ;
 scalar_t__ _get_osfhandle (int ) ;

int os_fdatasync(FILE *stream)
{
 HANDLE h;

 if (stream == ((void*)0))
  return -1;

 h = (HANDLE) _get_osfhandle(_fileno(stream));
 if (h == INVALID_HANDLE_VALUE)
  return -1;

 if (!FlushFileBuffers(h))
  return -1;

 return 0;
}
