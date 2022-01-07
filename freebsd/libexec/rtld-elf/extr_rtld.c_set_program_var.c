
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int dbg (char*,char const*,void const**,void const*) ;
 void** get_program_var_addr (char const*,int *) ;

__attribute__((used)) static void
set_program_var(const char *name, const void *value)
{
    const void **addr;

    if ((addr = get_program_var_addr(name, ((void*)0))) != ((void*)0)) {
 dbg("\"%s\": *%p <-- %p", name, addr, value);
 *addr = value;
    }
}
