; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/kadm5/extr_password_quality.c_kadm5_check_password_quality.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/kadm5/extr_password_quality.c_kadm5_check_password_quality.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kadm5_pw_policy_check_func = type { i32 (i32, i32, i32*, i32*, i8*, i32)*, i32 }

@kadm5_check_password_quality.error_msg = internal global [1024 x i8] zeroinitializer, align 16
@.str = private unnamed_addr constant [17 x i8] c"password_quality\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"policies\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"password policy failed: %s\00", align 1
@.str.3 = private unnamed_addr constant [42 x i8] c"failed to find password verifier function\00", align 1
@.str.4 = private unnamed_addr constant [44 x i8] c"Failed to find password policy function: %s\00", align 1
@.str.5 = private unnamed_addr constant [34 x i8] c"Password policy %s failed with %s\00", align 1
@.str.6 = private unnamed_addr constant [37 x i8] c"(old) password policy failed with %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @kadm5_check_password_quality(i32 %0, i32 %1, i32* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.kadm5_pw_policy_check_func*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8**, align 8
  %11 = alloca i8**, align 8
  %12 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %13 = load i32, i32* %5, align 4
  %14 = call i8** @krb5_config_get_strings(i32 %13, i32* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32* null)
  store i8** %14, i8*** %10, align 8
  %15 = load i8**, i8*** %10, align 8
  %16 = icmp eq i8** %15, null
  br i1 %16, label %17, label %30

17:                                               ; preds = %3
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* %6, align 4
  %20 = load i32*, i32** %7, align 8
  %21 = call i8* @passwd_quality_check(i32 %18, i32 %19, i32* %20)
  store i8* %21, i8** %9, align 8
  %22 = load i8*, i8** %9, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %24, label %28

24:                                               ; preds = %17
  %25 = load i32, i32* %5, align 4
  %26 = load i8*, i8** %9, align 8
  %27 = call i32 (i32, i32, i8*, i8*, ...) @krb5_set_error_message(i32 %25, i32 0, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i8* %26)
  br label %28

28:                                               ; preds = %24, %17
  %29 = load i8*, i8** %9, align 8
  store i8* %29, i8** %4, align 8
  br label %89

30:                                               ; preds = %3
  store i8 0, i8* getelementptr inbounds ([1024 x i8], [1024 x i8]* @kadm5_check_password_quality.error_msg, i64 0, i64 0), align 16
  store i8* null, i8** %9, align 8
  %31 = load i8**, i8*** %10, align 8
  store i8** %31, i8*** %11, align 8
  br label %32

32:                                               ; preds = %67, %30
  %33 = load i8**, i8*** %11, align 8
  %34 = load i8*, i8** %33, align 8
  %35 = icmp ne i8* %34, null
  br i1 %35, label %36, label %70

36:                                               ; preds = %32
  %37 = load i32, i32* %5, align 4
  %38 = load i8**, i8*** %11, align 8
  %39 = load i8*, i8** %38, align 8
  %40 = call %struct.kadm5_pw_policy_check_func* @find_func(i32 %37, i8* %39)
  store %struct.kadm5_pw_policy_check_func* %40, %struct.kadm5_pw_policy_check_func** %8, align 8
  %41 = load %struct.kadm5_pw_policy_check_func*, %struct.kadm5_pw_policy_check_func** %8, align 8
  %42 = icmp eq %struct.kadm5_pw_policy_check_func* %41, null
  br i1 %42, label %43, label %48

43:                                               ; preds = %36
  store i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0), i8** %9, align 8
  %44 = load i32, i32* %5, align 4
  %45 = load i8**, i8*** %11, align 8
  %46 = load i8*, i8** %45, align 8
  %47 = call i32 (i32, i32, i8*, i8*, ...) @krb5_set_error_message(i32 %44, i32 0, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.4, i64 0, i64 0), i8* %46)
  br label %70

