
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ssize_t ;
typedef int FILE ;


 int getdelim (char**,size_t*,char,int *) ;

ssize_t
getline(char ** __restrict linep, size_t * __restrict linecapp,
 FILE * __restrict fp)
{

 return (getdelim(linep, linecapp, '\n', fp));
}
