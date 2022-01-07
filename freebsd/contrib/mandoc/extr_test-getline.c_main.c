
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fclose (int ) ;
 int getline (char**,size_t*,int ) ;
 int stdin ;

int
main(void)
{
 char *line = ((void*)0);
 size_t linesz = 0;

 fclose(stdin);
 return getline(&line, &linesz, stdin) != -1;
}
