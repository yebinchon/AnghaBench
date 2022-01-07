
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int st_mode; } ;
typedef int isc_result_t ;


 int ISC_R_INVALIDFILE ;
 int ISC_R_SUCCESS ;
 int S_ISREG (int ) ;
 int errno ;
 int isc__errno2result (int ) ;
 int memset (struct stat*,int ,int) ;
 int stat (char const*,struct stat*) ;

isc_result_t
isc_file_isplainfile(const char *filename) {



 struct stat filestat;
 memset(&filestat,0,sizeof(struct stat));

 if ((stat(filename, &filestat)) == -1)
  return(isc__errno2result(errno));

 if(! S_ISREG(filestat.st_mode))
  return(ISC_R_INVALIDFILE);

 return(ISC_R_SUCCESS);
}
