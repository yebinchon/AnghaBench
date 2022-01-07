; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/krb5/extr_test_store.c_check_too_large.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/krb5/extr_test_store.c_check_too_large.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@INT_MAX = common dso_local global i32 0, align 4
@SEEK_SET = common dso_local global i32 0, align 4
@HEIM_ERR_TOO_BIG = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [17 x i8] c"not too big: %lu\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32*)* @check_too_large to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @check_too_large(i32 %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca [4 x i32], align 16
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  store i32* %1, i32** %4, align 8
  %9 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 0
  %10 = load i32, i32* @INT_MAX, align 4
  store i32 %10, i32* %9, align 4
  %11 = getelementptr inbounds i32, i32* %9, i64 1
  %12 = load i32, i32* @INT_MAX, align 4
  %13 = sdiv i32 %12, 2
  store i32 %13, i32* %11, align 4
  %14 = getelementptr inbounds i32, i32* %11, i64 1
  %15 = load i32, i32* @INT_MAX, align 4
  %16 = sdiv i32 %15, 4
  store i32 %16, i32* %14, align 4
  %17 = getelementptr inbounds i32, i32* %14, i64 1
  %18 = load i32, i32* @INT_MAX, align 4
  %19 = sdiv i32 %18, 8
  %20 = add nsw i32 %19, 1
  store i32 %20, i32* %17, align 4
  store i64 0, i64* %8, align 8
  br label %21

21:                                               ; preds = %44, %2
  %22 = load i64, i64* %8, align 8
  %23 = icmp ult i64 %22, 1
  br i1 %23, label %24, label %47

24:                                               ; preds = %21
  %25 = load i32*, i32** %4, align 8
  %26 = call i32 @krb5_storage_truncate(i32* %25, i32 0)
  %27 = load i32*, i32** %4, align 8
  %28 = load i64, i64* %8, align 8
  %29 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 %28
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @krb5_store_uint32(i32* %27, i32 %30)
  %32 = load i32*, i32** %4, align 8
  %33 = load i32, i32* @SEEK_SET, align 4
  %34 = call i32 @krb5_storage_seek(i32* %32, i32 0, i32 %33)
  %35 = load i32*, i32** %4, align 8
  %36 = call i64 @krb5_ret_data(i32* %35, i32* %7)
  store i64 %36, i64* %6, align 8
  %37 = load i64, i64* %6, align 8
  %38 = load i64, i64* @HEIM_ERR_TOO_BIG, align 8
  %39 = icmp ne i64 %37, %38
  br i1 %39, label %40, label %43

40:                                               ; preds = %24
  %41 = load i64, i64* %8, align 8
  %42 = call i32 @errx(i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i64 %41)
  br label %43

43:                                               ; preds = %40, %24
  br label %44

44:                                               ; preds = %43
  %45 = load i64, i64* %8, align 8
  %46 = add i64 %45, 1
  store i64 %46, i64* %8, align 8
  br label %21

47:                                               ; preds = %21
  ret void
}

declare dso_local i32 @krb5_storage_truncate(i32*, i32) #1

declare dso_local i32 @krb5_store_uint32(i32*, i32) #1

declare dso_local i32 @krb5_storage_seek(i32*, i32, i32) #1

declare dso_local i64 @krb5_ret_data(i32*, i32*) #1

declare dso_local i32 @errx(i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
