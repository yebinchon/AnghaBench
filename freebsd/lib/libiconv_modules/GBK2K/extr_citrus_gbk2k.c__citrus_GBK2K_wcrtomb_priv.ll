; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libiconv_modules/GBK2K/extr_citrus_gbk2k.c__citrus_GBK2K_wcrtomb_priv.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libiconv_modules/GBK2K/extr_citrus_gbk2k.c__citrus_GBK2K_wcrtomb_priv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i64, i32 }

@EINVAL = common dso_local global i32 0, align 4
@E2BIG = common dso_local global i32 0, align 4
@EILSEQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, i8*, i64, i32, %struct.TYPE_5__*, i64*)* @_citrus_GBK2K_wcrtomb_priv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_citrus_GBK2K_wcrtomb_priv(%struct.TYPE_6__* noalias %0, i8* noalias %1, i64 %2, i32 %3, %struct.TYPE_5__* noalias %4, i64* noalias %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_6__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_5__*, align 8
  %13 = alloca i64*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %8, align 8
  store i8* %1, i8** %9, align 8
  store i64 %2, i64* %10, align 8
  store i32 %3, i32* %11, align 4
  store %struct.TYPE_5__* %4, %struct.TYPE_5__** %12, align 8
  store i64* %5, i64** %13, align 8
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %6
  %21 = load i32, i32* @EINVAL, align 4
  store i32 %21, i32* %15, align 4
  br label %100

22:                                               ; preds = %6
  %23 = load i32, i32* %11, align 4
  %24 = call i64 @_mb_count(i32 %23)
  store i64 %24, i64* %14, align 8
  %25 = load i64, i64* %10, align 8
  %26 = load i64, i64* %14, align 8
  %27 = icmp ult i64 %25, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %22
  %29 = load i32, i32* @E2BIG, align 4
  store i32 %29, i32* %15, align 4
  br label %100

30:                                               ; preds = %22
  %31 = load i64, i64* %14, align 8
  switch i64 %31, label %85 [
    i64 1, label %32
    i64 2, label %40
    i64 4, label %54
  ]

32:                                               ; preds = %30
  %33 = load i32, i32* %11, align 4
  %34 = call i32 @_PUSH_PSENC(i32 %33)
  %35 = call i32 @_mb_singlebyte(i32 %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %39, label %37

37:                                               ; preds = %32
  %38 = load i32, i32* @EILSEQ, align 4
  store i32 %38, i32* %15, align 4
  br label %100

39:                                               ; preds = %32
  br label %85

40:                                               ; preds = %30
  %41 = load i32, i32* %11, align 4
  %42 = ashr i32 %41, 8
  %43 = call i32 @_PUSH_PSENC(i32 %42)
  %44 = call i32 @_mb_leadbyte(i32 %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %51

46:                                               ; preds = %40
  %47 = load i32, i32* %11, align 4
  %48 = call i32 @_PUSH_PSENC(i32 %47)
  %49 = call i32 @_mb_trailbyte(i32 %48)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %53, label %51

51:                                               ; preds = %46, %40
  %52 = load i32, i32* @EILSEQ, align 4
  store i32 %52, i32* %15, align 4
  br label %100

53:                                               ; preds = %46
  br label %85

54:                                               ; preds = %30
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = icmp ne i32 %57, 4
  br i1 %58, label %82, label %59

59:                                               ; preds = %54
  %60 = load i32, i32* %11, align 4
  %61 = ashr i32 %60, 24
  %62 = call i32 @_PUSH_PSENC(i32 %61)
  %63 = call i32 @_mb_leadbyte(i32 %62)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %82

65:                                               ; preds = %59
  %66 = load i32, i32* %11, align 4
  %67 = ashr i32 %66, 16
  %68 = call i32 @_PUSH_PSENC(i32 %67)
  %69 = call i32 @_mb_surrogate(i32 %68)
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %82

71:                                               ; preds = %65
  %72 = load i32, i32* %11, align 4
  %73 = ashr i32 %72, 8
  %74 = call i32 @_PUSH_PSENC(i32 %73)
  %75 = call i32 @_mb_leadbyte(i32 %74)
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %82

77:                                               ; preds = %71
  %78 = load i32, i32* %11, align 4
  %79 = call i32 @_PUSH_PSENC(i32 %78)
  %80 = call i32 @_mb_surrogate(i32 %79)
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %84, label %82

82:                                               ; preds = %77, %71, %65, %59, %54
  %83 = load i32, i32* @EILSEQ, align 4
  store i32 %83, i32* %15, align 4
  br label %100

84:                                               ; preds = %77
  br label %85

85:                                               ; preds = %30, %84, %53, %39
  %86 = load i8*, i8** %9, align 8
  %87 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %88 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 8
  %90 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = call i32 @memcpy(i8* %86, i32 %89, i64 %92)
  %94 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %95 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = load i64*, i64** %13, align 8
  store i64 %96, i64* %97, align 8
  %98 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %99 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %98, i32 0, i32 0
  store i64 0, i64* %99, align 8
  store i32 0, i32* %7, align 4
  br label %103

100:                                              ; preds = %82, %51, %37, %28, %20
  %101 = load i64*, i64** %13, align 8
  store i64 -1, i64* %101, align 8
  %102 = load i32, i32* %15, align 4
  store i32 %102, i32* %7, align 4
  br label %103

103:                                              ; preds = %100, %85
  %104 = load i32, i32* %7, align 4
  ret i32 %104
}

declare dso_local i64 @_mb_count(i32) #1

declare dso_local i32 @_mb_singlebyte(i32) #1

declare dso_local i32 @_PUSH_PSENC(i32) #1

declare dso_local i32 @_mb_leadbyte(i32) #1

declare dso_local i32 @_mb_trailbyte(i32) #1

declare dso_local i32 @_mb_surrogate(i32) #1

declare dso_local i32 @memcpy(i8*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
