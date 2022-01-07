
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cam_status_entry {int status_code; } ;
typedef int cam_status ;



__attribute__((used)) static int
camstatusentrycomp(const void *key, const void *member)
{
 cam_status status;
 const struct cam_status_entry *table_entry;

 status = *(const cam_status *)key;
 table_entry = (const struct cam_status_entry *)member;

 return (status - table_entry->status_code);
}
