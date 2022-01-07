
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct rk_strpool {int dummy; } ;
struct list_options {scalar_t__ keys_flag; scalar_t__ timestamp_flag; } ;
typedef int rtbl_t ;
typedef int krb5_kt_cursor ;
struct TYPE_7__ {int length; scalar_t__ data; } ;
struct TYPE_8__ {unsigned char keytype; TYPE_1__ keyvalue; } ;
struct TYPE_10__ {unsigned char vno; TYPE_3__* aliases; int principal; TYPE_2__ keyblock; int timestamp; } ;
typedef TYPE_4__ krb5_keytab_entry ;
typedef int krb5_keytab ;
typedef int krb5_error_code ;
typedef int buf ;
struct TYPE_9__ {unsigned int len; } ;


 int ENOMEM ;
 int FALSE ;
 int RTBL_ALIGN_RIGHT ;
 int context ;
 int free (char*) ;
 int krb5_enctype_to_string (int ,unsigned char,char**) ;
 int krb5_format_time (int ,int ,char*,int,int ) ;
 int krb5_kt_close (int ,int ) ;
 int krb5_kt_end_seq_get (int ,int ,int *) ;
 int krb5_kt_free_entry (int ,TYPE_4__*) ;
 scalar_t__ krb5_kt_next_entry (int ,int ,TYPE_4__*,int *) ;
 int krb5_kt_resolve (int ,char const*,int *) ;
 int krb5_kt_start_seq_get (int ,int ,int *) ;
 int krb5_unparse_name_fixed (int ,int ,char*,int) ;
 int krb5_warn (int ,int,char*,char const*) ;
 int krb5_warnx (int ,char*) ;
 char* malloc (int) ;
 int printf (char*,...) ;
 char* rk_strpoolcollect (struct rk_strpool*) ;
 int rk_strpoolprintf (struct rk_strpool*,char*,char*,char*) ;
 int rtbl_add_column_by_id (int ,int,char*,int ) ;
 int rtbl_add_column_entry_by_id (int ,int,char*) ;
 int rtbl_create () ;
 int rtbl_destroy (int ) ;
 int rtbl_format (int ,int ) ;
 int rtbl_set_separator (int ,char*) ;
 int snprintf (char*,int,char*,unsigned char) ;
 int stdout ;
 scalar_t__ strncasecmp (char const*,char*,int) ;
 int strsep_copy (char const**,char*,char*,int) ;

__attribute__((used)) static int
do_list(struct list_options *opt, const char *keytab_str)
{
    krb5_error_code ret;
    krb5_keytab keytab;
    krb5_keytab_entry entry;
    krb5_kt_cursor cursor;
    rtbl_t table;


    if(strncasecmp(keytab_str, "ANY:", 4) == 0) {
 int flag = 0;
 char buf[1024];
 keytab_str += 4;
 ret = 0;
 while (strsep_copy((const char**)&keytab_str, ",",
      buf, sizeof(buf)) != -1) {
     if(flag)
  printf("\n");
     if(do_list(opt, buf))
  ret = 1;
     flag = 1;
 }
 return ret;
    }

    ret = krb5_kt_resolve(context, keytab_str, &keytab);
    if (ret) {
 krb5_warn(context, ret, "resolving keytab %s", keytab_str);
 return ret;
    }

    ret = krb5_kt_start_seq_get(context, keytab, &cursor);
    if(ret) {
 krb5_warn(context, ret, "krb5_kt_start_seq_get %s", keytab_str);
 krb5_kt_close(context, keytab);
 return ret;
    }

    printf ("%s:\n\n", keytab_str);

    table = rtbl_create();
    rtbl_add_column_by_id(table, 0, "Vno", RTBL_ALIGN_RIGHT);
    rtbl_add_column_by_id(table, 1, "Type", 0);
    rtbl_add_column_by_id(table, 2, "Principal", 0);
    if (opt->timestamp_flag)
 rtbl_add_column_by_id(table, 3, "Date", 0);
    if(opt->keys_flag)
 rtbl_add_column_by_id(table, 4, "Key", 0);
    rtbl_add_column_by_id(table, 5, "Aliases", 0);
    rtbl_set_separator(table, "  ");

    while(krb5_kt_next_entry(context, keytab, &entry, &cursor) == 0){
 char buf[1024], *s;

 snprintf(buf, sizeof(buf), "%d", entry.vno);
 rtbl_add_column_entry_by_id(table, 0, buf);

 ret = krb5_enctype_to_string(context,
         entry.keyblock.keytype, &s);
 if (ret != 0) {
     snprintf(buf, sizeof(buf), "unknown (%d)", entry.keyblock.keytype);
     rtbl_add_column_entry_by_id(table, 1, buf);
 } else {
     rtbl_add_column_entry_by_id(table, 1, s);
     free(s);
 }

 krb5_unparse_name_fixed(context, entry.principal, buf, sizeof(buf));
 rtbl_add_column_entry_by_id(table, 2, buf);

 if (opt->timestamp_flag) {
     krb5_format_time(context, entry.timestamp, buf,
        sizeof(buf), FALSE);
     rtbl_add_column_entry_by_id(table, 3, buf);
 }
 if(opt->keys_flag) {
     size_t i;
     s = malloc(2 * entry.keyblock.keyvalue.length + 1);
     if (s == ((void*)0)) {
  krb5_warnx(context, "malloc failed");
  ret = ENOMEM;
  goto out;
     }
     for(i = 0; i < entry.keyblock.keyvalue.length; i++)
  snprintf(s + 2 * i, 3, "%02x",
    ((unsigned char*)entry.keyblock.keyvalue.data)[i]);
     rtbl_add_column_entry_by_id(table, 4, s);
     free(s);
 }
 if (entry.aliases) {
     unsigned int i;
     struct rk_strpool *p = ((void*)0);

     for (i = 0; i< entry.aliases->len; i++) {
  krb5_unparse_name_fixed(context, entry.principal, buf, sizeof(buf));
  rk_strpoolprintf(p, "%s%s", buf,
     i + 1 < entry.aliases->len ? ", " : "");

     }
     rtbl_add_column_entry_by_id(table, 5, rk_strpoolcollect(p));
 }

 krb5_kt_free_entry(context, &entry);
    }
    ret = krb5_kt_end_seq_get(context, keytab, &cursor);
    rtbl_format(table, stdout);

out:
    rtbl_destroy(table);

    krb5_kt_close(context, keytab);
    return ret;
}
