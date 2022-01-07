
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int isc_result_t ;


 int TEMPLATE ;
 int isc_file_template (char const*,int ,char*,size_t) ;

isc_result_t
isc_file_mktemplate(const char *path, char *buf, size_t buflen) {
 return (isc_file_template(path, TEMPLATE, buf, buflen));
}
