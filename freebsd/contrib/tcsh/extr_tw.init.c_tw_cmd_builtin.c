
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct biltins {scalar_t__ bname; } ;


 struct biltins const* bfunc ;
 size_t nbfunc ;
 struct biltins const* nt_bfunc ;
 size_t nt_nbfunc ;
 int str2short (scalar_t__) ;
 int tw_cmd_add (int ) ;

__attribute__((used)) static void
tw_cmd_builtin(void)
{
    const struct biltins *bptr;

    for (bptr = bfunc; bptr < &bfunc[nbfunc]; bptr++)
 if (bptr->bname)
     tw_cmd_add(str2short(bptr->bname));





}
