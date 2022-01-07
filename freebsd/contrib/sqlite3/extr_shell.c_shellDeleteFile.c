
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;


 int _wunlink (int *) ;
 int sqlite3_free (int *) ;
 int * sqlite3_win32_utf8_to_unicode (char const*) ;
 int unlink (char const*) ;

int shellDeleteFile(const char *zFilename){
  int rc;





  rc = unlink(zFilename);

  return rc;
}
