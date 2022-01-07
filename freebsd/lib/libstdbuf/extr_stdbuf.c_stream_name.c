
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int abort () ;
 int * stderr ;
 int * stdin ;
 int * stdout ;

__attribute__((used)) static const char *
stream_name(FILE *s)
{

 if (s == stdin)
  return "stdin";
 if (s == stdout)
  return "stdout";
 if (s == stderr)
  return "stderr";

 abort();
}
