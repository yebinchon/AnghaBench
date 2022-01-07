
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tr_realm {int dummy; } ;
typedef int krb5_context ;


 struct tr_realm* append_realm (struct tr_realm*,struct tr_realm*) ;
 int free (struct tr_realm*) ;
 int free_realms (struct tr_realm*) ;
 int krb5_enomem (int ) ;
 struct tr_realm* make_realm (char*) ;
 char* malloc (int) ;
 int memcpy (char*,char const*,int) ;

__attribute__((used)) static int
decode_realms(krb5_context context,
       const char *tr, int length, struct tr_realm **realms)
{
    struct tr_realm *r = ((void*)0);

    char *tmp;
    int quote = 0;
    const char *start = tr;
    int i;

    for(i = 0; i < length; i++){
 if(quote){
     quote = 0;
     continue;
 }
 if(tr[i] == '\\'){
     quote = 1;
     continue;
 }
 if(tr[i] == ','){
     tmp = malloc(tr + i - start + 1);
     if(tmp == ((void*)0))
  return krb5_enomem(context);
     memcpy(tmp, start, tr + i - start);
     tmp[tr + i - start] = '\0';
     r = make_realm(tmp);
     if(r == ((void*)0)){
  free_realms(*realms);
  return krb5_enomem(context);
     }
     *realms = append_realm(*realms, r);
     start = tr + i + 1;
 }
    }
    tmp = malloc(tr + i - start + 1);
    if(tmp == ((void*)0)){
 free(*realms);
 return krb5_enomem(context);
    }
    memcpy(tmp, start, tr + i - start);
    tmp[tr + i - start] = '\0';
    r = make_realm(tmp);
    if(r == ((void*)0)){
 free_realms(*realms);
 return krb5_enomem(context);
    }
    *realms = append_realm(*realms, r);

    return 0;
}
