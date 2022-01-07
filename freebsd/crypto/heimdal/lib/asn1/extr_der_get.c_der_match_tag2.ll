; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/asn1/extr_der_get.c_der_match_tag2.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/asn1/extr_der_get.c_der_match_tag2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ASN1_BAD_ID = common dso_local global i32 0, align 4
@ASN1_MISPLACED_FIELD = common dso_local global i32 0, align 4
@ASN1_MISSING_FIELD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @der_match_tag2(i8* %0, i64 %1, i64 %2, i32* %3, i32 %4, i64* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i8* %0, i8** %8, align 8
  store i64 %1, i64* %9, align 8
  store i64 %2, i64* %10, align 8
  store i32* %3, i32** %11, align 8
  store i32 %4, i32* %12, align 4
  store i64* %5, i64** %13, align 8
  %18 = load i8*, i8** %8, align 8
  %19 = load i64, i64* %9, align 8
  %20 = load i32*, i32** %11, align 8
  %21 = call i32 @der_get_tag(i8* %18, i64 %19, i64* %15, i32* %20, i32* %16, i64* %14)
  store i32 %21, i32* %17, align 4
  %22 = load i32, i32* %17, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %6
  %25 = load i32, i32* %17, align 4
  store i32 %25, i32* %7, align 4
  br label %51

26:                                               ; preds = %6
  %27 = load i64, i64* %10, align 8
  %28 = load i64, i64* %15, align 8
  %29 = icmp ne i64 %27, %28
  br i1 %29, label %30, label %32

30:                                               ; preds = %26
  %31 = load i32, i32* @ASN1_BAD_ID, align 4
  store i32 %31, i32* %7, align 4
  br label %51

32:                                               ; preds = %26
  %33 = load i32, i32* %12, align 4
  %34 = load i32, i32* %16, align 4
  %35 = icmp ugt i32 %33, %34
  br i1 %35, label %36, label %38

36:                                               ; preds = %32
  %37 = load i32, i32* @ASN1_MISPLACED_FIELD, align 4
  store i32 %37, i32* %7, align 4
  br label %51

38:                                               ; preds = %32
  %39 = load i32, i32* %12, align 4
  %40 = load i32, i32* %16, align 4
  %41 = icmp ult i32 %39, %40
  br i1 %41, label %42, label %44

42:                                               ; preds = %38
  %43 = load i32, i32* @ASN1_MISSING_FIELD, align 4
  store i32 %43, i32* %7, align 4
  br label %51

44:                                               ; preds = %38
  %45 = load i64*, i64** %13, align 8
  %46 = icmp ne i64* %45, null
  br i1 %46, label %47, label %50

47:                                               ; preds = %44
  %48 = load i64, i64* %14, align 8
  %49 = load i64*, i64** %13, align 8
  store i64 %48, i64* %49, align 8
  br label %50

50:                                               ; preds = %47, %44
  store i32 0, i32* %7, align 4
  br label %51

51:                                               ; preds = %50, %42, %36, %30, %24
  %52 = load i32, i32* %7, align 4
  ret i32 %52
}

declare dso_local i32 @der_get_tag(i8*, i64, i64*, i32*, i32*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
