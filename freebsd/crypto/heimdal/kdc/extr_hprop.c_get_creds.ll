; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/kdc/extr_hprop.c_get_creds.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/kdc/extr_hprop.c_get_creds.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@KRB5_PADATA_ENC_TIMESTAMP = common dso_local global i32 0, align 4
@hdb_kt_ops = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"krb5_kt_register\00", align 1
@ktname = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"krb5_kt_resolve\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"kadmin\00", align 1
@HPROP_NAME = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [20 x i8] c"krb5_make_principal\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"krb5_get_init_creds_opt_alloc\00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"krb5_get_init_creds\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"krb5_kt_close\00", align 1
@krb5_cc_type_memory = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [19 x i8] c"krb5_cc_new_unique\00", align 1
@.str.8 = private unnamed_addr constant [19 x i8] c"krb5_cc_initialize\00", align 1
@.str.9 = private unnamed_addr constant [19 x i8] c"krb5_cc_store_cred\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32*)* @get_creds to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @get_creds(i32 %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32* %1, i32** %4, align 8
  %11 = load i32, i32* @KRB5_PADATA_ENC_TIMESTAMP, align 4
  store i32 %11, i32* %9, align 4
  %12 = load i32, i32* %3, align 4
  %13 = call i64 @krb5_kt_register(i32 %12, i32* @hdb_kt_ops)
  store i64 %13, i64* %7, align 8
  %14 = load i64, i64* %7, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %2
  %17 = load i32, i32* %3, align 4
  %18 = load i64, i64* %7, align 8
  %19 = call i32 @krb5_err(i32 %17, i32 1, i64 %18, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  br label %20

20:                                               ; preds = %16, %2
  %21 = load i32, i32* %3, align 4
  %22 = load i32, i32* @ktname, align 4
  %23 = call i64 @krb5_kt_resolve(i32 %21, i32 %22, i32* %5)
  store i64 %23, i64* %7, align 8
  %24 = load i64, i64* %7, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %20
  %27 = load i32, i32* %3, align 4
  %28 = load i64, i64* %7, align 8
  %29 = call i32 @krb5_err(i32 %27, i32 1, i64 %28, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  br label %30

30:                                               ; preds = %26, %20
  %31 = load i32, i32* %3, align 4
  %32 = load i32, i32* @HPROP_NAME, align 4
  %33 = call i64 @krb5_make_principal(i32 %31, i32* %6, i32* null, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 %32, i32* null)
  store i64 %33, i64* %7, align 8
  %34 = load i64, i64* %7, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %30
  %37 = load i32, i32* %3, align 4
  %38 = load i64, i64* %7, align 8
  %39 = call i32 @krb5_err(i32 %37, i32 1, i64 %38, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0))
  br label %40

40:                                               ; preds = %36, %30
  %41 = load i32, i32* %3, align 4
  %42 = call i64 @krb5_get_init_creds_opt_alloc(i32 %41, i32** %8)
  store i64 %42, i64* %7, align 8
  %43 = load i64, i64* %7, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %40
  %46 = load i32, i32* %3, align 4
  %47 = load i64, i64* %7, align 8
  %48 = call i32 @krb5_err(i32 %46, i32 1, i64 %47, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0))
  br label %49

49:                                               ; preds = %45, %40
  %50 = load i32*, i32** %8, align 8
  %51 = call i32 @krb5_get_init_creds_opt_set_preauth_list(i32* %50, i32* %9, i32 1)
  %52 = load i32, i32* %3, align 4
  %53 = load i32, i32* %6, align 4
  %54 = load i32, i32* %5, align 4
  %55 = load i32*, i32** %8, align 8
  %56 = call i64 @krb5_get_init_creds_keytab(i32 %52, i32* %10, i32 %53, i32 %54, i32 0, i32* null, i32* %55)
  store i64 %56, i64* %7, align 8
  %57 = load i64, i64* %7, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %49
  %60 = load i32, i32* %3, align 4
  %61 = load i64, i64* %7, align 8
  %62 = call i32 @krb5_err(i32 %60, i32 1, i64 %61, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0))
  br label %63

