
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_long ;
typedef int b1 ;
struct TYPE_3__ {void* len; int * bp; } ;
typedef int SCR ;
typedef int CHAR_T ;
typedef TYPE_1__ ARGS ;


 int L (char*) ;
 void* SPRINTF (int *,int,int ,int ) ;
 scalar_t__ opts_set (int *,TYPE_1__**,int *) ;

__attribute__((used)) static int
cl_resize(SCR *sp, size_t lines, size_t columns)
{
 ARGS *argv[2], a, b;
 CHAR_T b1[1024];

 a.bp = b1;
 b.bp = ((void*)0);
 a.len = b.len = 0;
 argv[0] = &a;
 argv[1] = &b;

 a.len = SPRINTF(b1, sizeof(b1), L("lines=%lu"), (u_long)lines);
 if (opts_set(sp, argv, ((void*)0)))
  return (1);
 a.len = SPRINTF(b1, sizeof(b1), L("columns=%lu"), (u_long)columns);
 if (opts_set(sp, argv, ((void*)0)))
  return (1);
 return (0);
}
