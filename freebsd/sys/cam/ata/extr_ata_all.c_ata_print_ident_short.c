
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ata_params {int revision; int model; } ;
typedef int revision ;
typedef int product ;


 int cam_strvis (char*,int ,int,int) ;
 int printf (char*,char*,char*) ;

void
ata_print_ident_short(struct ata_params *ident_data)
{
 char product[48], revision[16];

 cam_strvis(product, ident_data->model, sizeof(ident_data->model),
     sizeof(product));
 cam_strvis(revision, ident_data->revision, sizeof(ident_data->revision),
     sizeof(revision));
 printf("<%s %s>", product, revision);
}
