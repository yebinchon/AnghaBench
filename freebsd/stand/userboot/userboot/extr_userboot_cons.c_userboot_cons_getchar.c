
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CALLBACK (int ) ;
 int getc ;

__attribute__((used)) static int
userboot_cons_getchar()
{

 return (CALLBACK(getc));
}
