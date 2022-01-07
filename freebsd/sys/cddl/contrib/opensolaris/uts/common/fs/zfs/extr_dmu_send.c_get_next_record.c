
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct send_block_record {int dummy; } ;
typedef int bqueue_t ;


 struct send_block_record* bqueue_dequeue (int *) ;
 int kmem_free (struct send_block_record*,int) ;

__attribute__((used)) static struct send_block_record *
get_next_record(bqueue_t *bq, struct send_block_record *data)
{
 struct send_block_record *tmp = bqueue_dequeue(bq);
 kmem_free(data, sizeof (*data));
 return (tmp);
}
