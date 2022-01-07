
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {void* maxstacksize; void* is_vararg; void* numparams; void* lastlinedefined; void* linedefined; } ;
typedef TYPE_1__ Proto ;
typedef int LoadState ;


 void* LoadByte (int *) ;
 int LoadCode (int *,TYPE_1__*) ;
 int LoadConstants (int *,TYPE_1__*) ;
 int LoadDebug (int *,TYPE_1__*) ;
 void* LoadInt (int *) ;
 int LoadUpvalues (int *,TYPE_1__*) ;

__attribute__((used)) static void LoadFunction(LoadState* S, Proto* f)
{
 f->linedefined=LoadInt(S);
 f->lastlinedefined=LoadInt(S);
 f->numparams=LoadByte(S);
 f->is_vararg=LoadByte(S);
 f->maxstacksize=LoadByte(S);
 LoadCode(S,f);
 LoadConstants(S,f);
 LoadUpvalues(S,f);
 LoadDebug(S,f);
}
