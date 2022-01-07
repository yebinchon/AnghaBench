
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int cap_channel_t ;


 int CASPER_NO_UNIQ ;
 int NV_FLAG_NO_UNIQUE ;
 int cap_channel_flags (int const*) ;

__attribute__((used)) static inline int
channel_nvlist_flags(const cap_channel_t *chan)
{
 int flags;

 flags = 0;
 if ((cap_channel_flags(chan) & CASPER_NO_UNIQ) != 0)
  flags |= NV_FLAG_NO_UNIQUE;

 return (flags);
}
