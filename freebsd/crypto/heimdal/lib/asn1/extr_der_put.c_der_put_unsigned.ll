; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/asn1/extr_der_put.c_der_put_unsigned.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/asn1/extr_der_put.c_der_put_unsigned.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ASN1_OVERFLOW = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @der_put_unsigned(i8* %0, i64 %1, i32* %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i64 %1, i64* %7, align 8
  store i32* %2, i32** %8, align 8
  store i64* %3, i64** %9, align 8
  %12 = load i8*, i8** %6, align 8
  store i8* %12, i8** %10, align 8
  %13 = load i32*, i32** %8, align 8
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %11, align 4
  %15 = load i32, i32* %11, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %62

17:                                               ; preds = %4
  br label %18

18:                                               ; preds = %26, %17
  %19 = load i64, i64* %7, align 8
  %20 = icmp ugt i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %18
  %22 = load i32, i32* %11, align 4
  %23 = icmp ne i32 %22, 0
  br label %24

24:                                               ; preds = %21, %18
  %25 = phi i1 [ false, %18 ], [ %23, %21 ]
  br i1 %25, label %26, label %36

26:                                               ; preds = %24
  %27 = load i32, i32* %11, align 4
  %28 = urem i32 %27, 256
  %29 = trunc i32 %28 to i8
  %30 = load i8*, i8** %6, align 8
  %31 = getelementptr inbounds i8, i8* %30, i32 -1
  store i8* %31, i8** %6, align 8
  store i8 %29, i8* %30, align 1
  %32 = load i32, i32* %11, align 4
  %33 = udiv i32 %32, 256
  store i32 %33, i32* %11, align 4
  %34 = load i64, i64* %7, align 8
  %35 = add i64 %34, -1
  store i64 %35, i64* %7, align 8
  br label %18

36:                                               ; preds = %24
  %37 = load i32, i32* %11, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %36
  %40 = load i32, i32* @ASN1_OVERFLOW, align 4
  store i32 %40, i32* %5, align 4
  br label %70

41:                                               ; preds = %36
  %42 = load i8*, i8** %6, align 8
  %43 = getelementptr inbounds i8, i8* %42, i64 1
  %44 = load i8, i8* %43, align 1
  %45 = zext i8 %44 to i32
  %46 = icmp sge i32 %45, 128
  br i1 %46, label %47, label %55

47:                                               ; preds = %41
  %48 = load i64, i64* %7, align 8
  %49 = icmp ult i64 %48, 1
  br i1 %49, label %50, label %52

50:                                               ; preds = %47
  %51 = load i32, i32* @ASN1_OVERFLOW, align 4
  store i32 %51, i32* %5, align 4
  br label %70

52:                                               ; preds = %47
  %53 = load i8*, i8** %6, align 8
  %54 = getelementptr inbounds i8, i8* %53, i32 -1
  store i8* %54, i8** %6, align 8
  store i8 0, i8* %53, align 1
  br label %55

55:                                               ; preds = %52, %41
  %56 = load i8*, i8** %10, align 8
  %57 = load i8*, i8** %6, align 8
  %58 = ptrtoint i8* %56 to i64
  %59 = ptrtoint i8* %57 to i64
  %60 = sub i64 %58, %59
  %61 = load i64*, i64** %9, align 8
  store i64 %60, i64* %61, align 8
  store i32 0, i32* %5, align 4
  br label %70

62:                                               ; preds = %4
  %63 = load i64, i64* %7, align 8
  %64 = icmp ult i64 %63, 1
  br i1 %64, label %65, label %67

65:                                               ; preds = %62
  %66 = load i32, i32* @ASN1_OVERFLOW, align 4
  store i32 %66, i32* %5, align 4
  br label %70

67:                                               ; preds = %62
  %68 = load i8*, i8** %6, align 8
  store i8 0, i8* %68, align 1
  %69 = load i64*, i64** %9, align 8
  store i64 1, i64* %69, align 8
  store i32 0, i32* %5, align 4
  br label %70

70:                                               ; preds = %67, %65, %55, %50, %39
  %71 = load i32, i32* %5, align 4
  ret i32 %71
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
