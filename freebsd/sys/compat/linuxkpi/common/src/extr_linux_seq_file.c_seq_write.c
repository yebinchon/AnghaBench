
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int buf; } ;


 int sbuf_bcpy (int ,void const*,size_t) ;

int
seq_write(struct seq_file *seq, const void *data, size_t len)
{

 return (sbuf_bcpy(seq->buf, data, len));
}
