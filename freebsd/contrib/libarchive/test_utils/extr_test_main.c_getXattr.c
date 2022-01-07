
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ ssize_t ;


 int EXTATTR_NAMESPACE_USER ;
 int XATTR_NOFOLLOW ;
 scalar_t__ extattr_get_link (char const*,int ,char const*,void*,scalar_t__) ;
 int free (void*) ;
 scalar_t__ getxattr (char const*,char const*,void*,scalar_t__,int ,int ) ;
 scalar_t__ lgetea (char const*,char const*,void*,scalar_t__) ;
 scalar_t__ lgetxattr (char const*,char const*,void*,scalar_t__) ;
 void* malloc (scalar_t__) ;

void *
getXattr(const char *path, const char *name, size_t *sizep)
{
 void *value = ((void*)0);
 (void)path;
 (void)name;
 *sizep = 0;

 return (value);
}
