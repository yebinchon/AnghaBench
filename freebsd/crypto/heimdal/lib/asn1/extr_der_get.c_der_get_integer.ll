; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/asn1/extr_der_get.c_der_get_integer.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/asn1/extr_der_get.c_der_get_integer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ASN1_OVERRUN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @der_get_integer(i8* %0, i64 %1, i32* %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store i8* %0, i8** %6, align 8
  store i64 %1, i64* %7, align 8
  store i32* %2, i32** %8, align 8
  store i64* %3, i64** %9, align 8
  store i32 0, i32* %10, align 4
  %12 = load i64, i64* %7, align 8
  store i64 %12, i64* %11, align 8
  %13 = load i64, i64* %7, align 8
  %14 = icmp ugt i64 %13, 4
  br i1 %14, label %15, label %17

15:                                               ; preds = %4
  %16 = load i32, i32* @ASN1_OVERRUN, align 4
  store i32 %16, i32* %5, align 4
  br label %47

17:                                               ; preds = %4
  %18 = load i64, i64* %7, align 8
  %19 = icmp ugt i64 %18, 0
  br i1 %19, label %20, label %38

20:                                               ; preds = %17
  %21 = load i8*, i8** %6, align 8
  %22 = getelementptr inbounds i8, i8* %21, i32 1
  store i8* %22, i8** %6, align 8
  %23 = load i8, i8* %21, align 1
  %24 = sext i8 %23 to i32
  store i32 %24, i32* %10, align 4
  br label %25

25:                                               ; preds = %29, %20
  %26 = load i64, i64* %7, align 8
  %27 = add i64 %26, -1
  store i64 %27, i64* %7, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %37

29:                                               ; preds = %25
  %30 = load i32, i32* %10, align 4
  %31 = mul nsw i32 %30, 256
  %32 = load i8*, i8** %6, align 8
  %33 = getelementptr inbounds i8, i8* %32, i32 1
  store i8* %33, i8** %6, align 8
  %34 = load i8, i8* %32, align 1
  %35 = zext i8 %34 to i32
  %36 = add nsw i32 %31, %35
  store i32 %36, i32* %10, align 4
  br label %25

37:                                               ; preds = %25
  br label %38

38:                                               ; preds = %37, %17
  %39 = load i32, i32* %10, align 4
  %40 = load i32*, i32** %8, align 8
  store i32 %39, i32* %40, align 4
  %41 = load i64*, i64** %9, align 8
  %42 = icmp ne i64* %41, null
  br i1 %42, label %43, label %46

43:                                               ; preds = %38
  %44 = load i64, i64* %11, align 8
  %45 = load i64*, i64** %9, align 8
  store i64 %44, i64* %45, align 8
  br label %46

46:                                               ; preds = %43, %38
  store i32 0, i32* %5, align 4
  br label %47

47:                                               ; preds = %46, %15
  %48 = load i32, i32* %5, align 4
  ret i32 %48
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
