; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libiconv_modules/MSKanji/extr_citrus_mskanji.c__citrus_MSKanji_stdenc_wctocs.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libiconv_modules/MSKanji/extr_citrus_mskanji.c__citrus_MSKanji_stdenc_wctocs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@EILSEQ = common dso_local global i32 0, align 4
@MODE_JIS2004 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, i32*, i32*, i64)* @_citrus_MSKanji_stdenc_wctocs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_citrus_MSKanji_stdenc_wctocs(%struct.TYPE_3__* noalias %0, i32* noalias %1, i32* noalias %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i64 %3, i64* %9, align 8
  %13 = load i64, i64* %9, align 8
  %14 = trunc i64 %13 to i32
  %15 = icmp slt i32 %14, 128
  br i1 %15, label %16, label %21

16:                                               ; preds = %4
  %17 = load i32*, i32** %7, align 8
  store i32 0, i32* %17, align 4
  %18 = load i64, i64* %9, align 8
  %19 = trunc i64 %18 to i32
  %20 = load i32*, i32** %8, align 8
  store i32 %19, i32* %20, align 4
  br label %120

21:                                               ; preds = %4
  %22 = load i64, i64* %9, align 8
  %23 = trunc i64 %22 to i32
  %24 = icmp slt i32 %23, 256
  br i1 %24, label %25, label %31

25:                                               ; preds = %21
  %26 = load i32*, i32** %7, align 8
  store i32 1, i32* %26, align 4
  %27 = load i64, i64* %9, align 8
  %28 = trunc i64 %27 to i32
  %29 = and i32 %28, 127
  %30 = load i32*, i32** %8, align 8
  store i32 %29, i32* %30, align 4
  br label %119

31:                                               ; preds = %21
  %32 = load i64, i64* %9, align 8
  %33 = trunc i64 %32 to i32
  %34 = ashr i32 %33, 8
  %35 = and i32 %34, 255
  store i32 %35, i32* %11, align 4
  %36 = load i64, i64* %9, align 8
  %37 = trunc i64 %36 to i32
  %38 = and i32 %37, 255
  store i32 %38, i32* %10, align 4
  %39 = load i32, i32* %11, align 4
  %40 = call i32 @_mskanji1(i32 %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %31
  %43 = load i32, i32* %10, align 4
  %44 = call i32 @_mskanji2(i32 %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %48, label %46

46:                                               ; preds = %42, %31
  %47 = load i32, i32* @EILSEQ, align 4
  store i32 %47, i32* %5, align 4
  br label %121

48:                                               ; preds = %42
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @MODE_JIS2004, align 4
  %53 = and i32 %51, %52
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %58, label %55

55:                                               ; preds = %48
  %56 = load i32, i32* %11, align 4
  %57 = icmp slt i32 %56, 240
  br i1 %57, label %58, label %60

58:                                               ; preds = %55, %48
  %59 = load i32*, i32** %7, align 8
  store i32 2, i32* %59, align 4
  store i32 129, i32* %12, align 4
  br label %85

60:                                               ; preds = %55
  %61 = load i32*, i32** %7, align 8
  store i32 3, i32* %61, align 4
  %62 = load i64, i64* %9, align 8
  %63 = trunc i64 %62 to i32
  %64 = icmp sle i32 %63, 62622
  br i1 %64, label %65, label %83

65:                                               ; preds = %60
  %66 = load i64, i64* %9, align 8
  %67 = trunc i64 %66 to i32
  %68 = icmp sge i32 %67, 62111
  br i1 %68, label %79, label %69

69:                                               ; preds = %65
  %70 = load i64, i64* %9, align 8
  %71 = trunc i64 %70 to i32
  %72 = icmp sge i32 %71, 61599
  br i1 %72, label %73, label %77

73:                                               ; preds = %69
  %74 = load i64, i64* %9, align 8
  %75 = trunc i64 %74 to i32
  %76 = icmp sle i32 %75, 61692
  br label %77

77:                                               ; preds = %73, %69
  %78 = phi i1 [ false, %69 ], [ %76, %73 ]
  br label %79

79:                                               ; preds = %77, %65
  %80 = phi i1 [ true, %65 ], [ %78, %77 ]
  %81 = zext i1 %80 to i64
  %82 = select i1 %80, i32 237, i32 240
  store i32 %82, i32* %12, align 4
  br label %84

83:                                               ; preds = %60
  store i32 206, i32* %12, align 4
  br label %84

84:                                               ; preds = %83, %79
  br label %85

85:                                               ; preds = %84, %58
  %86 = load i32, i32* %12, align 4
  %87 = load i32, i32* %11, align 4
  %88 = sub nsw i32 %87, %86
  store i32 %88, i32* %11, align 4
  %89 = load i32, i32* %11, align 4
  %90 = icmp sge i32 %89, 95
  br i1 %90, label %91, label %94

91:                                               ; preds = %85
  %92 = load i32, i32* %11, align 4
  %93 = sub nsw i32 %92, 64
  store i32 %93, i32* %11, align 4
  br label %94

94:                                               ; preds = %91, %85
  %95 = load i32, i32* %11, align 4
  %96 = mul nsw i32 %95, 2
  %97 = add nsw i32 %96, 33
  store i32 %97, i32* %11, align 4
  %98 = load i32, i32* %10, align 4
  %99 = sub nsw i32 %98, 31
  store i32 %99, i32* %10, align 4
  %100 = load i32, i32* %10, align 4
  %101 = icmp sge i32 %100, 97
  br i1 %101, label %102, label %105

102:                                              ; preds = %94
  %103 = load i32, i32* %10, align 4
  %104 = sub nsw i32 %103, 1
  store i32 %104, i32* %10, align 4
  br label %105

105:                                              ; preds = %102, %94
  %106 = load i32, i32* %10, align 4
  %107 = icmp sgt i32 %106, 126
  br i1 %107, label %108, label %113

108:                                              ; preds = %105
  %109 = load i32, i32* %11, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %11, align 4
  %111 = load i32, i32* %10, align 4
  %112 = sub nsw i32 %111, 94
  store i32 %112, i32* %10, align 4
  br label %113

113:                                              ; preds = %108, %105
  %114 = load i32, i32* %11, align 4
  %115 = shl i32 %114, 8
  %116 = load i32, i32* %10, align 4
  %117 = or i32 %115, %116
  %118 = load i32*, i32** %8, align 8
  store i32 %117, i32* %118, align 4
  br label %119

119:                                              ; preds = %113, %25
  br label %120

120:                                              ; preds = %119, %16
  store i32 0, i32* %5, align 4
  br label %121

121:                                              ; preds = %120, %46
  %122 = load i32, i32* %5, align 4
  ret i32 %122
}

declare dso_local i32 @_mskanji1(i32) #1

declare dso_local i32 @_mskanji2(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
