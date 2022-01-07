
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zone_dataset_head {int dummy; } ;
typedef struct zone_dataset_head zone_dataset_t ;


 struct zone_dataset_head* LIST_FIRST (struct zone_dataset_head*) ;
 int LIST_REMOVE (struct zone_dataset_head*,int ) ;
 int M_ZONES ;
 int free (struct zone_dataset_head*,int ) ;
 int zd_next ;

__attribute__((used)) static void
zone_destroy(void *arg)
{
 struct zone_dataset_head *head;
 zone_dataset_t *zd;

 head = arg;
        while ((zd = LIST_FIRST(head)) != ((void*)0)) {
                LIST_REMOVE(zd, zd_next);
                free(zd, M_ZONES);
        }
        free(head, M_ZONES);
}
