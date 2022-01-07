
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_6__ ;
typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_10__ {int secbuf; } ;
struct TYPE_8__ {int unit; int part; } ;
struct TYPE_9__ {int * gdev; TYPE_2__ dsk; } ;
struct TYPE_7__ {scalar_t__ ent_lba_start; scalar_t__ ent_lba_end; } ;


 char* BOOTPROG ;
 size_t curent ;
 TYPE_6__* dmadat ;
 scalar_t__ dsk_meta ;
 int freebsd_ufs_uuid ;
 TYPE_5__ gdsk ;
 scalar_t__ geli_havekey (int *) ;
 scalar_t__ geli_passphrase (int *,int ) ;
 int * geli_taste (int ,TYPE_2__*,scalar_t__,char*,int ,size_t) ;
 int gelipw ;
 int gptfind (int *,TYPE_2__*,int ) ;
 int gptread (TYPE_2__*,int ) ;
 TYPE_1__* gpttable ;
 int printf (char*,char*) ;
 int vdev_read ;

__attribute__((used)) static int
gptinit(void)
{

 if (gptread(&gdsk.dsk, dmadat->secbuf) == -1) {
  printf("%s: unable to load GPT\n", BOOTPROG);
  return (-1);
 }
 if (gptfind(&freebsd_ufs_uuid, &gdsk.dsk, gdsk.dsk.part) == -1) {
  printf("%s: no UFS partition was found\n", BOOTPROG);
  return (-1);
 }
 dsk_meta = 0;
 return (0);
}
