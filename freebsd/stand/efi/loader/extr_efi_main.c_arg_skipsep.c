
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char CHAR16 ;



__attribute__((used)) static CHAR16 *
arg_skipsep(CHAR16 *argp)
{

 while (*argp == ' ' || *argp == '\t' || *argp == '\n')
  argp++;
 return (argp);
}
