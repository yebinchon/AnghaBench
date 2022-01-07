
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int fclose (int *) ;

__attribute__((used)) static void
_endhtent(FILE **hostf)
{
 if (*hostf) {
  (void) fclose(*hostf);
  *hostf = ((void*)0);
 }
}
