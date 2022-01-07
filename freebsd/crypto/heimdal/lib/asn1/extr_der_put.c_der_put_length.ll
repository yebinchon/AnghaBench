; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/asn1/extr_der_put.c_der_put_length.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/asn1/extr_der_put.c_der_put_length.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ASN1_OVERFLOW = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @der_put_length(i8* %0, i64 %1, i64 %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64, align 8
  store i8* %0, i8** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i64* %3, i64** %9, align 8
  %11 = load i64, i64* %7, align 8
  %12 = icmp ult i64 %11, 1
  br i1 %12, label %13, label %15

13:                                               ; preds = %4
  %14 = load i32, i32* @ASN1_OVERFLOW, align 4
  store i32 %14, i32* %5, align 4
  br label %57

15:                                               ; preds = %4
  %16 = load i64, i64* %8, align 8
  %17 = icmp ult i64 %16, 128
  br i1 %17, label %18, label %23

18:                                               ; preds = %15
  %19 = load i64, i64* %8, align 8
  %20 = trunc i64 %19 to i8
  %21 = load i8*, i8** %6, align 8
  store i8 %20, i8* %21, align 1
  %22 = load i64*, i64** %9, align 8
  store i64 1, i64* %22, align 8
  br label %56

23:                                               ; preds = %15
  store i64 0, i64* %10, align 8
  br label %24

24:                                               ; preds = %32, %23
  %25 = load i64, i64* %8, align 8
  %26 = icmp ugt i64 %25, 0
  br i1 %26, label %27, label %44

27:                                               ; preds = %24
  %28 = load i64, i64* %7, align 8
  %29 = icmp ult i64 %28, 2
  br i1 %29, label %30, label %32

30:                                               ; preds = %27
  %31 = load i32, i32* @ASN1_OVERFLOW, align 4
  store i32 %31, i32* %5, align 4
  br label %57

32:                                               ; preds = %27
  %33 = load i64, i64* %8, align 8
  %34 = urem i64 %33, 256
  %35 = trunc i64 %34 to i8
  %36 = load i8*, i8** %6, align 8
  %37 = getelementptr inbounds i8, i8* %36, i32 -1
  store i8* %37, i8** %6, align 8
  store i8 %35, i8* %36, align 1
  %38 = load i64, i64* %8, align 8
  %39 = udiv i64 %38, 256
  store i64 %39, i64* %8, align 8
  %40 = load i64, i64* %7, align 8
  %41 = add i64 %40, -1
  store i64 %41, i64* %7, align 8
  %42 = load i64, i64* %10, align 8
  %43 = add i64 %42, 1
  store i64 %43, i64* %10, align 8
  br label %24

44:                                               ; preds = %24
  %45 = load i64, i64* %10, align 8
  %46 = or i64 128, %45
  %47 = trunc i64 %46 to i8
  %48 = load i8*, i8** %6, align 8
  store i8 %47, i8* %48, align 1
  %49 = load i64*, i64** %9, align 8
  %50 = icmp ne i64* %49, null
  br i1 %50, label %51, label %55

51:                                               ; preds = %44
  %52 = load i64, i64* %10, align 8
  %53 = add i64 %52, 1
  %54 = load i64*, i64** %9, align 8
  store i64 %53, i64* %54, align 8
  br label %55

55:                                               ; preds = %51, %44
  br label %56

56:                                               ; preds = %55, %18
  store i32 0, i32* %5, align 4
  br label %57

57:                                               ; preds = %56, %30, %13
  %58 = load i32, i32* %5, align 4
  ret i32 %58
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
