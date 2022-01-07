
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EXTATTR_NAMESPACE_USER ;
 int XATTR_NOFOLLOW ;
 int extattr_set_link (char const*,int ,char const*,void const*,size_t) ;
 scalar_t__ lsetea (char const*,char const*,void const*,size_t,int ) ;
 scalar_t__ lsetxattr (char const*,char const*,void const*,size_t,int ) ;
 scalar_t__ setxattr (char const*,char const*,void const*,size_t,int ,int ) ;

int
setXattr(const char *path, const char *name, const void *value, size_t size)
{
 (void)path;
 (void)name;
 (void)value;
 (void)size;

 return (0);
}
