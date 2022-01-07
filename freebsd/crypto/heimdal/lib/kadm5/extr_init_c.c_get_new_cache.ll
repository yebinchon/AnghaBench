; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/kadm5/extr_init_c.c_get_new_cache.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/kadm5/extr_init_c.c_get_new_cache.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }

@.str = private unnamed_addr constant [7 x i8] c"kadmin\00", align 1
@FALSE = common dso_local global i32 0, align 4
@KADM5_BAD_PASSWORD = common dso_local global i32 0, align 4
@krb5_cc_type_memory = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i8*, i32*, i8*, i8*, i32*)* @get_new_cache to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_new_cache(i32 %0, i32 %1, i8* %2, i32* %3, i8* %4, i8* %5, i32* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.TYPE_6__, align 4
  %18 = alloca i32*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store i32 %0, i32* %9, align 4
  store i32 %1, i32* %10, align 4
  store i8* %2, i8** %11, align 8
  store i32* %3, i32** %12, align 8
  store i8* %4, i8** %13, align 8
  store i8* %5, i8** %14, align 8
  store i32* %6, i32** %15, align 8
  %21 = load i32, i32* %9, align 4
  %22 = call i32 @krb5_get_init_creds_opt_alloc(i32 %21, i32** %18)
  store i32 %22, i32* %16, align 4
  %23 = load i32, i32* %16, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %7
  %26 = load i32, i32* %16, align 4
  store i32 %26, i32* %8, align 4
  br label %122

27:                                               ; preds = %7
  %28 = load i32, i32* %9, align 4
  %29 = load i32, i32* %9, align 4
  %30 = load i32, i32* %10, align 4
  %31 = call i32 @krb5_principal_get_realm(i32 %29, i32 %30)
  %32 = load i32*, i32** %18, align 8
  %33 = call i32 @krb5_get_init_creds_opt_set_default_flags(i32 %28, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %31, i32* %32)
  %34 = load i32*, i32** %18, align 8
  %35 = load i32, i32* @FALSE, align 4
  %36 = call i32 @krb5_get_init_creds_opt_set_forwardable(i32* %34, i32 %35)
  %37 = load i32*, i32** %18, align 8
  %38 = load i32, i32* @FALSE, align 4
  %39 = call i32 @krb5_get_init_creds_opt_set_proxiable(i32* %37, i32 %38)
  %40 = load i8*, i8** %11, align 8
  %41 = icmp eq i8* %40, null
  br i1 %41, label %42, label %73

42:                                               ; preds = %27
  %43 = load i32*, i32** %12, align 8
  %44 = icmp eq i32* %43, null
  br i1 %44, label %45, label %73

45:                                               ; preds = %42
  %46 = load i8*, i8** %13, align 8
  %47 = icmp eq i8* %46, null
  br i1 %47, label %48, label %51

48:                                               ; preds = %45
  %49 = load i32, i32* %9, align 4
  %50 = call i32 @krb5_kt_default(i32 %49, i32* %20)
  store i32 %50, i32* %16, align 4
  br label %55

51:                                               ; preds = %45
  %52 = load i32, i32* %9, align 4
  %53 = load i8*, i8** %13, align 8
  %54 = call i32 @krb5_kt_resolve(i32 %52, i8* %53, i32* %20)
  store i32 %54, i32* %16, align 4
  br label %55

55:                                               ; preds = %51, %48
  %56 = load i32, i32* %16, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %63

58:                                               ; preds = %55
  %59 = load i32, i32* %9, align 4
  %60 = load i32*, i32** %18, align 8
  %61 = call i32 @krb5_get_init_creds_opt_free(i32 %59, i32* %60)
  %62 = load i32, i32* %16, align 4
  store i32 %62, i32* %8, align 4
  br label %122

63:                                               ; preds = %55
  %64 = load i32, i32* %9, align 4
  %65 = load i32, i32* %10, align 4
  %66 = load i32, i32* %20, align 4
  %67 = load i8*, i8** %14, align 8
  %68 = load i32*, i32** %18, align 8
  %69 = call i32 @krb5_get_init_creds_keytab(i32 %64, %struct.TYPE_6__* %17, i32 %65, i32 %66, i32 0, i8* %67, i32* %68)
  store i32 %69, i32* %16, align 4
  %70 = load i32, i32* %9, align 4
  %71 = load i32, i32* %20, align 4
  %72 = call i32 @krb5_kt_close(i32 %70, i32 %71)
  br label %81

73:                                               ; preds = %42, %27
  %74 = load i32, i32* %9, align 4
  %75 = load i32, i32* %10, align 4
  %76 = load i8*, i8** %11, align 8
  %77 = load i32*, i32** %12, align 8
  %78 = load i8*, i8** %14, align 8
  %79 = load i32*, i32** %18, align 8
  %80 = call i32 @krb5_get_init_creds_password(i32 %74, %struct.TYPE_6__* %17, i32 %75, i8* %76, i32* %77, i32* null, i32 0, i8* %78, i32* %79)
  store i32 %80, i32* %16, align 4
  br label %81

81:                                               ; preds = %73, %63
  %82 = load i32, i32* %9, align 4
  %83 = load i32*, i32** %18, align 8
  %84 = call i32 @krb5_get_init_creds_opt_free(i32 %82, i32* %83)
  %85 = load i32, i32* %16, align 4
  switch i32 %85, label %89 [
    i32 0, label %86
    i32 128, label %87
    i32 130, label %87
    i32 129, label %87
  ]

86:                                               ; preds = %81
  br label %91

87:                                               ; preds = %81, %81, %81
  %88 = load i32, i32* @KADM5_BAD_PASSWORD, align 4
  store i32 %88, i32* %8, align 4
  br label %122

89:                                               ; preds = %81
  %90 = load i32, i32* %16, align 4
  store i32 %90, i32* %8, align 4
  br label %122

91:                                               ; preds = %86
  %92 = load i32, i32* %9, align 4
  %93 = load i32, i32* @krb5_cc_type_memory, align 4
  %94 = call i32 @krb5_cc_new_unique(i32 %92, i32 %93, i32* null, i32* %19)
  store i32 %94, i32* %16, align 4
  %95 = load i32, i32* %16, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %99

97:                                               ; preds = %91
  %98 = load i32, i32* %16, align 4
  store i32 %98, i32* %8, align 4
  br label %122

99:                                               ; preds = %91
  %100 = load i32, i32* %9, align 4
  %101 = load i32, i32* %19, align 4
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @krb5_cc_initialize(i32 %100, i32 %101, i32 %103)
  store i32 %104, i32* %16, align 4
  %105 = load i32, i32* %16, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %109

107:                                              ; preds = %99
  %108 = load i32, i32* %16, align 4
  store i32 %108, i32* %8, align 4
  br label %122

109:                                              ; preds = %99
  %110 = load i32, i32* %9, align 4
  %111 = load i32, i32* %19, align 4
  %112 = call i32 @krb5_cc_store_cred(i32 %110, i32 %111, %struct.TYPE_6__* %17)
  store i32 %112, i32* %16, align 4
  %113 = load i32, i32* %16, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %117

115:                                              ; preds = %109
  %116 = load i32, i32* %16, align 4
  store i32 %116, i32* %8, align 4
  br label %122

117:                                              ; preds = %109
  %118 = load i32, i32* %9, align 4
  %119 = call i32 @krb5_free_cred_contents(i32 %118, %struct.TYPE_6__* %17)
  %120 = load i32, i32* %19, align 4
  %121 = load i32*, i32** %15, align 8
  store i32 %120, i32* %121, align 4
  store i32 0, i32* %8, align 4
  br label %122

122:                                              ; preds = %117, %115, %107, %97, %89, %87, %58, %25
  %123 = load i32, i32* %8, align 4
  ret i32 %123
}

