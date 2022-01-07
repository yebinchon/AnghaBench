
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sshbuf {int dummy; } ;
typedef int FILE ;


 int fprintf (int *,char*,struct sshbuf*,int ) ;
 int sshbuf_dump_data (int ,int ,int *) ;
 int sshbuf_len (struct sshbuf*) ;
 int sshbuf_ptr (struct sshbuf*) ;

void
sshbuf_dump(struct sshbuf *buf, FILE *f)
{
 fprintf(f, "buffer %p len = %zu\n", buf, sshbuf_len(buf));
 sshbuf_dump_data(sshbuf_ptr(buf), sshbuf_len(buf), f);
}
