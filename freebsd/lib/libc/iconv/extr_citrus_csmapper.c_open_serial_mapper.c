
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct _citrus_mapper_area {int dummy; } ;
struct _citrus_mapper {int dummy; } ;
typedef int buf ;


 int PATH_MAX ;
 int _mapper_open_direct (struct _citrus_mapper_area*,struct _citrus_mapper**,char*,char*) ;
 int snprintf (char*,int,char*,char const*,char const*,char const*,char const*) ;

__attribute__((used)) static __inline int
open_serial_mapper(struct _citrus_mapper_area *__restrict ma,
    struct _citrus_mapper * __restrict * __restrict rcm,
    const char *src, const char *pivot, const char *dst)
{
 char buf[PATH_MAX];

 snprintf(buf, sizeof(buf), "%s/%s,%s/%s", src, pivot, pivot, dst);

 return (_mapper_open_direct(ma, rcm, "mapper_serial", buf));
}
