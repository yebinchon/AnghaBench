
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xml_data {int num_keys; int ds; int cdigest; int cdigtype; int calgo; int ctag; } ;


 int xml_append_bio (int ,int ) ;
 int xml_append_str (int ,char*) ;

__attribute__((used)) static void
xml_append_ds(struct xml_data* data)
{

 xml_append_str(data->ds, ". IN DS ");
 xml_append_bio(data->ds, data->ctag);
 xml_append_str(data->ds, " ");
 xml_append_bio(data->ds, data->calgo);
 xml_append_str(data->ds, " ");
 xml_append_bio(data->ds, data->cdigtype);
 xml_append_str(data->ds, " ");
 xml_append_bio(data->ds, data->cdigest);
 xml_append_str(data->ds, "\n");
 data->num_keys++;
}
