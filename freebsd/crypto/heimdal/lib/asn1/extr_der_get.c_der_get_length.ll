; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/asn1/extr_der_get.c_der_get_length.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/asn1/extr_der_get.c_der_get_length.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ASN1_OVERRUN = common dso_local global i32 0, align 4
@ASN1_INDEFINITE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @der_get_length(i8* %0, i64 %1, i64* %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64* %2, i64** %8, align 8
  store i64* %3, i64** %9, align 8
  %14 = load i64, i64* %7, align 8
  %15 = icmp ule i64 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %4
  %17 = load i32, i32* @ASN1_OVERRUN, align 4
  store i32 %17, i32* %5, align 4
  br label %74

18:                                               ; preds = %4
  %19 = load i64, i64* %7, align 8
  %20 = add i64 %19, -1
  store i64 %20, i64* %7, align 8
  %21 = load i8*, i8** %6, align 8
  %22 = getelementptr inbounds i8, i8* %21, i32 1
  store i8* %22, i8** %6, align 8
  %23 = load i8, i8* %21, align 1
  %24 = zext i8 %23 to i64
  store i64 %24, i64* %10, align 8
  %25 = load i64, i64* %10, align 8
  %26 = icmp ult i64 %25, 128
  br i1 %26, label %27, label %35

27:                                               ; preds = %18
  %28 = load i64, i64* %10, align 8
  %29 = load i64*, i64** %8, align 8
  store i64 %28, i64* %29, align 8
  %30 = load i64*, i64** %9, align 8
  %31 = icmp ne i64* %30, null
  br i1 %31, label %32, label %34

32:                                               ; preds = %27
  %33 = load i64*, i64** %9, align 8
  store i64 1, i64* %33, align 8
  br label %34

34:                                               ; preds = %32, %27
  br label %73

35:                                               ; preds = %18
  %36 = load i64, i64* %10, align 8
  %37 = icmp eq i64 %36, 128
  br i1 %37, label %38, label %46

38:                                               ; preds = %35
  %39 = load i64, i64* @ASN1_INDEFINITE, align 8
  %40 = load i64*, i64** %8, align 8
  store i64 %39, i64* %40, align 8
  %41 = load i64*, i64** %9, align 8
  %42 = icmp ne i64* %41, null
  br i1 %42, label %43, label %45

43:                                               ; preds = %38
  %44 = load i64*, i64** %9, align 8
  store i64 1, i64* %44, align 8
  br label %45

45:                                               ; preds = %43, %38
  store i32 0, i32* %5, align 4
  br label %74

46:                                               ; preds = %35
  %47 = load i64, i64* %10, align 8
  %48 = and i64 %47, 127
  store i64 %48, i64* %10, align 8
  %49 = load i64, i64* %7, align 8
  %50 = load i64, i64* %10, align 8
  %51 = icmp ult i64 %49, %50
  br i1 %51, label %52, label %54

52:                                               ; preds = %46
  %53 = load i32, i32* @ASN1_OVERRUN, align 4
  store i32 %53, i32* %5, align 4
  br label %74

54:                                               ; preds = %46
  %55 = load i8*, i8** %6, align 8
  %56 = load i64, i64* %10, align 8
  %57 = call i32 @der_get_unsigned(i8* %55, i64 %56, i32* %13, i64* %12)
  store i32 %57, i32* %11, align 4
  %58 = load i32, i32* %11, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %54
  %61 = load i32, i32* %11, align 4
  store i32 %61, i32* %5, align 4
  br label %74

62:                                               ; preds = %54
  %63 = load i32, i32* %13, align 4
  %64 = zext i32 %63 to i64
  %65 = load i64*, i64** %8, align 8
  store i64 %64, i64* %65, align 8
  %66 = load i64*, i64** %9, align 8
  %67 = icmp ne i64* %66, null
  br i1 %67, label %68, label %72

68:                                               ; preds = %62
  %69 = load i64, i64* %12, align 8
  %70 = add i64 %69, 1
  %71 = load i64*, i64** %9, align 8
  store i64 %70, i64* %71, align 8
  br label %72

72:                                               ; preds = %68, %62
  br label %73

73:                                               ; preds = %72, %34
  store i32 0, i32* %5, align 4
  br label %74

74:                                               ; preds = %73, %60, %52, %45, %16
  %75 = load i32, i32* %5, align 4
  ret i32 %75
}

declare dso_local i32 @der_get_unsigned(i8*, i64, i32*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
