
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct ustar_header {int uh_ustar; scalar_t__ uh_type; int uh_mtime; int uh_group; int uh_owner; int uh_tar_group; int uh_tar_owner; int uh_size; int uh_mode; int uh_filename; } ;


 char const* TAR_GID ;
 char const* TAR_GROUP ;
 char const* TAR_MODE ;
 char const* TAR_UID ;
 char const* TAR_USER ;
 char const* TAR_USTAR ;
 int bzero (struct ustar_header*,int) ;
 int printf (char*,char const*) ;
 int snprintf (int ,int,char*,unsigned long) ;
 int strlcpy (int ,char const*,int) ;
 scalar_t__ textdump_error ;
 scalar_t__ time_second ;
 int ustar_checksum (struct ustar_header*) ;

void
textdump_mkustar(char *block_buffer, const char *filename, u_int size)
{
 struct ustar_header *uhp;





 uhp = (struct ustar_header *)block_buffer;
 bzero(uhp, sizeof(*uhp));
 strlcpy(uhp->uh_filename, filename, sizeof(uhp->uh_filename));
 strlcpy(uhp->uh_mode, TAR_MODE, sizeof(uhp->uh_mode));
 snprintf(uhp->uh_size, sizeof(uhp->uh_size), "%o", size);
 strlcpy(uhp->uh_tar_owner, TAR_UID, sizeof(uhp->uh_tar_owner));
 strlcpy(uhp->uh_tar_group, TAR_GID, sizeof(uhp->uh_tar_group));
 strlcpy(uhp->uh_owner, TAR_USER, sizeof(uhp->uh_owner));
 strlcpy(uhp->uh_group, TAR_GROUP, sizeof(uhp->uh_group));
 snprintf(uhp->uh_mtime, sizeof(uhp->uh_mtime), "%lo",
     (unsigned long)time_second);
 uhp->uh_type = 0;
 strlcpy(uhp->uh_ustar, TAR_USTAR, sizeof(uhp->uh_ustar));
 ustar_checksum(uhp);
}
