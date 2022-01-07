
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mode_t ;
typedef int FILE ;


 int PATH_MAX ;
 int _nc_STRCPY (char*,char*,int ) ;
 int * fdopen (int,char*) ;
 int * fopen (char*,char*) ;
 int mkstemp (char*) ;
 scalar_t__ tmpnam (char*) ;
 scalar_t__ umask (int) ;

__attribute__((used)) static FILE *
open_tempfile(char *filename)
{
    FILE *result = 0;

    _nc_STRCPY(filename, "/tmp/XXXXXX", PATH_MAX);
    if (tmpnam(filename) != 0)
 result = fopen(filename, "w");

    return result;
}
