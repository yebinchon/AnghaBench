
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_11__ {int handle; int status; } ;
struct TYPE_10__ {int handle; } ;
struct TYPE_12__ {TYPE_2__ usocket; TYPE_1__ file; } ;
struct TYPE_13__ {scalar_t__ type; TYPE_3__ sources; } ;
typedef TYPE_4__ isc_entropysource_t ;
struct TYPE_14__ {int sources; } ;
typedef TYPE_5__ isc_entropy_t ;
typedef int fd_set ;


 scalar_t__ ENTROPY_SOURCETYPE_FILE ;
 scalar_t__ ENTROPY_SOURCETYPE_USOCKET ;
 int FD_SET (int,int *) ;
 int FD_ZERO (int *) ;
 TYPE_4__* ISC_LIST_HEAD (int ) ;
 TYPE_4__* ISC_LIST_NEXT (TYPE_4__*,int ) ;
 int ISC_MAX (int,int) ;






 int link ;
 int select (int,int *,int *,int *,int *) ;

__attribute__((used)) static int
wait_for_sources(isc_entropy_t *ent) {
 isc_entropysource_t *source;
 int maxfd, fd;
 int cc;
 fd_set reads;
 fd_set writes;

 maxfd = -1;
 FD_ZERO(&reads);
 FD_ZERO(&writes);

 source = ISC_LIST_HEAD(ent->sources);
 while (source != ((void*)0)) {
  if (source->type == ENTROPY_SOURCETYPE_FILE) {
   fd = source->sources.file.handle;
   if (fd >= 0) {
    maxfd = ISC_MAX(maxfd, fd);
    FD_SET(fd, &reads);
   }
  }
  if (source->type == ENTROPY_SOURCETYPE_USOCKET) {
   fd = source->sources.usocket.handle;
   if (fd >= 0) {
    switch (source->sources.usocket.status) {
    case 131:
     break;
    case 132:
    case 133:
    case 130:
     maxfd = ISC_MAX(maxfd, fd);
     FD_SET(fd, &writes);
     break;
    case 128:
    case 129:
     maxfd = ISC_MAX(maxfd, fd);
     FD_SET(fd, &reads);
     break;
    }
   }
  }
  source = ISC_LIST_NEXT(source, link);
 }

 if (maxfd < 0)
  return (-1);

 cc = select(maxfd + 1, &reads, &writes, ((void*)0), ((void*)0));
 if (cc < 0)
  return (-1);

 return (cc);
}
