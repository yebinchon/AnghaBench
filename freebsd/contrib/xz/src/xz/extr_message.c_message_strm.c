
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lzma_ret ;


 int ENOMEM ;
 char const* _ (char*) ;
 char const* strerror (int ) ;

extern const char *
message_strm(lzma_ret code)
{
 switch (code) {
 case 133:
  return _("No integrity check; not verifying file integrity");

 case 128:
  return _("Unsupported type of integrity check; "
    "not verifying file integrity");

 case 134:
  return strerror(ENOMEM);

 case 135:
  return _("Memory usage limit reached");

 case 137:
  return _("File format not recognized");

 case 131:
  return _("Unsupported options");

 case 138:
  return _("Compressed data is corrupt");

 case 139:
  return _("Unexpected end of input");

 case 132:
 case 129:
 case 136:
 case 130:



  break;
 }

 return _("Internal error (bug)");
}
