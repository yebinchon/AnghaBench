
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int isc_result_t ;
typedef int FILE ;


 int _S_IREAD ;
 int _S_IWRITE ;
 int isc_file_openuniquemode (char*,int,int **) ;

isc_result_t
isc_file_openunique(char *templet, FILE **fp) {
 int mode = _S_IREAD | _S_IWRITE;
 return (isc_file_openuniquemode(templet, mode, fp));
}
