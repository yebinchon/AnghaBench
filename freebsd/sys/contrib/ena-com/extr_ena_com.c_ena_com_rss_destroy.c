
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ena_com_dev {int rss; } ;


 int ena_com_hash_ctrl_destroy (struct ena_com_dev*) ;
 int ena_com_hash_key_destroy (struct ena_com_dev*) ;
 int ena_com_indirect_table_destroy (struct ena_com_dev*) ;
 int memset (int *,int,int) ;

void ena_com_rss_destroy(struct ena_com_dev *ena_dev)
{
 ena_com_indirect_table_destroy(ena_dev);
 ena_com_hash_key_destroy(ena_dev);
 ena_com_hash_ctrl_destroy(ena_dev);

 memset(&ena_dev->rss, 0x0, sizeof(ena_dev->rss));
}
