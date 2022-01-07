
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * scratch_buffer; } ;
struct worker {TYPE_1__ env; } ;
typedef int sldns_buffer ;
typedef int RES ;


 int load_rrset (int *,int *,struct worker*) ;
 int read_fixed (int *,int *,char*) ;
 scalar_t__ sldns_buffer_begin (int *) ;
 scalar_t__ ssl_read_buf (int *,int *) ;
 scalar_t__ strcmp (char*,char*) ;

__attribute__((used)) static int
load_rrset_cache(RES* ssl, struct worker* worker)
{
 sldns_buffer* buf = worker->env.scratch_buffer;
 if(!read_fixed(ssl, buf, "START_RRSET_CACHE")) return 0;
 while(ssl_read_buf(ssl, buf) &&
  strcmp((char*)sldns_buffer_begin(buf), "END_RRSET_CACHE")!=0) {
  if(!load_rrset(ssl, buf, worker))
   return 0;
 }
 return 1;
}