63:                                               ; preds = %59, %49
  %64 = load i32, i32* %3, align 4
  %65 = load i32*, i32** %8, align 8
  %66 = call i32 @krb5_get_init_creds_opt_free(i32 %64, i32* %65)
  %67 = load i32, i32* %3, align 4
  %68 = load i32, i32* %5, align 4
  %69 = call i64 @krb5_kt_close(i32 %67, i32 %68)
  store i64 %69, i64* %7, align 8
  %70 = load i64, i64* %7, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %76

72:                                               ; preds = %63
  %73 = load i32, i32* %3, align 4
  %74 = load i64, i64* %7, align 8
  %75 = call i32 @krb5_err(i32 %73, i32 1, i64 %74, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0))
  br label %76

76:                                               ; preds = %72, %63
  %77 = load i32, i32* %3, align 4
  %78 = load i32, i32* @krb5_cc_type_memory, align 4
  %79 = load i32*, i32** %4, align 8
  %80 = call i64 @krb5_cc_new_unique(i32 %77, i32 %78, i32* null, i32* %79)
  store i64 %80, i64* %7, align 8
  %81 = load i64, i64* %7, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %87

83:                                               ; preds = %76
  %84 = load i32, i32* %3, align 4
  %85 = load i64, i64* %7, align 8
  %86 = call i32 @krb5_err(i32 %84, i32 1, i64 %85, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.7, i64 0, i64 0))
  br label %87

87:                                               ; preds = %83, %76
  %88 = load i32, i32* %3, align 4
  %89 = load i32*, i32** %4, align 8
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* %6, align 4
  %92 = call i64 @krb5_cc_initialize(i32 %88, i32 %90, i32 %91)
  store i64 %92, i64* %7, align 8
  %93 = load i64, i64* %7, align 8
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %99

95:                                               ; preds = %87
  %96 = load i32, i32* %3, align 4
  %97 = load i64, i64* %7, align 8
  %98 = call i32 @krb5_err(i32 %96, i32 1, i64 %97, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.8, i64 0, i64 0))
  br label %99

99:                                               ; preds = %95, %87
  %100 = load i32, i32* %3, align 4
  %101 = load i32, i32* %6, align 4
  %102 = call i32 @krb5_free_principal(i32 %100, i32 %101)
  %103 = load i32, i32* %3, align 4
  %104 = load i32*, i32** %4, align 8
  %105 = load i32, i32* %104, align 4
  %106 = call i64 @krb5_cc_store_cred(i32 %103, i32 %105, i32* %10)
  store i64 %106, i64* %7, align 8
  %107 = load i64, i64* %7, align 8
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %113

109:                                              ; preds = %99
  %110 = load i32, i32* %3, align 4
  %111 = load i64, i64* %7, align 8
  %112 = call i32 @krb5_err(i32 %110, i32 1, i64 %111, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.9, i64 0, i64 0))
  br label %113

113:                                              ; preds = %109, %99
  %114 = load i32, i32* %3, align 4
  %115 = call i32 @krb5_free_cred_contents(i32 %114, i32* %10)
  ret void
}

declare dso_local i64 @krb5_kt_register(i32, i32*) #1

declare dso_local i32 @krb5_err(i32, i32, i64, i8*) #1

declare dso_local i64 @krb5_kt_resolve(i32, i32, i32*) #1

declare dso_local i64 @krb5_make_principal(i32, i32*, i32*, i8*, i32, i32*) #1

declare dso_local i64 @krb5_get_init_creds_opt_alloc(i32, i32**) #1

declare dso_local i32 @krb5_get_init_creds_opt_set_preauth_list(i32*, i32*, i32) #1

declare dso_local i64 @krb5_get_init_creds_keytab(i32, i32*, i32, i32, i32, i32*, i32*) #1

declare dso_local i32 @krb5_get_init_creds_opt_free(i32, i32*) #1

declare dso_local i64 @krb5_kt_close(i32, i32) #1

declare dso_local i64 @krb5_cc_new_unique(i32, i32, i32*, i32*) #1

declare dso_local i64 @krb5_cc_initialize(i32, i32, i32) #1

declare dso_local i32 @krb5_free_principal(i32, i32) #1

declare dso_local i64 @krb5_cc_store_cred(i32, i32, i32*) #1

declare dso_local i32 @krb5_free_cred_contents(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
