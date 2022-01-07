
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bpf_program {int * bf_insns; scalar_t__ bf_len; } ;


 int free (char*) ;

void
pcap_freecode(struct bpf_program *program)
{
 program->bf_len = 0;
 if (program->bf_insns != ((void*)0)) {
  free((char *)program->bf_insns);
  program->bf_insns = ((void*)0);
 }
}
