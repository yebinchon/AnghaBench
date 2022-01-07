
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static const char *
result(int r)
{
 static const char * results[] = {
  "OK", "MEMERROR", "IOERROR", "TIMEOUT"
 };
 return results[r & 3];
}
