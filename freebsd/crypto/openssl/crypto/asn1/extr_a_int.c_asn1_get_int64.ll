; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/asn1/extr_a_int.c_asn1_get_int64.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/asn1/extr_a_int.c_asn1_get_int64.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@INT64_MAX = common dso_local global i64 0, align 8
@ABS_INT64_MIN = common dso_local global i64 0, align 8
@ASN1_F_ASN1_GET_INT64 = common dso_local global i32 0, align 4
@ASN1_R_TOO_SMALL = common dso_local global i32 0, align 4
@ASN1_R_TOO_LARGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i64, i32)* @asn1_get_int64 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @asn1_get_int64(i32* %0, i8* %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store i32* %0, i32** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  %11 = load i8*, i8** %7, align 8
  %12 = load i64, i64* %8, align 8
  %13 = call i64 @asn1_get_uint64(i64* %10, i8* %11, i64 %12)
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %57

16:                                               ; preds = %4
  %17 = load i32, i32* %9, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %43

19:                                               ; preds = %16
  %20 = load i64, i64* %10, align 8
  %21 = load i64, i64* @INT64_MAX, align 8
  %22 = icmp sle i64 %20, %21
  br i1 %22, label %23, label %28

23:                                               ; preds = %19
  %24 = load i64, i64* %10, align 8
  %25 = trunc i64 %24 to i32
  %26 = sub nsw i32 0, %25
  %27 = load i32*, i32** %6, align 8
  store i32 %26, i32* %27, align 4
  br label %42

28:                                               ; preds = %19
  %29 = load i64, i64* %10, align 8
  %30 = load i64, i64* @ABS_INT64_MIN, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %37

32:                                               ; preds = %28
  %33 = load i64, i64* %10, align 8
  %34 = sub nsw i64 0, %33
  %35 = trunc i64 %34 to i32
  %36 = load i32*, i32** %6, align 8
  store i32 %35, i32* %36, align 4
  br label %41

37:                                               ; preds = %28
  %38 = load i32, i32* @ASN1_F_ASN1_GET_INT64, align 4
  %39 = load i32, i32* @ASN1_R_TOO_SMALL, align 4
  %40 = call i32 @ASN1err(i32 %38, i32 %39)
  store i32 0, i32* %5, align 4
  br label %57

41:                                               ; preds = %32
  br label %42

42:                                               ; preds = %41, %23
  br label %56

43:                                               ; preds = %16
  %44 = load i64, i64* %10, align 8
  %45 = load i64, i64* @INT64_MAX, align 8
  %46 = icmp sle i64 %44, %45
  br i1 %46, label %47, label %51

47:                                               ; preds = %43
  %48 = load i64, i64* %10, align 8
  %49 = trunc i64 %48 to i32
  %50 = load i32*, i32** %6, align 8
  store i32 %49, i32* %50, align 4
  br label %55

51:                                               ; preds = %43
  %52 = load i32, i32* @ASN1_F_ASN1_GET_INT64, align 4
  %53 = load i32, i32* @ASN1_R_TOO_LARGE, align 4
  %54 = call i32 @ASN1err(i32 %52, i32 %53)
  store i32 0, i32* %5, align 4
  br label %57

55:                                               ; preds = %47
  br label %56

56:                                               ; preds = %55, %42
  store i32 1, i32* %5, align 4
  br label %57

57:                                               ; preds = %56, %51, %37, %15
  %58 = load i32, i32* %5, align 4
  ret i32 %58
}

declare dso_local i64 @asn1_get_uint64(i64*, i8*, i64) #1

declare dso_local i32 @ASN1err(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
