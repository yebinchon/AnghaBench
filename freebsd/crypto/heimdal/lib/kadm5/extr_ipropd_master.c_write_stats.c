
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
typedef int time_t ;
struct sockaddr {int dummy; } ;
typedef int str ;
struct TYPE_4__ {int sa; } ;
struct TYPE_5__ {char* name; int flags; struct TYPE_5__* next; int seen; scalar_t__ version; TYPE_1__ addr; } ;
typedef TYPE_2__ slave ;
typedef int * rtbl_t ;
typedef scalar_t__ krb5_error_code ;
typedef int krb5_context ;
typedef int krb5_address ;
typedef int FILE ;


 int RTBL_ALIGN_RIGHT ;
 int SLAVE_ADDRESS ;
 int SLAVE_F_DEAD ;
 int SLAVE_NAME ;
 int SLAVE_SEEN ;
 int SLAVE_STATUS ;
 int SLAVE_VERSION ;
 int TRUE ;
 int fclose (int *) ;
 int fprintf (int *,char*,...) ;
 scalar_t__ krb5_format_time (int ,int ,char*,int,int ) ;
 int krb5_free_address (int ,int *) ;
 int krb5_print_address (int *,char*,int,int *) ;
 scalar_t__ krb5_sockaddr2address (int ,struct sockaddr*,int *) ;
 int * open_stats (int ) ;
 int rtbl_add_column (int *,int ,int ) ;
 int rtbl_add_column_entry (int *,int ,char*) ;
 int * rtbl_create () ;
 int rtbl_destroy (int *) ;
 int rtbl_format (int *,int *) ;
 int rtbl_set_column_prefix (int *,int ,char*) ;
 int rtbl_set_prefix (int *,char*) ;
 int snprintf (char*,int,char*,unsigned int) ;
 int time (int *) ;

__attribute__((used)) static void
write_stats(krb5_context context, slave *slaves, uint32_t current_version)
{
    char str[100];
    rtbl_t tbl;
    time_t t = time(((void*)0));
    FILE *fp;

    fp = open_stats(context);
    if (fp == ((void*)0))
 return;

    krb5_format_time(context, t, str, sizeof(str), TRUE);
    fprintf(fp, "Status for slaves, last updated: %s\n\n", str);

    fprintf(fp, "Master version: %lu\n\n", (unsigned long)current_version);

    tbl = rtbl_create();
    if (tbl == ((void*)0)) {
 fclose(fp);
 return;
    }

    rtbl_add_column(tbl, SLAVE_NAME, 0);
    rtbl_add_column(tbl, SLAVE_ADDRESS, 0);
    rtbl_add_column(tbl, SLAVE_VERSION, RTBL_ALIGN_RIGHT);
    rtbl_add_column(tbl, SLAVE_STATUS, 0);
    rtbl_add_column(tbl, SLAVE_SEEN, 0);

    rtbl_set_prefix(tbl, "  ");
    rtbl_set_column_prefix(tbl, SLAVE_NAME, "");

    while (slaves) {
 krb5_address addr;
 krb5_error_code ret;
 rtbl_add_column_entry(tbl, SLAVE_NAME, slaves->name);
 ret = krb5_sockaddr2address (context,
         (struct sockaddr*)&slaves->addr.sa, &addr);
 if(ret == 0) {
     krb5_print_address(&addr, str, sizeof(str), ((void*)0));
     krb5_free_address(context, &addr);
     rtbl_add_column_entry(tbl, SLAVE_ADDRESS, str);
 } else
     rtbl_add_column_entry(tbl, SLAVE_ADDRESS, "<unknown>");

 snprintf(str, sizeof(str), "%u", (unsigned)slaves->version);
 rtbl_add_column_entry(tbl, SLAVE_VERSION, str);

 if (slaves->flags & SLAVE_F_DEAD)
     rtbl_add_column_entry(tbl, SLAVE_STATUS, "Down");
 else
     rtbl_add_column_entry(tbl, SLAVE_STATUS, "Up");

 ret = krb5_format_time(context, slaves->seen, str, sizeof(str), TRUE);
 rtbl_add_column_entry(tbl, SLAVE_SEEN, str);

 slaves = slaves->next;
    }

    rtbl_format(tbl, fp);
    rtbl_destroy(tbl);

    fclose(fp);
}
