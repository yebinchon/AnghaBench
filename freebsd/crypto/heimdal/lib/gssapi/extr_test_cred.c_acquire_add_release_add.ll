; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/gssapi/extr_test_cred.c_acquire_add_release_add.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/gssapi/extr_test_cred.c_acquire_add_release_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GSS_C_INDEFINITE = common dso_local global i32 0, align 4
@GSS_C_NO_OID_SET = common dso_local global i32 0, align 4
@GSS_S_COMPLETE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [28 x i8] c"aquire %d != GSS_S_COMPLETE\00", align 1
@GSS_C_NO_NAME = common dso_local global i32 0, align 4
@GSS_KRB5_MECHANISM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"add_cred %d != GSS_S_COMPLETE\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"release %d != GSS_S_COMPLETE\00", align 1
@GSS_C_BOTH = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [31 x i8] c"release 2 %d != GSS_S_COMPLETE\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32)* @acquire_add_release_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @acquire_add_release_add(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %10 = load i32, i32* %3, align 4
  %11 = load i32, i32* @GSS_C_INDEFINITE, align 4
  %12 = load i32, i32* @GSS_C_NO_OID_SET, align 4
  %13 = load i32, i32* %4, align 4
  %14 = call i64 @gss_acquire_cred(i64* %6, i32 %10, i32 %11, i32 %12, i32 %13, i32* %7, i32* null, i32* null)
  store i64 %14, i64* %5, align 8
  %15 = load i64, i64* %5, align 8
  %16 = load i64, i64* @GSS_S_COMPLETE, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %23

18:                                               ; preds = %2
  %19 = load i64, i64* %6, align 8
  %20 = load i64, i64* %5, align 8
  %21 = trunc i64 %20 to i32
  %22 = call i32 @gss_err(i32 1, i64 %19, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %21)
  br label %23

23:                                               ; preds = %18, %2
  %24 = load i32, i32* %7, align 4
  %25 = load i32, i32* @GSS_C_NO_NAME, align 4
  %26 = load i32, i32* @GSS_KRB5_MECHANISM, align 4
  %27 = load i32, i32* %4, align 4
  %28 = load i32, i32* @GSS_C_INDEFINITE, align 4
  %29 = load i32, i32* @GSS_C_INDEFINITE, align 4
  %30 = call i64 @gss_add_cred(i64* %6, i32 %24, i32 %25, i32 %26, i32 %27, i32 %28, i32 %29, i32* %8, i32* null, i32* null, i32* null)
  store i64 %30, i64* %5, align 8
  %31 = load i64, i64* %5, align 8
  %32 = load i64, i64* @GSS_S_COMPLETE, align 8
  %33 = icmp ne i64 %31, %32
  br i1 %33, label %34, label %39

34:                                               ; preds = %23
  %35 = load i64, i64* %6, align 8
  %36 = load i64, i64* %5, align 8
  %37 = trunc i64 %36 to i32
  %38 = call i32 @gss_err(i32 1, i64 %35, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %37)
  br label %39

39:                                               ; preds = %34, %23
  %40 = call i64 @gss_release_cred(i64* %6, i32* %7)
  store i64 %40, i64* %5, align 8
  %41 = load i64, i64* %5, align 8
  %42 = load i64, i64* @GSS_S_COMPLETE, align 8
  %43 = icmp ne i64 %41, %42
  br i1 %43, label %44, label %49

44:                                               ; preds = %39
  %45 = load i64, i64* %6, align 8
  %46 = load i64, i64* %5, align 8
  %47 = trunc i64 %46 to i32
  %48 = call i32 @gss_err(i32 1, i64 %45, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i32 %47)
  br label %49

49:                                               ; preds = %44, %39
  %50 = load i32, i32* %8, align 4
  %51 = load i32, i32* @GSS_C_NO_NAME, align 4
  %52 = load i32, i32* @GSS_KRB5_MECHANISM, align 4
  %53 = load i32, i32* @GSS_C_BOTH, align 4
  %54 = load i32, i32* @GSS_C_INDEFINITE, align 4
  %55 = load i32, i32* @GSS_C_INDEFINITE, align 4
  %56 = call i64 @gss_add_cred(i64* %6, i32 %50, i32 %51, i32 %52, i32 %53, i32 %54, i32 %55, i32* %9, i32* null, i32* null, i32* null)
  store i64 %56, i64* %5, align 8
  %57 = call i64 @gss_release_cred(i64* %6, i32* %8)
  store i64 %57, i64* %5, align 8
  %58 = load i64, i64* %5, align 8
  %59 = load i64, i64* @GSS_S_COMPLETE, align 8
  %60 = icmp ne i64 %58, %59
  br i1 %60, label %61, label %66

61:                                               ; preds = %49
  %62 = load i64, i64* %6, align 8
  %63 = load i64, i64* %5, align 8
  %64 = trunc i64 %63 to i32
  %65 = call i32 @gss_err(i32 1, i64 %62, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i32 %64)
  br label %66

66:                                               ; preds = %61, %49
  %67 = call i64 @gss_release_cred(i64* %6, i32* %9)
  store i64 %67, i64* %5, align 8
  %68 = load i64, i64* %5, align 8
  %69 = load i64, i64* @GSS_S_COMPLETE, align 8
  %70 = icmp ne i64 %68, %69
  br i1 %70, label %71, label %76

71:                                               ; preds = %66
  %72 = load i64, i64* %6, align 8
  %73 = load i64, i64* %5, align 8
  %74 = trunc i64 %73 to i32
  %75 = call i32 @gss_err(i32 1, i64 %72, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i32 %74)
  br label %76

76:                                               ; preds = %71, %66
  ret void
}

declare dso_local i64 @gss_acquire_cred(i64*, i32, i32, i32, i32, i32*, i32*, i32*) #1

declare dso_local i32 @gss_err(i32, i64, i8*, i32) #1

declare dso_local i64 @gss_add_cred(i64*, i32, i32, i32, i32, i32, i32, i32*, i32*, i32*, i32*) #1

declare dso_local i64 @gss_release_cred(i64*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
