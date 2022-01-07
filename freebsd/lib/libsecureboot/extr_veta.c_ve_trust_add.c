
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int st_mode; } ;


 scalar_t__ S_ISDIR (int ) ;
 scalar_t__ stat (char const*,struct stat*) ;
 int trust_dir_add (char const*) ;
 int trust_file_add (char const*) ;

int
ve_trust_add(const char *trust)
{
 struct stat st;

 if (stat(trust, &st) < 0)
  return (-1);
 if (S_ISDIR(st.st_mode))
  return (trust_dir_add(trust));
 return (trust_file_add(trust));
}
