
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ rfile; int fcode; int * buffer; } ;
typedef TYPE_1__ pcap_t ;


 int fclose (scalar_t__) ;
 int free (int *) ;
 int pcap_freecode (int *) ;
 scalar_t__ stdin ;

void
sf_cleanup(pcap_t *p)
{
 if (p->rfile != stdin)
  (void)fclose(p->rfile);
 if (p->buffer != ((void*)0))
  free(p->buffer);
 pcap_freecode(&p->fcode);
}
