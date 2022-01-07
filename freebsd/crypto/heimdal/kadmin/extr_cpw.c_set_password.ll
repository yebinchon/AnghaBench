; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/kadmin/extr_cpw.c_set_password.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/kadmin/extr_cpw.c_set_password.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@context = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"%s's Password: \00", align 1
@kadm_handle = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @set_password to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_password(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca [128 x i8], align 16
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  store i64 0, i64* %6, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = icmp eq i8* %10, null
  br i1 %11, label %12, label %30

12:                                               ; preds = %2
  %13 = load i32, i32* @context, align 4
  %14 = load i32, i32* %4, align 4
  %15 = call i32 @krb5_unparse_name(i32 %13, i32 %14, i8** %8)
  %16 = load i8*, i8** %8, align 8
  %17 = call i32 @asprintf(i8** %9, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i8* %16)
  %18 = load i8*, i8** %8, align 8
  %19 = call i32 @free(i8* %18)
  %20 = getelementptr inbounds [128 x i8], [128 x i8]* %7, i64 0, i64 0
  %21 = load i8*, i8** %9, align 8
  %22 = call i64 @UI_UTIL_read_pw_string(i8* %20, i32 128, i8* %21, i32 1)
  store i64 %22, i64* %6, align 8
  %23 = load i8*, i8** %9, align 8
  %24 = call i32 @free(i8* %23)
  %25 = load i64, i64* %6, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %12
  store i32 0, i32* %3, align 4
  br label %43

28:                                               ; preds = %12
  %29 = getelementptr inbounds [128 x i8], [128 x i8]* %7, i64 0, i64 0
  store i8* %29, i8** %5, align 8
  br label %30

30:                                               ; preds = %28, %2
  %31 = load i64, i64* %6, align 8
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %30
  %34 = load i32, i32* @kadm_handle, align 4
  %35 = load i32, i32* %4, align 4
  %36 = load i8*, i8** %5, align 8
  %37 = call i64 @kadm5_chpass_principal(i32 %34, i32 %35, i8* %36)
  store i64 %37, i64* %6, align 8
  br label %38

38:                                               ; preds = %33, %30
  %39 = getelementptr inbounds [128 x i8], [128 x i8]* %7, i64 0, i64 0
  %40 = call i32 @memset(i8* %39, i32 0, i32 128)
  %41 = load i64, i64* %6, align 8
  %42 = trunc i64 %41 to i32
  store i32 %42, i32* %3, align 4
  br label %43

43:                                               ; preds = %38, %27
  %44 = load i32, i32* %3, align 4
  ret i32 %44
}

declare dso_local i32 @krb5_unparse_name(i32, i32, i8**) #1

declare dso_local i32 @asprintf(i8**, i8*, i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i64 @UI_UTIL_read_pw_string(i8*, i32, i8*, i32) #1

declare dso_local i64 @kadm5_chpass_principal(i32, i32, i8*) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
