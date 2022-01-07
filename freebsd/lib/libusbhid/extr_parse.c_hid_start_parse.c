
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct hid_data {int kindset; int reportid; scalar_t__ end; scalar_t__ p; scalar_t__ start; } ;
typedef TYPE_1__* report_desc_t ;
typedef struct hid_data* hid_data_t ;
struct TYPE_3__ {scalar_t__ size; scalar_t__ data; } ;


 struct hid_data* malloc (int) ;
 int memset (struct hid_data*,int ,int) ;

hid_data_t
hid_start_parse(report_desc_t d, int kindset, int id)
{
 struct hid_data *s;

 s = malloc(sizeof *s);
 memset(s, 0, sizeof *s);
 s->start = s->p = d->data;
 s->end = d->data + d->size;
 s->kindset = kindset;
 s->reportid = id;
 return (s);
}