declare dso_local i32 @krb5_get_init_creds_opt_alloc(i32, i32**) #1

declare dso_local i32 @krb5_get_init_creds_opt_set_default_flags(i32, i8*, i32, i32*) #1

declare dso_local i32 @krb5_principal_get_realm(i32, i32) #1

declare dso_local i32 @krb5_get_init_creds_opt_set_forwardable(i32*, i32) #1

declare dso_local i32 @krb5_get_init_creds_opt_set_proxiable(i32*, i32) #1

declare dso_local i32 @krb5_kt_default(i32, i32*) #1

declare dso_local i32 @krb5_kt_resolve(i32, i8*, i32*) #1

declare dso_local i32 @krb5_get_init_creds_opt_free(i32, i32*) #1

declare dso_local i32 @krb5_get_init_creds_keytab(i32, %struct.TYPE_6__*, i32, i32, i32, i8*, i32*) #1

declare dso_local i32 @krb5_kt_close(i32, i32) #1

declare dso_local i32 @krb5_get_init_creds_password(i32, %struct.TYPE_6__*, i32, i8*, i32*, i32*, i32, i8*, i32*) #1

declare dso_local i32 @krb5_cc_new_unique(i32, i32, i32*, i32*) #1

declare dso_local i32 @krb5_cc_initialize(i32, i32, i32) #1

declare dso_local i32 @krb5_cc_store_cred(i32, i32, %struct.TYPE_6__*) #1

declare dso_local i32 @krb5_free_cred_contents(i32, %struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
