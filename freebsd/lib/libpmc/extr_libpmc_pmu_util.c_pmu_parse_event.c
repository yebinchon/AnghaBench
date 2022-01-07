
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pmu_event_desc {int ped_umask; void* ped_l3_slice; void* ped_l3_thread; void* ped_config1; void* ped_ch_mask; void* ped_fc_mask; void* ped_ldlat; void* ped_frontend; void* ped_edge; void* ped_inv; void* ped_cmask; void* ped_any; void* ped_offcore_rsp; void* ped_period; void* ped_event; } ;


 void* DEFAULT_SAMPLE_COUNT ;
 int ENOMEM ;
 int abort () ;
 int bzero (struct pmu_event_desc*,int) ;
 int free (char*) ;
 char* getenv (char*) ;
 int printf (char*,char*,char*) ;
 scalar_t__ strcmp (char*,char*) ;
 char* strdup (char const*) ;
 char* strsep (char**,char*) ;
 void* strtol (char*,int *,int) ;

__attribute__((used)) static int
pmu_parse_event(struct pmu_event_desc *ped, const char *eventin)
{
 char *event;
 char *kvp, *key, *value, *r;
 char *debug;

 if ((event = strdup(eventin)) == ((void*)0))
  return (ENOMEM);
 r = event;
 bzero(ped, sizeof(*ped));
 ped->ped_period = DEFAULT_SAMPLE_COUNT;
 ped->ped_umask = -1;
 while ((kvp = strsep(&event, ",")) != ((void*)0)) {
  key = strsep(&kvp, "=");
  if (key == ((void*)0))
   abort();
  value = kvp;
  if (strcmp(key, "umask") == 0)
   ped->ped_umask = strtol(value, ((void*)0), 16);
  else if (strcmp(key, "event") == 0)
   ped->ped_event = strtol(value, ((void*)0), 16);
  else if (strcmp(key, "period") == 0)
   ped->ped_period = strtol(value, ((void*)0), 10);
  else if (strcmp(key, "offcore_rsp") == 0)
   ped->ped_offcore_rsp = strtol(value, ((void*)0), 16);
  else if (strcmp(key, "any") == 0)
   ped->ped_any = strtol(value, ((void*)0), 10);
  else if (strcmp(key, "cmask") == 0)
   ped->ped_cmask = strtol(value, ((void*)0), 10);
  else if (strcmp(key, "inv") == 0)
   ped->ped_inv = strtol(value, ((void*)0), 10);
  else if (strcmp(key, "edge") == 0)
   ped->ped_edge = strtol(value, ((void*)0), 10);
  else if (strcmp(key, "frontend") == 0)
   ped->ped_frontend = strtol(value, ((void*)0), 16);
  else if (strcmp(key, "ldlat") == 0)
   ped->ped_ldlat = strtol(value, ((void*)0), 16);
  else if (strcmp(key, "fc_mask") == 0)
   ped->ped_fc_mask = strtol(value, ((void*)0), 16);
  else if (strcmp(key, "ch_mask") == 0)
   ped->ped_ch_mask = strtol(value, ((void*)0), 16);
  else if (strcmp(key, "config1") == 0)
   ped->ped_config1 = strtol(value, ((void*)0), 16);
  else if (strcmp(key, "l3_thread_mask") == 0)
   ped->ped_l3_thread = strtol(value, ((void*)0), 16);
  else if (strcmp(key, "l3_slice_mask") == 0)
   ped->ped_l3_slice = strtol(value, ((void*)0), 16);
  else {
   debug = getenv("PMUDEBUG");
   if (debug != ((void*)0) && strcmp(debug, "true") == 0 && value != ((void*)0))
    printf("unrecognized kvpair: %s:%s\n", key, value);
  }
 }
 free(r);
 return (0);
}
