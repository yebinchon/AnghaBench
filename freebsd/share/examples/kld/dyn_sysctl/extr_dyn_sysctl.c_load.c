
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int module_t ;


 int CTLFLAG_RD ;
 int CTLFLAG_RW ;
 int CTLTYPE_STRING ;
 int EINVAL ;
 int EOPNOTSUPP ;


 int OID_AUTO ;
 int SYSCTL_ADD_INT (int *,int ,int ,char*,int,int *,int ,char*) ;
 int SYSCTL_ADD_LONG (int *,int ,int ,char*,int,int *,char*) ;
 int * SYSCTL_ADD_NODE (int *,int ,int ,char*,int,int ,char*) ;
 int SYSCTL_ADD_PROC (int *,int ,int ,char*,int,int *,int ,int ,char*,char*) ;
 int * SYSCTL_ADD_ROOT_NODE (int *,int ,char*,int,int ,char*) ;
 int SYSCTL_ADD_STRING (int *,int ,int ,char*,int,int ,int ,char*) ;
 int SYSCTL_CHILDREN (int *) ;
 int SYSCTL_STATIC_CHILDREN (int ) ;
 int _kern ;
 int a ;
 int * a_root ;
 int * a_root1 ;
 int b ;
 int * b_root ;
 int c ;
 int clist ;
 int clist1 ;
 int clist2 ;
 int printf (char*,...) ;
 int sysctl_ctx_free (int *) ;
 int sysctl_ctx_init (int *) ;
 int sysctl_dyn_sysctl_test ;
 int sysctl_remove_oid (int *,int,int) ;

__attribute__((used)) static int
load(module_t mod, int cmd, void *arg)
{
 int error;

 error = 0;
 switch (cmd) {
 case 129:

  printf("Initializing contexts and creating subtrees.\n\n");
  sysctl_ctx_init(&clist);
  sysctl_ctx_init(&clist1);
  sysctl_ctx_init(&clist2);




  printf("TREE		ROOT		  NAME\n");
  a_root = SYSCTL_ADD_ROOT_NODE(&clist,
   OID_AUTO, "dyn_sysctl", CTLFLAG_RW, 0,
   "dyn_sysctl root node");
  a_root = SYSCTL_ADD_ROOT_NODE(&clist1,
   OID_AUTO, "dyn_sysctl", CTLFLAG_RW, 0,
   "dyn_sysctl root node");
  if (a_root == ((void*)0)) {
   printf("SYSCTL_ADD_NODE failed!\n");
   return (EINVAL);
  }
  SYSCTL_ADD_LONG(&clist, SYSCTL_CHILDREN(a_root),
      OID_AUTO, "long_a", CTLFLAG_RW, &a, "just to try");
  SYSCTL_ADD_INT(&clist, SYSCTL_CHILDREN(a_root),
      OID_AUTO, "int_b", CTLFLAG_RW, &b, 0, "just to try 1");
  a_root1 = SYSCTL_ADD_NODE(&clist, SYSCTL_CHILDREN(a_root),
      OID_AUTO, "nextlevel", CTLFLAG_RD, 0, "one level down");
  SYSCTL_ADD_STRING(&clist, SYSCTL_CHILDREN(a_root1),
      OID_AUTO, "string_c", CTLFLAG_RD, c, 0, "just to try 2");
  printf("1. (%p)	/		  dyn_sysctl\n", &clist);


  a_root1 = SYSCTL_ADD_NODE(&clist, SYSCTL_STATIC_CHILDREN(_kern),
      OID_AUTO, "dyn_sysctl", CTLFLAG_RW, 0, "dyn_sysctl root node");
  if (a_root1 == ((void*)0)) {
   printf("SYSCTL_ADD_NODE failed!\n");
   return (EINVAL);
  }
  SYSCTL_ADD_PROC(&clist, SYSCTL_CHILDREN(a_root1),
      OID_AUTO, "procedure", CTLTYPE_STRING | CTLFLAG_RD,
      ((void*)0), 0, sysctl_dyn_sysctl_test, "A",
      "I can be here, too");
  printf("   (%p)	/kern		  dyn_sysctl\n", &clist);


  b_root = SYSCTL_ADD_NODE(&clist1, SYSCTL_CHILDREN(a_root),
      OID_AUTO, "nextlevel", CTLFLAG_RD, 0, "one level down");
  SYSCTL_ADD_STRING(&clist1, SYSCTL_CHILDREN(b_root),
      OID_AUTO, "string_c1", CTLFLAG_RD, c, 0, "just to try 2");
  printf("2. (%p)	/		  dyn_sysctl	(overlapping #1)\n", &clist1);






  b_root=SYSCTL_ADD_NODE(&clist2, SYSCTL_CHILDREN(a_root1),
      OID_AUTO, "bad", CTLFLAG_RW, 0, "dependent node");
  SYSCTL_ADD_STRING(&clist2, SYSCTL_CHILDREN(b_root),
      OID_AUTO, "string_c", CTLFLAG_RD, c, 0, "shouldn't panic");
  printf("3. (%p)	/kern/dyn_sysctl  bad		(WRONG!)\n", &clist2);
  break;
 case 128:
  printf("1. Try to free ctx1 (%p): ", &clist);
  if (sysctl_ctx_free(&clist) != 0)
   printf("failed: expected. Need to remove ctx3 first.\n");
  else
   printf("HELP! sysctl_ctx_free(%p) succeeded. EXPECT PANIC!!!\n", &clist);
  printf("2. Try to free ctx3 (%p): ", &clist2);
  if (sysctl_ctx_free(&clist2) != 0) {
   printf("sysctl_ctx_free(%p) failed!\n", &clist2);

   sysctl_remove_oid(b_root, 1, 1);
   printf("sysctl_remove_oid(%p) succeeded\n", b_root);
  } else
   printf("Ok\n");
  printf("3. Try to free ctx1 (%p) again: ", &clist);
  if (sysctl_ctx_free(&clist) != 0) {
   printf("sysctl_ctx_free(%p) failed!\n", &clist);

   sysctl_remove_oid(a_root1, 1, 1);
   printf("sysctl_remove_oid(%p) succeeded\n", a_root1);
  } else
   printf("Ok\n");
  printf("4. Try to free ctx2 (%p): ", &clist1);
  if (sysctl_ctx_free(&clist1) != 0) {
   printf("sysctl_ctx_free(%p) failed!\n", &clist1);

   sysctl_remove_oid(a_root, 1, 1);
  } else
   printf("Ok\n");
  break;
 default:
  error = EOPNOTSUPP;
  break;
 }
 return (error);
}
