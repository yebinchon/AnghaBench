
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct _7z_substream_info {int digests; int digestsDefined; int unpackSizes; } ;


 int free (int ) ;

__attribute__((used)) static void
free_SubStreamsInfo(struct _7z_substream_info *ss)
{
 free(ss->unpackSizes);
 free(ss->digestsDefined);
 free(ss->digests);
}
