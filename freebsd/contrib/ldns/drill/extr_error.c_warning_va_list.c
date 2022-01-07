
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int va_list ;


 int fprintf (int ,char*) ;
 int stderr ;
 int vfprintf (int ,char const*,int ) ;

__attribute__((used)) static void
warning_va_list(const char *fmt, va_list args)
{
        fprintf(stderr, "Warning: ");
        vfprintf(stderr, fmt, args);
        fprintf(stderr, "\n");
}
