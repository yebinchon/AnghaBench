
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct arg_val {int size; int argc; int ** argv; } ;


 int fatal (int ,char*) ;
 int net ;
 int ** realloc (int **,int) ;
 int * strdup (char const*) ;

__attribute__((used)) static void
addarg(struct arg_val *argv, const char *val)
{
    if(argv->size <= argv->argc+1) {
 argv->argv = realloc(argv->argv, sizeof(char*) * (argv->size + 10));
 if (argv->argv == ((void*)0))
     fatal (net, "realloc: out of memory");
 argv->size+=10;
    }
    if((argv->argv[argv->argc++] = strdup(val)) == ((void*)0))
 fatal (net, "strdup: out of memory");
    argv->argv[argv->argc] = ((void*)0);
}
