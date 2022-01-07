
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int STAILQ_INIT (int *) ;
 int vdisk_list ;

__attribute__((used)) static int
vdisk_init(void)
{
 STAILQ_INIT(&vdisk_list);
 return (0);
}
