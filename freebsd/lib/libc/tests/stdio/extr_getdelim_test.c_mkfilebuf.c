
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int _reader ;
 int * fropen (size_t*,int ) ;
 size_t* malloc (int) ;

__attribute__((used)) static FILE *
mkfilebuf(void)
{
 size_t *offp;

 offp = malloc(sizeof(*offp));
 *offp = 0;
 return (fropen(offp, _reader));
}
