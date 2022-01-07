
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int date ;


 int easterodn (int) ;
 int * gdate (int ,int *) ;

date *
easterog(int y, date *dt)
{

 return (gdate(easterodn(y), dt));
}
