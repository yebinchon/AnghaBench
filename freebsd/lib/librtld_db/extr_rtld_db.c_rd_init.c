
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rd_err_e ;


 int RD_NOCAPAB ;
 int RD_OK ;
 int RD_VERSION ;
 int _librtld_db_debug ;
 int atoi (char*) ;
 char* getenv (char*) ;

rd_err_e
rd_init(int version)
{
 char *debug = ((void*)0);

 if (version == RD_VERSION) {
  debug = getenv("LIBRTLD_DB_DEBUG");
  _librtld_db_debug = debug ? atoi(debug) : 0;
  return (RD_OK);
 } else
  return (RD_NOCAPAB);
}
