; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/asn1/extr_der_get.c_der_get_tag.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/asn1/extr_der_get.c_der_get_tag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ASN1_OVERRUN = common dso_local global i32 0, align 4
@ASN1_OVERFLOW = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @der_get_tag(i8* %0, i64 %1, i64* %2, i64* %3, i32* %4, i64* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i64*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i8* %0, i8** %8, align 8
  store i64 %1, i64* %9, align 8
  store i64* %2, i64** %10, align 8
  store i64* %3, i64** %11, align 8
  store i32* %4, i32** %12, align 8
  store i64* %5, i64** %13, align 8
  store i64 0, i64* %14, align 8
  %17 = load i64, i64* %9, align 8
  %18 = icmp ult i64 %17, 1
  br i1 %18, label %19, label %21

19:                                               ; preds = %6
  %20 = load i32, i32* @ASN1_OVERRUN, align 4
  store i32 %20, i32* %7, align 4
  br label %96

21:                                               ; preds = %6
  %22 = load i8*, i8** %8, align 8
  %23 = load i8, i8* %22, align 1
  %24 = zext i8 %23 to i32
  %25 = ashr i32 %24, 6
  %26 = and i32 %25, 3
  %27 = sext i32 %26 to i64
  %28 = load i64*, i64** %10, align 8
  store i64 %27, i64* %28, align 8
  %29 = load i8*, i8** %8, align 8
  %30 = load i8, i8* %29, align 1
  %31 = zext i8 %30 to i32
  %32 = ashr i32 %31, 5
  %33 = and i32 %32, 1
  %34 = sext i32 %33 to i64
  %35 = load i64*, i64** %11, align 8
  store i64 %34, i64* %35, align 8
  %36 = load i8*, i8** %8, align 8
  %37 = load i8, i8* %36, align 1
  %38 = zext i8 %37 to i32
  %39 = and i32 %38, 31
  %40 = load i32*, i32** %12, align 8
  store i32 %39, i32* %40, align 4
  %41 = load i8*, i8** %8, align 8
  %42 = getelementptr inbounds i8, i8* %41, i32 1
  store i8* %42, i8** %8, align 8
  %43 = load i64, i64* %9, align 8
  %44 = add i64 %43, -1
  store i64 %44, i64* %9, align 8
  %45 = load i64, i64* %14, align 8
  %46 = add i64 %45, 1
  store i64 %46, i64* %14, align 8
  %47 = load i32*, i32** %12, align 8
  %48 = load i32, i32* %47, align 4
  %49 = icmp eq i32 %48, 31
  br i1 %49, label %50, label %89

50:                                               ; preds = %21
  %51 = load i32*, i32** %12, align 8
  store i32 0, i32* %51, align 4
  br label %52

52:                                               ; preds = %85, %50
  %53 = load i64, i64* %9, align 8
  %54 = icmp ult i64 %53, 1
  br i1 %54, label %55, label %57

55:                                               ; preds = %52
  %56 = load i32, i32* @ASN1_OVERRUN, align 4
  store i32 %56, i32* %7, align 4
  br label %96

57:                                               ; preds = %52
  %58 = load i8*, i8** %8, align 8
  %59 = load i8, i8* %58, align 1
  %60 = zext i8 %59 to i32
  %61 = and i32 %60, 128
  store i32 %61, i32* %15, align 4
  %62 = load i32*, i32** %12, align 8
  %63 = load i32, i32* %62, align 4
  %64 = mul i32 %63, 128
  %65 = load i8*, i8** %8, align 8
  %66 = load i8, i8* %65, align 1
  %67 = zext i8 %66 to i32
  %68 = srem i32 %67, 128
  %69 = add i32 %64, %68
  store i32 %69, i32* %16, align 4
  %70 = load i32, i32* %16, align 4
  %71 = load i32*, i32** %12, align 8
  %72 = load i32, i32* %71, align 4
  %73 = icmp ult i32 %70, %72
  br i1 %73, label %74, label %76

74:                                               ; preds = %57
  %75 = load i32, i32* @ASN1_OVERFLOW, align 4
  store i32 %75, i32* %7, align 4
  br label %96

76:                                               ; preds = %57
  %77 = load i32, i32* %16, align 4
  %78 = load i32*, i32** %12, align 8
  store i32 %77, i32* %78, align 4
  %79 = load i8*, i8** %8, align 8
  %80 = getelementptr inbounds i8, i8* %79, i32 1
  store i8* %80, i8** %8, align 8
  %81 = load i64, i64* %9, align 8
  %82 = add i64 %81, -1
  store i64 %82, i64* %9, align 8
  %83 = load i64, i64* %14, align 8
  %84 = add i64 %83, 1
  store i64 %84, i64* %14, align 8
  br label %85

85:                                               ; preds = %76
  %86 = load i32, i32* %15, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %52, label %88

88:                                               ; preds = %85
  br label %89

89:                                               ; preds = %88, %21
  %90 = load i64*, i64** %13, align 8
  %91 = icmp ne i64* %90, null
  br i1 %91, label %92, label %95

92:                                               ; preds = %89
  %93 = load i64, i64* %14, align 8
  %94 = load i64*, i64** %13, align 8
  store i64 %93, i64* %94, align 8
  br label %95

95:                                               ; preds = %92, %89
  store i32 0, i32* %7, align 4
  br label %96

96:                                               ; preds = %95, %74, %55, %19
  %97 = load i32, i32* %7, align 4
  ret i32 %97
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
