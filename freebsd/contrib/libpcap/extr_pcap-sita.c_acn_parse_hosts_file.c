
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* ip; int chassis; int geoslot; } ;
typedef TYPE_1__ unit_t ;
typedef int FILE ;


 int MAX_CHASSIS ;
 int MAX_GEOSLOT ;
 int MAX_LINE_SIZE ;
 int PCAP_ERRBUF_SIZE ;
 int empty_unit_table () ;
 int errno ;
 int fclose (int *) ;
 scalar_t__ fgets (char*,int,int *) ;
 int * fopen (char*,char*) ;
 scalar_t__ malloc (int) ;
 int pcap_fmt_errmsg_for_errno (char*,int ,int ,char*) ;
 int pcap_snprintf (char*,int ,char*) ;
 int strcpy (char*,char*) ;
 int strcspn (char*,char*) ;
 int strlen (char*) ;
 int strspn (char*,char*) ;
 char* strstr (char*,char*) ;
 TYPE_1__** units ;

int acn_parse_hosts_file(char *errbuf) {
 FILE *fp;
 char buf[MAX_LINE_SIZE];
 char *ptr, *ptr2;
 int pos;
 int chassis, geoslot;
 unit_t *u;

 empty_unit_table();
 if ((fp = fopen("/etc/hosts", "r")) == ((void*)0)) {
  pcap_snprintf(errbuf, PCAP_ERRBUF_SIZE, "Cannot open '/etc/hosts' for reading.");
  return -1;
 }
 while (fgets(buf, MAX_LINE_SIZE-1, fp)) {

  pos = strcspn(buf, "#\n\r");
  *(buf + pos) = '\0';

  pos = strspn(buf, " \t");
  if (pos == strlen(buf))
   continue;
  ptr = buf + pos;

  if ((ptr2 = strstr(ptr, "_I_")) == ((void*)0))
   continue;
  if (*(ptr2 + 4) != '_')
   continue;
  *(ptr + strcspn(ptr, " \t")) = '\0';

  chassis = *(ptr2 + 3) - '0';
  geoslot = *(ptr2 + 5) - '0';
  if (chassis < 1 || chassis > MAX_CHASSIS ||
   geoslot < 1 || geoslot > MAX_GEOSLOT) {
   pcap_snprintf(errbuf, PCAP_ERRBUF_SIZE, "Invalid ACN name in '/etc/hosts'.");
   continue;
  }
  if ((ptr2 = (char *)malloc(strlen(ptr) + 1)) == ((void*)0)) {
   pcap_fmt_errmsg_for_errno(errbuf, PCAP_ERRBUF_SIZE,
       errno, "malloc");
   continue;
  }
  strcpy(ptr2, ptr);
  u = &units[chassis][geoslot];
  u->ip = ptr2;
  u->chassis = chassis;
  u->geoslot = geoslot;
 }
 fclose(fp);
 if (*errbuf) return -1;
 else return 0;
}
