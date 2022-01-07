; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libpam/modules/pam_ksu/extr_pam_ksu.c_auth_krb5.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libpam/modules/pam_ksu/extr_pam_ksu.c_auth_krb5.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [17 x i8] c"Password for %s:\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"Password:\00", align 1
@PAM_BUF_ERR = common dso_local global i32 0, align 4
@PAM_AUTHTOK = common dso_local global i32 0, align 4
@PAM_SUCCESS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [34 x i8] c"krb5_get_init_creds_opt_alloc: %s\00", align 1
@PAM_AUTH_ERR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [33 x i8] c"krb5_get_init_creds_password: %s\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"krb5_verify_init_creds: %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i8*, i32)* @auth_krb5 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @auth_krb5(i32* %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  store i8* null, i8** %14, align 8
  %20 = call i32 @krb5_verify_init_creds_opt_init(i32* %12)
  %21 = load i8*, i8** %8, align 8
  %22 = icmp ne i8* %21, null
  br i1 %22, label %23, label %26

23:                                               ; preds = %4
  %24 = load i8*, i8** %8, align 8
  %25 = call i32 (i8**, i8*, ...) @asprintf(i8** %14, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i8* %24)
  br label %28

26:                                               ; preds = %4
  %27 = call i32 (i8**, i8*, ...) @asprintf(i8** %14, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  br label %28

28:                                               ; preds = %26, %23
  %29 = load i8*, i8** %14, align 8
  %30 = icmp eq i8* %29, null
  br i1 %30, label %31, label %33

31:                                               ; preds = %28
  %32 = load i32, i32* @PAM_BUF_ERR, align 4
  store i32 %32, i32* %5, align 4
  br label %101

33:                                               ; preds = %28
  store i8* null, i8** %13, align 8
  %34 = load i32*, i32** %6, align 8
  %35 = load i32, i32* @PAM_AUTHTOK, align 4
  %36 = load i8*, i8** %14, align 8
  %37 = call i32 @pam_get_authtok(i32* %34, i32 %35, i8** %13, i8* %36)
  store i32 %37, i32* %16, align 4
  %38 = load i8*, i8** %14, align 8
  %39 = call i32 @free(i8* %38)
  %40 = load i32, i32* %16, align 4
  %41 = load i32, i32* @PAM_SUCCESS, align 4
  %42 = icmp ne i32 %40, %41
  br i1 %42, label %43, label %45

43:                                               ; preds = %33
  %44 = load i32, i32* %16, align 4
  store i32 %44, i32* %5, align 4
  br label %101

45:                                               ; preds = %33
  %46 = load i32, i32* %7, align 4
  %47 = call i64 @krb5_get_init_creds_opt_alloc(i32 %46, i32** %11)
  store i64 %47, i64* %15, align 8
  %48 = load i64, i64* %15, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %60

50:                                               ; preds = %45
  %51 = load i32, i32* %7, align 4
  %52 = load i64, i64* %15, align 8
  %53 = call i8* @krb5_get_error_message(i32 %51, i64 %52)
  store i8* %53, i8** %17, align 8
  %54 = load i8*, i8** %17, align 8
  %55 = call i32 @PAM_LOG(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i8* %54)
  %56 = load i32, i32* %7, align 4
  %57 = load i8*, i8** %17, align 8
  %58 = call i32 @krb5_free_error_message(i32 %56, i8* %57)
  %59 = load i32, i32* @PAM_AUTH_ERR, align 4
  store i32 %59, i32* %5, align 4
  br label %101

60:                                               ; preds = %45
  %61 = load i32, i32* %7, align 4
  %62 = load i32, i32* %9, align 4
  %63 = load i8*, i8** %13, align 8
  %64 = load i32*, i32** %11, align 8
  %65 = call i64 @krb5_get_init_creds_password(i32 %61, i32* %10, i32 %62, i8* %63, i32* null, i32* null, i32 0, i32* null, i32* %64)
  store i64 %65, i64* %15, align 8
  %66 = load i32, i32* %7, align 4
  %67 = load i32*, i32** %11, align 8
  %68 = call i32 @krb5_get_init_creds_opt_free(i32 %66, i32* %67)
  %69 = load i64, i64* %15, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %81

71:                                               ; preds = %60
  %72 = load i32, i32* %7, align 4
  %73 = load i64, i64* %15, align 8
  %74 = call i8* @krb5_get_error_message(i32 %72, i64 %73)
  store i8* %74, i8** %18, align 8
  %75 = load i8*, i8** %18, align 8
  %76 = call i32 @PAM_LOG(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0), i8* %75)
  %77 = load i32, i32* %7, align 4
  %78 = load i8*, i8** %18, align 8
  %79 = call i32 @krb5_free_error_message(i32 %77, i8* %78)
  %80 = load i32, i32* @PAM_AUTH_ERR, align 4
  store i32 %80, i32* %5, align 4
  br label %101

81:                                               ; preds = %60
  %82 = call i32 @krb5_verify_init_creds_opt_set_ap_req_nofail(i32* %12, i32 1)
  %83 = load i32, i32* %7, align 4
  %84 = call i64 @krb5_verify_init_creds(i32 %83, i32* %10, i32* null, i32* null, i32* null, i32* %12)
  store i64 %84, i64* %15, align 8
  %85 = load i32, i32* %7, align 4
  %86 = call i32 @krb5_free_cred_contents(i32 %85, i32* %10)
  %87 = load i64, i64* %15, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %99

89:                                               ; preds = %81
  %90 = load i32, i32* %7, align 4
  %91 = load i64, i64* %15, align 8
  %92 = call i8* @krb5_get_error_message(i32 %90, i64 %91)
  store i8* %92, i8** %19, align 8
  %93 = load i8*, i8** %19, align 8
  %94 = call i32 @PAM_LOG(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0), i8* %93)
  %95 = load i32, i32* %7, align 4
  %96 = load i8*, i8** %19, align 8
  %97 = call i32 @krb5_free_error_message(i32 %95, i8* %96)
  %98 = load i32, i32* @PAM_AUTH_ERR, align 4
  store i32 %98, i32* %5, align 4
  br label %101

99:                                               ; preds = %81
  %100 = load i32, i32* @PAM_SUCCESS, align 4
  store i32 %100, i32* %5, align 4
  br label %101

101:                                              ; preds = %99, %89, %71, %50, %43, %31
  %102 = load i32, i32* %5, align 4
  ret i32 %102
}

declare dso_local i32 @krb5_verify_init_creds_opt_init(i32*) #1

declare dso_local i32 @asprintf(i8**, i8*, ...) #1

declare dso_local i32 @pam_get_authtok(i32*, i32, i8**, i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i64 @krb5_get_init_creds_opt_alloc(i32, i32**) #1

declare dso_local i8* @krb5_get_error_message(i32, i64) #1

declare dso_local i32 @PAM_LOG(i8*, i8*) #1

declare dso_local i32 @krb5_free_error_message(i32, i8*) #1

declare dso_local i64 @krb5_get_init_creds_password(i32, i32*, i32, i8*, i32*, i32*, i32, i32*, i32*) #1

declare dso_local i32 @krb5_get_init_creds_opt_free(i32, i32*) #1

declare dso_local i32 @krb5_verify_init_creds_opt_set_ap_req_nofail(i32*, i32) #1

declare dso_local i64 @krb5_verify_init_creds(i32, i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @krb5_free_cred_contents(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
