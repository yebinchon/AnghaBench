
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ n; scalar_t__ nAlloc; char* z; } ;
typedef TYPE_1__ ImportCtx ;


 int shell_out_of_memory () ;
 char* sqlite3_realloc64 (char*,scalar_t__) ;

__attribute__((used)) static void import_append_char(ImportCtx *p, int c){
  if( p->n+1>=p->nAlloc ){
    p->nAlloc += p->nAlloc + 100;
    p->z = sqlite3_realloc64(p->z, p->nAlloc);
    if( p->z==0 ) shell_out_of_memory();
  }
  p->z[p->n++] = (char)c;
}