48:                                               ; preds = %36
  %49 = load %struct.kadm5_pw_policy_check_func*, %struct.kadm5_pw_policy_check_func** %8, align 8
  %50 = getelementptr inbounds %struct.kadm5_pw_policy_check_func, %struct.kadm5_pw_policy_check_func* %49, i32 0, i32 0
  %51 = load i32 (i32, i32, i32*, i32*, i8*, i32)*, i32 (i32, i32, i32*, i32*, i8*, i32)** %50, align 8
  %52 = load i32, i32* %5, align 4
  %53 = load i32, i32* %6, align 4
  %54 = load i32*, i32** %7, align 8
  %55 = call i32 %51(i32 %52, i32 %53, i32* %54, i32* null, i8* getelementptr inbounds ([1024 x i8], [1024 x i8]* @kadm5_check_password_quality.error_msg, i64 0, i64 0), i32 1024)
  store i32 %55, i32* %12, align 4
  %56 = load i32, i32* %12, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %66

58:                                               ; preds = %48
  %59 = load i32, i32* %5, align 4
  %60 = load %struct.kadm5_pw_policy_check_func*, %struct.kadm5_pw_policy_check_func** %8, align 8
  %61 = getelementptr inbounds %struct.kadm5_pw_policy_check_func, %struct.kadm5_pw_policy_check_func* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 8
  %63 = sext i32 %62 to i64
  %64 = inttoptr i64 %63 to i8*
  %65 = call i32 (i32, i32, i8*, i8*, ...) @krb5_set_error_message(i32 %59, i32 0, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5, i64 0, i64 0), i8* %64, i8* getelementptr inbounds ([1024 x i8], [1024 x i8]* @kadm5_check_password_quality.error_msg, i64 0, i64 0))
  store i8* getelementptr inbounds ([1024 x i8], [1024 x i8]* @kadm5_check_password_quality.error_msg, i64 0, i64 0), i8** %9, align 8
  br label %70

66:                                               ; preds = %48
  br label %67

67:                                               ; preds = %66
  %68 = load i8**, i8*** %11, align 8
  %69 = getelementptr inbounds i8*, i8** %68, i32 1
  store i8** %69, i8*** %11, align 8
  br label %32

70:                                               ; preds = %58, %43, %32
  %71 = load i8**, i8*** %10, align 8
  %72 = call i32 @krb5_config_free_strings(i8** %71)
  %73 = load i8*, i8** %9, align 8
  %74 = icmp eq i8* %73, null
  br i1 %74, label %75, label %87

75:                                               ; preds = %70
  %76 = load i32, i32* %5, align 4
  %77 = load i32, i32* %6, align 4
  %78 = load i32*, i32** %7, align 8
  %79 = call i8* @passwd_quality_check(i32 %76, i32 %77, i32* %78)
  store i8* %79, i8** %9, align 8
  %80 = load i8*, i8** %9, align 8
  %81 = icmp ne i8* %80, null
  br i1 %81, label %82, label %86

82:                                               ; preds = %75
  %83 = load i32, i32* %5, align 4
  %84 = load i8*, i8** %9, align 8
  %85 = call i32 (i32, i32, i8*, i8*, ...) @krb5_set_error_message(i32 %83, i32 0, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.6, i64 0, i64 0), i8* %84)
  br label %86

86:                                               ; preds = %82, %75
  br label %87

87:                                               ; preds = %86, %70
  %88 = load i8*, i8** %9, align 8
  store i8* %88, i8** %4, align 8
  br label %89

89:                                               ; preds = %87, %28
  %90 = load i8*, i8** %4, align 8
  ret i8* %90
}

declare dso_local i8** @krb5_config_get_strings(i32, i32*, i8*, i8*, i32*) #1

declare dso_local i8* @passwd_quality_check(i32, i32, i32*) #1

declare dso_local i32 @krb5_set_error_message(i32, i32, i8*, i8*, ...) #1

declare dso_local %struct.kadm5_pw_policy_check_func* @find_func(i32, i8*) #1

declare dso_local i32 @krb5_config_free_strings(i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
