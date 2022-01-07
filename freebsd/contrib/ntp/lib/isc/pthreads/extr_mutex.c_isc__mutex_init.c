
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int strbuf ;
typedef int isc_result_t ;
typedef int isc_mutex_t ;


 int ENOMEM ;
 int ISC_R_NOMEMORY ;
 int ISC_R_SUCCESS ;
 int ISC_R_UNEXPECTED ;
 int ISC_STRERRORSIZE ;
 int ISC__MUTEX_ATTRS ;
 int UNEXPECTED_ERROR (char const*,unsigned int,char*,char*) ;
 int errno ;
 int isc__strerror (int ,char*,int) ;
 int pthread_mutex_init (int *,int ) ;

isc_result_t
isc__mutex_init(isc_mutex_t *mp, const char *file, unsigned int line) {
 char strbuf[ISC_STRERRORSIZE];
 isc_result_t result = ISC_R_SUCCESS;
 int err;

 err = pthread_mutex_init(mp, ISC__MUTEX_ATTRS);
 if (err == ENOMEM)
  return (ISC_R_NOMEMORY);
 if (err != 0) {
  isc__strerror(errno, strbuf, sizeof(strbuf));
  UNEXPECTED_ERROR(file, line, "isc_mutex_init() failed: %s",
     strbuf);
  result = ISC_R_UNEXPECTED;
 }
 return (result);
}
