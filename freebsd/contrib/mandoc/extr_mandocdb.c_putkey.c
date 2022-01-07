
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct mpage {int dummy; } ;


 int putkeys (struct mpage const*,char*,int ,int ) ;
 int strlen (char*) ;

__attribute__((used)) static void
putkey(const struct mpage *mpage, char *value, uint64_t type)
{
 putkeys(mpage, value, strlen(value), type);
}
