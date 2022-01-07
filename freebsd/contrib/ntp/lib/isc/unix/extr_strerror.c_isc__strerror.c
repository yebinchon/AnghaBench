
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int isc_once_t ;


 int ISC_ONCE_INIT ;
 scalar_t__ ISC_R_SUCCESS ;
 int LOCK (int *) ;
 int REQUIRE (int ) ;
 int RUNTIME_CHECK (int) ;
 int UNLOCK (int *) ;
 int init_lock ;
 scalar_t__ isc_once_do (int *,int ) ;
 int isc_strerror_lock ;
 int snprintf (char*,size_t,char*,...) ;
 char* strerror (int) ;
 char** sys_errlist ;
 int sys_nerr ;

void
isc__strerror(int num, char *buf, size_t size) {
 unsigned int unum = (unsigned int)num;

 REQUIRE(buf != ((void*)0));

 if (num >= 0 && num < sys_nerr)
  snprintf(buf, size, "%s", sys_errlist[num]);
 else
  snprintf(buf, size, "Unknown error: %u", unum);

}
