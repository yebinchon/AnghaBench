; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/kadm5/extr_ipropd_slave.c_get_creds.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/kadm5/extr_ipropd_slave.c_get_creds.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [21 x i8] c"krb5_kt_default_name\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@slave_str = common dso_local global i32 0, align 4
@IPROP_NAME = common dso_local global i32 0, align 4
@KRB5_NT_SRV_HST = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [24 x i8] c"krb5_sname_to_principal\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"krb5_get_init_creds_opt_alloc\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"malloc: no memory\00", align 1
@.str.6 = private unnamed_addr constant [20 x i8] c"krb5_get_init_creds\00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c"krb5_kt_close\00", align 1
@krb5_cc_type_memory = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [19 x i8] c"krb5_cc_new_unique\00", align 1
@.str.9 = private unnamed_addr constant [19 x i8] c"krb5_cc_initialize\00", align 1
@.str.10 = private unnamed_addr constant [19 x i8] c"krb5_cc_store_cred\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i8*, i32*, i8*)* @get_creds to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @get_creds(i32 %0, i8* %1, i32* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca [256 x i8], align 16
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  store i8* %3, i8** %8, align 8
  %16 = load i8*, i8** %6, align 8
  %17 = icmp eq i8* %16, null
  br i1 %17, label %18, label %30

18:                                               ; preds = %4
  %19 = load i32, i32* %5, align 4
  %20 = getelementptr inbounds [256 x i8], [256 x i8]* %15, i64 0, i64 0
  %21 = call i64 @krb5_kt_default_name(i32 %19, i8* %20, i32 256)
  store i64 %21, i64* %11, align 8
  %22 = load i64, i64* %11, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %18
  %25 = load i32, i32* %5, align 4
  %26 = load i64, i64* %11, align 8
  %27 = call i32 (i32, i32, i64, i8*, ...) @krb5_err(i32 %25, i32 1, i64 %26, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  br label %28

28:                                               ; preds = %24, %18
  %29 = getelementptr inbounds [256 x i8], [256 x i8]* %15, i64 0, i64 0
  store i8* %29, i8** %6, align 8
  br label %30

30:                                               ; preds = %28, %4
  %31 = load i32, i32* %5, align 4
  %32 = load i8*, i8** %6, align 8
  %33 = call i64 @krb5_kt_resolve(i32 %31, i8* %32, i32* %9)
  store i64 %33, i64* %11, align 8
  %34 = load i64, i64* %11, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %30
  %37 = load i32, i32* %5, align 4
  %38 = load i64, i64* %11, align 8
  %39 = load i8*, i8** %6, align 8
  %40 = call i32 (i32, i32, i64, i8*, ...) @krb5_err(i32 %37, i32 1, i64 %38, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %39)
  br label %41

41:                                               ; preds = %36, %30
  %42 = load i32, i32* %5, align 4
  %43 = load i32, i32* @slave_str, align 4
  %44 = load i32, i32* @IPROP_NAME, align 4
  %45 = load i32, i32* @KRB5_NT_SRV_HST, align 4
  %46 = call i64 @krb5_sname_to_principal(i32 %42, i32 %43, i32 %44, i32 %45, i32* %10)
  store i64 %46, i64* %11, align 8
  %47 = load i64, i64* %11, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %41
  %50 = load i32, i32* %5, align 4
  %51 = load i64, i64* %11, align 8
  %52 = call i32 (i32, i32, i64, i8*, ...) @krb5_err(i32 %50, i32 1, i64 %51, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  br label %53

53:                                               ; preds = %49, %41
  %54 = load i32, i32* %5, align 4
  %55 = call i64 @krb5_get_init_creds_opt_alloc(i32 %54, i32** %12)
  store i64 %55, i64* %11, align 8
  %56 = load i64, i64* %11, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %53
  %59 = load i32, i32* %5, align 4
  %60 = load i64, i64* %11, align 8
  %61 = call i32 (i32, i32, i64, i8*, ...) @krb5_err(i32 %59, i32 1, i64 %60, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0))
  br label %62

62:                                               ; preds = %58, %53
  %63 = load i32, i32* @IPROP_NAME, align 4
  %64 = load i8*, i8** %8, align 8
  %65 = call i32 @asprintf(i8** %14, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i32 %63, i8* %64)
  %66 = load i8*, i8** %14, align 8
  %67 = icmp eq i8* %66, null
  br i1 %67, label %68, label %71

68:                                               ; preds = %62
  %69 = load i32, i32* %5, align 4
  %70 = call i32 @krb5_errx(i32 %69, i32 1, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0))
  br label %71

71:                                               ; preds = %68, %62
  %72 = load i32, i32* %5, align 4
  %73 = load i32, i32* %10, align 4
  %74 = load i32, i32* %9, align 4
  %75 = load i8*, i8** %14, align 8
  %76 = load i32*, i32** %12, align 8
  %77 = call i64 @krb5_get_init_creds_keytab(i32 %72, i32* %13, i32 %73, i32 %74, i32 0, i8* %75, i32* %76)
  store i64 %77, i64* %11, align 8
  %78 = load i8*, i8** %14, align 8
  %79 = call i32 @free(i8* %78)
  %80 = load i32, i32* %5, align 4
  %81 = load i32*, i32** %12, align 8
  %82 = call i32 @krb5_get_init_creds_opt_free(i32 %80, i32* %81)
  %83 = load i64, i64* %11, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %89

