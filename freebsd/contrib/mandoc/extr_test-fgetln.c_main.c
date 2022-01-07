
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fclose (int ) ;
 int * fgetln (int ,size_t*) ;
 int stdin ;

int
main(void)
{
 size_t sz;
 fclose(stdin);
 return(((void*)0) != fgetln(stdin, &sz));
}
