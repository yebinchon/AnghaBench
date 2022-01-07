; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/asn1/extr_der_put.c_der_put_universal_string.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/asn1/extr_der_put.c_der_put_universal_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32* }

@ASN1_OVERFLOW = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @der_put_universal_string(i8* %0, i64 %1, %struct.TYPE_3__* %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_3__*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64, align 8
  store i8* %0, i8** %6, align 8
  store i64 %1, i64* %7, align 8
  store %struct.TYPE_3__* %2, %struct.TYPE_3__** %8, align 8
  store i64* %3, i64** %9, align 8
  %11 = load i64, i64* %7, align 8
  %12 = udiv i64 %11, 4
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp ult i64 %12, %15
  br i1 %16, label %17, label %19

17:                                               ; preds = %4
  %18 = load i32, i32* @ASN1_OVERFLOW, align 4
  store i32 %18, i32* %5, align 4
  br label %92

19:                                               ; preds = %4
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = mul i64 %22, 4
  %24 = load i8*, i8** %6, align 8
  %25 = sub i64 0, %23
  %26 = getelementptr inbounds i8, i8* %24, i64 %25
  store i8* %26, i8** %6, align 8
  store i64 0, i64* %10, align 8
  br label %27

27:                                               ; preds = %79, %19
  %28 = load i64, i64* %10, align 8
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp ult i64 %28, %31
  br i1 %32, label %33, label %82

33:                                               ; preds = %27
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 1
  %36 = load i32*, i32** %35, align 8
  %37 = load i64, i64* %10, align 8
  %38 = getelementptr inbounds i32, i32* %36, i64 %37
  %39 = load i32, i32* %38, align 4
  %40 = ashr i32 %39, 24
  %41 = and i32 %40, 255
  %42 = trunc i32 %41 to i8
  %43 = load i8*, i8** %6, align 8
  %44 = getelementptr inbounds i8, i8* %43, i64 1
  store i8 %42, i8* %44, align 1
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 1
  %47 = load i32*, i32** %46, align 8
  %48 = load i64, i64* %10, align 8
  %49 = getelementptr inbounds i32, i32* %47, i64 %48
  %50 = load i32, i32* %49, align 4
  %51 = ashr i32 %50, 16
  %52 = and i32 %51, 255
  %53 = trunc i32 %52 to i8
  %54 = load i8*, i8** %6, align 8
  %55 = getelementptr inbounds i8, i8* %54, i64 2
  store i8 %53, i8* %55, align 1
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 1
  %58 = load i32*, i32** %57, align 8
  %59 = load i64, i64* %10, align 8
  %60 = getelementptr inbounds i32, i32* %58, i64 %59
  %61 = load i32, i32* %60, align 4
  %62 = ashr i32 %61, 8
  %63 = and i32 %62, 255
  %64 = trunc i32 %63 to i8
  %65 = load i8*, i8** %6, align 8
  %66 = getelementptr inbounds i8, i8* %65, i64 3
  store i8 %64, i8* %66, align 1
  %67 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 1
  %69 = load i32*, i32** %68, align 8
  %70 = load i64, i64* %10, align 8
  %71 = getelementptr inbounds i32, i32* %69, i64 %70
  %72 = load i32, i32* %71, align 4
  %73 = and i32 %72, 255
  %74 = trunc i32 %73 to i8
  %75 = load i8*, i8** %6, align 8
  %76 = getelementptr inbounds i8, i8* %75, i64 4
  store i8 %74, i8* %76, align 1
  %77 = load i8*, i8** %6, align 8
  %78 = getelementptr inbounds i8, i8* %77, i64 4
  store i8* %78, i8** %6, align 8
  br label %79

79:                                               ; preds = %33
  %80 = load i64, i64* %10, align 8
  %81 = add i64 %80, 1
  store i64 %81, i64* %10, align 8
  br label %27

82:                                               ; preds = %27
  %83 = load i64*, i64** %9, align 8
  %84 = icmp ne i64* %83, null
  br i1 %84, label %85, label %91

85:                                               ; preds = %82
  %86 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = mul i64 %88, 4
  %90 = load i64*, i64** %9, align 8
  store i64 %89, i64* %90, align 8
  br label %91

91:                                               ; preds = %85, %82
  store i32 0, i32* %5, align 4
  br label %92

92:                                               ; preds = %91, %17
  %93 = load i32, i32* %5, align 4
  ret i32 %93
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
