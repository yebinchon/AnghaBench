; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/gssapi/extr_test_cred.c_acquire_release_loop.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/gssapi/extr_test_cred.c_acquire_release_loop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GSS_C_INDEFINITE = common dso_local global i32 0, align 4
@GSS_C_NO_OID_SET = common dso_local global i32 0, align 4
@GSS_S_COMPLETE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [31 x i8] c"aquire %d %d != GSS_S_COMPLETE\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"release %d %d != GSS_S_COMPLETE\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32)* @acquire_release_loop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @acquire_release_loop(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %10, align 4
  br label %11

11:                                               ; preds = %42, %3
  %12 = load i32, i32* %10, align 4
  %13 = load i32, i32* %5, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %45

15:                                               ; preds = %11
  %16 = load i32, i32* %4, align 4
  %17 = load i32, i32* @GSS_C_INDEFINITE, align 4
  %18 = load i32, i32* @GSS_C_NO_OID_SET, align 4
  %19 = load i32, i32* %6, align 4
  %20 = call i64 @gss_acquire_cred(i64* %8, i32 %16, i32 %17, i32 %18, i32 %19, i32* %9, i32* null, i32* null)
  store i64 %20, i64* %7, align 8
  %21 = load i64, i64* %7, align 8
  %22 = load i64, i64* @GSS_S_COMPLETE, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %30

24:                                               ; preds = %15
  %25 = load i64, i64* %8, align 8
  %26 = load i32, i32* %10, align 4
  %27 = load i64, i64* %7, align 8
  %28 = trunc i64 %27 to i32
  %29 = call i32 @gss_err(i32 1, i64 %25, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %26, i32 %28)
  br label %30

30:                                               ; preds = %24, %15
  %31 = call i64 @gss_release_cred(i64* %8, i32* %9)
  store i64 %31, i64* %7, align 8
  %32 = load i64, i64* %7, align 8
  %33 = load i64, i64* @GSS_S_COMPLETE, align 8
  %34 = icmp ne i64 %32, %33
  br i1 %34, label %35, label %41

35:                                               ; preds = %30
  %36 = load i64, i64* %8, align 8
  %37 = load i32, i32* %10, align 4
  %38 = load i64, i64* %7, align 8
  %39 = trunc i64 %38 to i32
  %40 = call i32 @gss_err(i32 1, i64 %36, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %37, i32 %39)
  br label %41

41:                                               ; preds = %35, %30
  br label %42

42:                                               ; preds = %41
  %43 = load i32, i32* %10, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %10, align 4
  br label %11

45:                                               ; preds = %11
  ret void
}

declare dso_local i64 @gss_acquire_cred(i64*, i32, i32, i32, i32, i32*, i32*, i32*) #1

declare dso_local i32 @gss_err(i32, i64, i8*, i32, i32) #1

declare dso_local i64 @gss_release_cred(i64*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
