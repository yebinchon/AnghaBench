
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;


 int EEXIST ;
 int kiconv_add_xlat_table (char const*,char const*,int const*) ;
 int smb_error (char*,int,char const*,char const*) ;

__attribute__((used)) static int
smb_addiconvtbl(const char *to, const char *from, const u_char *tbl)
{
 int error;

 error = kiconv_add_xlat_table(to, from, tbl);
 if (error && error != EEXIST) {
  smb_error("can not setup kernel iconv table (%s:%s)", error,
      from, to);
  return error;
 }
 return 0;
}
