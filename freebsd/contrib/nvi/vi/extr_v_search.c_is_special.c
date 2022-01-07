
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ CHAR_T ;


 int L (char*) ;
 scalar_t__ STRCHR (int ,scalar_t__) ;

__attribute__((used)) static int
is_special(CHAR_T c)
{






 return (STRCHR(L(".[*\\^$~"), c) && c);
}
