; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/asn1/extr_der_put.c_der_put_integer.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/asn1/extr_der_put.c_der_put_integer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ASN1_OVERFLOW = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @der_put_integer(i8* %0, i64 %1, i32* %2, i64* %3) #0 {
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
  %16 = icmp sge i32 %15, 0
  br i1 %16, label %17, label %53

17:                                               ; preds = %4
  br label %18

18:                                               ; preds = %33, %17
  %19 = load i64, i64* %7, align 8
  %20 = icmp ult i64 %19, 1
  br i1 %20, label %21, label %23

21:                                               ; preds = %18
  %22 = load i32, i32* @ASN1_OVERFLOW, align 4
  store i32 %22, i32* %5, align 4
  br label %99

23:                                               ; preds = %18
  %24 = load i32, i32* %11, align 4
  %25 = srem i32 %24, 256
  %26 = trunc i32 %25 to i8
  %27 = load i8*, i8** %6, align 8
  %28 = getelementptr inbounds i8, i8* %27, i32 -1
  store i8* %28, i8** %6, align 8
  store i8 %26, i8* %27, align 1
  %29 = load i64, i64* %7, align 8
  %30 = add i64 %29, -1
  store i64 %30, i64* %7, align 8
  %31 = load i32, i32* %11, align 4
  %32 = sdiv i32 %31, 256
  store i32 %32, i32* %11, align 4
  br label %33

33:                                               ; preds = %23
  %34 = load i32, i32* %11, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %18, label %36

36:                                               ; preds = %33
  %37 = load i8*, i8** %6, align 8
  %38 = getelementptr inbounds i8, i8* %37, i64 1
  %39 = load i8, i8* %38, align 1
  %40 = zext i8 %39 to i32
  %41 = icmp sge i32 %40, 128
  br i1 %41, label %42, label %52

42:                                               ; preds = %36
  %43 = load i64, i64* %7, align 8
  %44 = icmp ult i64 %43, 1
  br i1 %44, label %45, label %47

45:                                               ; preds = %42
  %46 = load i32, i32* @ASN1_OVERFLOW, align 4
  store i32 %46, i32* %5, align 4
  br label %99

47:                                               ; preds = %42
  %48 = load i8*, i8** %6, align 8
  %49 = getelementptr inbounds i8, i8* %48, i32 -1
  store i8* %49, i8** %6, align 8
  store i8 0, i8* %48, align 1
  %50 = load i64, i64* %7, align 8
  %51 = add i64 %50, -1
  store i64 %51, i64* %7, align 8
  br label %52

52:                                               ; preds = %47, %36
  br label %92

53:                                               ; preds = %4
  %54 = load i32, i32* %11, align 4
  %55 = xor i32 %54, -1
  store i32 %55, i32* %11, align 4
  br label %56

56:                                               ; preds = %72, %53
  %57 = load i64, i64* %7, align 8
  %58 = icmp ult i64 %57, 1
  br i1 %58, label %59, label %61

59:                                               ; preds = %56
  %60 = load i32, i32* @ASN1_OVERFLOW, align 4
  store i32 %60, i32* %5, align 4
  br label %99

61:                                               ; preds = %56
  %62 = load i32, i32* %11, align 4
  %63 = srem i32 %62, 256
  %64 = xor i32 %63, -1
  %65 = trunc i32 %64 to i8
  %66 = load i8*, i8** %6, align 8
  %67 = getelementptr inbounds i8, i8* %66, i32 -1
  store i8* %67, i8** %6, align 8
  store i8 %65, i8* %66, align 1
  %68 = load i64, i64* %7, align 8
  %69 = add i64 %68, -1
  store i64 %69, i64* %7, align 8
  %70 = load i32, i32* %11, align 4
  %71 = sdiv i32 %70, 256
  store i32 %71, i32* %11, align 4
  br label %72

72:                                               ; preds = %61
  %73 = load i32, i32* %11, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %56, label %75

75:                                               ; preds = %72
  %76 = load i8*, i8** %6, align 8
  %77 = getelementptr inbounds i8, i8* %76, i64 1
  %78 = load i8, i8* %77, align 1
  %79 = zext i8 %78 to i32
  %80 = icmp slt i32 %79, 128
  br i1 %80, label %81, label %91

81:                                               ; preds = %75
  %82 = load i64, i64* %7, align 8
  %83 = icmp ult i64 %82, 1
  br i1 %83, label %84, label %86

84:                                               ; preds = %81
  %85 = load i32, i32* @ASN1_OVERFLOW, align 4
  store i32 %85, i32* %5, align 4
  br label %99

86:                                               ; preds = %81
  %87 = load i8*, i8** %6, align 8
  %88 = getelementptr inbounds i8, i8* %87, i32 -1
  store i8* %88, i8** %6, align 8
  store i8 -1, i8* %87, align 1
  %89 = load i64, i64* %7, align 8
  %90 = add i64 %89, -1
  store i64 %90, i64* %7, align 8
  br label %91

91:                                               ; preds = %86, %75
  br label %92

92:                                               ; preds = %91, %52
  %93 = load i8*, i8** %10, align 8
  %94 = load i8*, i8** %6, align 8
  %95 = ptrtoint i8* %93 to i64
  %96 = ptrtoint i8* %94 to i64
  %97 = sub i64 %95, %96
  %98 = load i64*, i64** %9, align 8
  store i64 %97, i64* %98, align 8
  store i32 0, i32* %5, align 4
  br label %99

99:                                               ; preds = %92, %84, %59, %45, %21
  %100 = load i32, i32* %5, align 4
  ret i32 %100
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
