
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wps_parse_attr {int dev_name_len; int dev_name; int primary_dev_type; int serial_number_len; int serial_number; int model_number_len; int model_number; int model_name_len; int model_name; int manufacturer_len; int manufacturer; } ;
struct wps_device_data {int dummy; } ;


 scalar_t__ wps_process_dev_name (struct wps_device_data*,int ,int ) ;
 scalar_t__ wps_process_manufacturer (struct wps_device_data*,int ,int ) ;
 scalar_t__ wps_process_model_name (struct wps_device_data*,int ,int ) ;
 scalar_t__ wps_process_model_number (struct wps_device_data*,int ,int ) ;
 scalar_t__ wps_process_primary_dev_type (struct wps_device_data*,int ) ;
 scalar_t__ wps_process_serial_number (struct wps_device_data*,int ,int ) ;

int wps_process_device_attrs(struct wps_device_data *dev,
        struct wps_parse_attr *attr)
{
 if (wps_process_manufacturer(dev, attr->manufacturer,
         attr->manufacturer_len) ||
     wps_process_model_name(dev, attr->model_name,
       attr->model_name_len) ||
     wps_process_model_number(dev, attr->model_number,
         attr->model_number_len) ||
     wps_process_serial_number(dev, attr->serial_number,
          attr->serial_number_len) ||
     wps_process_primary_dev_type(dev, attr->primary_dev_type) ||
     wps_process_dev_name(dev, attr->dev_name, attr->dev_name_len))
  return -1;
 return 0;
}