85:                                               ; preds = %71
  %86 = load i32, i32* %5, align 4
  %87 = load i64, i64* %11, align 8
  %88 = call i32 (i32, i32, i64, i8*, ...) @krb5_err(i32 %86, i32 1, i64 %87, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0))
  br label %89

89:                                               ; preds = %85, %71
  %90 = load i32, i32* %5, align 4
  %91 = load i32, i32* %9, align 4
  %92 = call i64 @krb5_kt_close(i32 %90, i32 %91)
  store i64 %92, i64* %11, align 8
  %93 = load i64, i64* %11, align 8
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %99

95:                                               ; preds = %89
  %96 = load i32, i32* %5, align 4
  %97 = load i64, i64* %11, align 8
  %98 = call i32 (i32, i32, i64, i8*, ...) @krb5_err(i32 %96, i32 1, i64 %97, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0))
  br label %99

99:                                               ; preds = %95, %89
  %100 = load i32, i32* %5, align 4
  %101 = load i32, i32* @krb5_cc_type_memory, align 4
  %102 = load i32*, i32** %7, align 8
  %103 = call i64 @krb5_cc_new_unique(i32 %100, i32 %101, i32* null, i32* %102)
  store i64 %103, i64* %11, align 8
  %104 = load i64, i64* %11, align 8
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %110

106:                                              ; preds = %99
  %107 = load i32, i32* %5, align 4
  %108 = load i64, i64* %11, align 8
  %109 = call i32 (i32, i32, i64, i8*, ...) @krb5_err(i32 %107, i32 1, i64 %108, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.8, i64 0, i64 0))
  br label %110

110:                                              ; preds = %106, %99
  %111 = load i32, i32* %5, align 4
  %112 = load i32*, i32** %7, align 8
  %113 = load i32, i32* %112, align 4
  %114 = load i32, i32* %10, align 4
  %115 = call i64 @krb5_cc_initialize(i32 %111, i32 %113, i32 %114)
  store i64 %115, i64* %11, align 8
  %116 = load i64, i64* %11, align 8
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %122

118:                                              ; preds = %110
  %119 = load i32, i32* %5, align 4
  %120 = load i64, i64* %11, align 8
  %121 = call i32 (i32, i32, i64, i8*, ...) @krb5_err(i32 %119, i32 1, i64 %120, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.9, i64 0, i64 0))
  br label %122

122:                                              ; preds = %118, %110
  %123 = load i32, i32* %5, align 4
  %124 = load i32*, i32** %7, align 8
  %125 = load i32, i32* %124, align 4
  %126 = call i64 @krb5_cc_store_cred(i32 %123, i32 %125, i32* %13)
  store i64 %126, i64* %11, align 8
  %127 = load i64, i64* %11, align 8
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %133

129:                                              ; preds = %122
  %130 = load i32, i32* %5, align 4
  %131 = load i64, i64* %11, align 8
  %132 = call i32 (i32, i32, i64, i8*, ...) @krb5_err(i32 %130, i32 1, i64 %131, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.10, i64 0, i64 0))
  br label %133

133:                                              ; preds = %129, %122
  %134 = load i32, i32* %5, align 4
  %135 = call i32 @krb5_free_cred_contents(i32 %134, i32* %13)
  %136 = load i32, i32* %5, align 4
  %137 = load i32, i32* %10, align 4
  %138 = call i32 @krb5_free_principal(i32 %136, i32 %137)
  ret void
}

declare dso_local i64 @krb5_kt_default_name(i32, i8*, i32) #1

declare dso_local i32 @krb5_err(i32, i32, i64, i8*, ...) #1

declare dso_local i64 @krb5_kt_resolve(i32, i8*, i32*) #1

declare dso_local i64 @krb5_sname_to_principal(i32, i32, i32, i32, i32*) #1

declare dso_local i64 @krb5_get_init_creds_opt_alloc(i32, i32**) #1

declare dso_local i32 @asprintf(i8**, i8*, i32, i8*) #1

declare dso_local i32 @krb5_errx(i32, i32, i8*) #1

declare dso_local i64 @krb5_get_init_creds_keytab(i32, i32*, i32, i32, i32, i8*, i32*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @krb5_get_init_creds_opt_free(i32, i32*) #1

declare dso_local i64 @krb5_kt_close(i32, i32) #1

declare dso_local i64 @krb5_cc_new_unique(i32, i32, i32*, i32*) #1

declare dso_local i64 @krb5_cc_initialize(i32, i32, i32) #1

declare dso_local i64 @krb5_cc_store_cred(i32, i32, i32*) #1

declare dso_local i32 @krb5_free_cred_contents(i32, i32*) #1

declare dso_local i32 @krb5_free_principal(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
