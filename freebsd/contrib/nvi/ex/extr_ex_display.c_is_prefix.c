
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ len; int bp; } ;
typedef int CHAR_T ;
typedef TYPE_1__ ARGS ;


 int MEMCMP (int ,int *,scalar_t__) ;
 scalar_t__ STRLEN (int *) ;

__attribute__((used)) static int
is_prefix(ARGS *arg, CHAR_T *str)
{
 return arg->len <= STRLEN(str) && !MEMCMP(arg->bp, str, arg->len);
}
