
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int isc_result_t ;
typedef int FILE ;


 int S_IRGRP ;
 int S_IROTH ;
 int S_IRUSR ;
 int S_IWGRP ;
 int S_IWOTH ;
 int S_IWUSR ;
 int isc_file_openuniquemode (char*,int,int **) ;

isc_result_t
isc_file_openunique(char *templet, FILE **fp) {
 int mode = S_IWUSR|S_IRUSR|S_IRGRP|S_IWGRP|S_IROTH|S_IWOTH;
 return (isc_file_openuniquemode(templet, mode, fp));
}
