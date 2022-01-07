; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/asn1/extr_der_put.c_der_put_tag.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/asn1/extr_der_put.c_der_put_tag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ASN1_OVERFLOW = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @der_put_tag(i8* %0, i64 %1, i32 %2, i32 %3, i32 %4, i64* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store i8* %0, i8** %8, align 8
  store i64 %1, i64* %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i64* %5, i64** %13, align 8
  %16 = load i32, i32* %12, align 4
  %17 = icmp ule i32 %16, 30
  br i1 %17, label %18, label %31

18:                                               ; preds = %6
  %19 = load i64, i64* %9, align 8
  %20 = icmp ult i64 %19, 1
  br i1 %20, label %21, label %23

21:                                               ; preds = %18
  %22 = load i32, i32* @ASN1_OVERFLOW, align 4
  store i32 %22, i32* %7, align 4
  br label %71

23:                                               ; preds = %18
  %24 = load i32, i32* %10, align 4
  %25 = load i32, i32* %11, align 4
  %26 = load i32, i32* %12, align 4
  %27 = call i8* @MAKE_TAG(i32 %24, i32 %25, i32 %26)
  %28 = ptrtoint i8* %27 to i8
  %29 = load i8*, i8** %8, align 8
  store i8 %28, i8* %29, align 1
  %30 = load i64*, i64** %13, align 8
  store i64 1, i64* %30, align 8
  br label %70

31:                                               ; preds = %6
  store i64 0, i64* %14, align 8
  store i32 0, i32* %15, align 4
  br label %32

32:                                               ; preds = %51, %31
  %33 = load i64, i64* %9, align 8
  %34 = icmp ult i64 %33, 1
  br i1 %34, label %35, label %37

35:                                               ; preds = %32
  %36 = load i32, i32* @ASN1_OVERFLOW, align 4
  store i32 %36, i32* %7, align 4
  br label %71

37:                                               ; preds = %32
  %38 = load i32, i32* %12, align 4
  %39 = urem i32 %38, 128
  %40 = load i32, i32* %15, align 4
  %41 = or i32 %39, %40
  %42 = trunc i32 %41 to i8
  %43 = load i8*, i8** %8, align 8
  %44 = getelementptr inbounds i8, i8* %43, i32 -1
  store i8* %44, i8** %8, align 8
  store i8 %42, i8* %43, align 1
  %45 = load i64, i64* %9, align 8
  %46 = add i64 %45, -1
  store i64 %46, i64* %9, align 8
  %47 = load i64, i64* %14, align 8
  %48 = add i64 %47, 1
  store i64 %48, i64* %14, align 8
  %49 = load i32, i32* %12, align 4
  %50 = udiv i32 %49, 128
  store i32 %50, i32* %12, align 4
  store i32 128, i32* %15, align 4
  br label %51

51:                                               ; preds = %37
  %52 = load i32, i32* %12, align 4
  %53 = icmp ugt i32 %52, 0
  br i1 %53, label %32, label %54

54:                                               ; preds = %51
  %55 = load i64, i64* %9, align 8
  %56 = icmp ult i64 %55, 1
  br i1 %56, label %57, label %59

57:                                               ; preds = %54
  %58 = load i32, i32* @ASN1_OVERFLOW, align 4
  store i32 %58, i32* %7, align 4
  br label %71

59:                                               ; preds = %54
  %60 = load i32, i32* %10, align 4
  %61 = load i32, i32* %11, align 4
  %62 = call i8* @MAKE_TAG(i32 %60, i32 %61, i32 31)
  %63 = ptrtoint i8* %62 to i8
  %64 = load i8*, i8** %8, align 8
  %65 = getelementptr inbounds i8, i8* %64, i32 -1
  store i8* %65, i8** %8, align 8
  store i8 %63, i8* %64, align 1
  %66 = load i64, i64* %14, align 8
  %67 = add i64 %66, 1
  store i64 %67, i64* %14, align 8
  %68 = load i64, i64* %14, align 8
  %69 = load i64*, i64** %13, align 8
  store i64 %68, i64* %69, align 8
  br label %70

70:                                               ; preds = %59, %23
  store i32 0, i32* %7, align 4
  br label %71

71:                                               ; preds = %70, %57, %35, %21
  %72 = load i32, i32* %7, align 4
  ret i32 %72
}

declare dso_local i8* @MAKE_TAG(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
