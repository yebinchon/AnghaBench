
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct futex_queue {unsigned int fq_count; } ;



__attribute__((used)) static unsigned int
futex_queue_count(const struct futex_queue *fq)
{

 return (fq->fq_count);
}
