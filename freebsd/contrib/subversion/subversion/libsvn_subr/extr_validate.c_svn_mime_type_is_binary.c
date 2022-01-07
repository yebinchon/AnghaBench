
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_boolean_t ;
typedef int apr_size_t ;


 int strcspn (char const*,char*) ;
 scalar_t__ strncmp (char const*,char*,int const) ;

svn_boolean_t
svn_mime_type_is_binary(const char *mime_type)
{

  const apr_size_t len = strcspn(mime_type, "; ");
  return ((strncmp(mime_type, "text/", 5) != 0)
          && (len != 15 || strncmp(mime_type, "image/x-xbitmap", len) != 0)
          && (len != 15 || strncmp(mime_type, "image/x-xpixmap", len) != 0)
          );
}
