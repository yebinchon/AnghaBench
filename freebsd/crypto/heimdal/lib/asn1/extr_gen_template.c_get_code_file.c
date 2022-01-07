
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int * codefile ;
 int one_code_file ;
 int * templatefile ;

__attribute__((used)) static FILE *
get_code_file(void)
{
    if (!one_code_file)
 return templatefile;
    return codefile;
}
