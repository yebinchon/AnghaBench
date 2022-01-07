
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int buf ;


 int print_word (char*) ;
 int snprintf (char*,int,char*,int) ;

__attribute__((used)) static void
print_count(int *count)
{
 char buf[24];

 (void)snprintf(buf, sizeof(buf), "%d.\\&", ++*count);
 print_word(buf);
}
