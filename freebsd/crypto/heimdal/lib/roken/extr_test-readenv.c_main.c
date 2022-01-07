
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int fn ;


 int MAXPATHLEN ;
 int free_environment (char**) ;
 int make_file (char*,int) ;
 int read_environment (char*,char***) ;
 int s1 ;
 int s2 ;
 int unlink (char*) ;
 int warnx (char*,int) ;
 int write_file (char*,int ) ;

int
main(int argc, char **argv)
{
    char **env = ((void*)0);
    int count = 0;
    char fn[MAXPATHLEN];
    int error = 0;

    make_file(fn, sizeof(fn));

    write_file(fn, s1);
    count = read_environment(fn, &env);
    if(count != 3) {
 warnx("test 1: variable count %d != 3", count);
 error++;
    }

    write_file(fn, s2);
    count = read_environment(fn, &env);
    if(count != 1) {
 warnx("test 2: variable count %d != 1", count);
 error++;
    }

    unlink(fn);
    count = read_environment(fn, &env);
    if(count != 0) {
 warnx("test 3: variable count %d != 0", count);
 error++;
    }
    for(count = 0; env && env[count]; count++);
    if(count != 3) {
 warnx("total variable count %d != 3", count);
 error++;
    }
    free_environment(env);


    return error;
}
