
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct auth_xfer {TYPE_1__* task_transfer; } ;
struct auth_chunk {int len; scalar_t__ data; struct auth_chunk* next; } ;
struct TYPE_2__ {struct auth_chunk* chunks_first; } ;
typedef int FILE ;


 int errno ;
 int fclose (int *) ;
 int * fopen (char const*,char*) ;
 int log_err (char*,char const*,...) ;
 int strerror (int ) ;
 int write_out (int *,char*,int ) ;

__attribute__((used)) static int
auth_zone_write_chunks(struct auth_xfer* xfr, const char* fname)
{
 FILE* out;
 struct auth_chunk* p;
 out = fopen(fname, "w");
 if(!out) {
  log_err("could not open %s: %s", fname, strerror(errno));
  return 0;
 }
 for(p = xfr->task_transfer->chunks_first; p ; p = p->next) {
  if(!write_out(out, (char*)p->data, p->len)) {
   log_err("could not write http download to %s", fname);
   fclose(out);
   return 0;
  }
 }
 fclose(out);
 return 1;
}
