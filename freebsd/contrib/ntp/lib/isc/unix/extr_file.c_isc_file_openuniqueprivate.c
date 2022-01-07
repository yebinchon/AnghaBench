
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int isc_result_t ;
typedef int FILE ;


 int S_IRUSR ;
 int S_IWUSR ;
 int isc_file_openuniquemode (char*,int,int **) ;

isc_result_t
isc_file_openuniqueprivate(char *templet, FILE **fp) {
 int mode = S_IWUSR|S_IRUSR;
 return (isc_file_openuniquemode(templet, mode, fp));
}
