
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_depth_t ;


 scalar_t__ strcmp (char const*,char*) ;
 int svn_depth_empty ;
 int svn_depth_exclude ;
 int svn_depth_files ;
 int svn_depth_immediates ;
 int svn_depth_infinity ;
 int svn_depth_unknown ;

svn_depth_t
svn_depth_from_word(const char *word)
{
  if (strcmp(word, "exclude") == 0)
    return svn_depth_exclude;
  if (strcmp(word, "unknown") == 0)
    return svn_depth_unknown;
  if (strcmp(word, "empty") == 0)
    return svn_depth_empty;
  if (strcmp(word, "files") == 0)
    return svn_depth_files;
  if (strcmp(word, "immediates") == 0)
    return svn_depth_immediates;
  if (strcmp(word, "infinity") == 0)
    return svn_depth_infinity;





  return svn_depth_unknown;
}
