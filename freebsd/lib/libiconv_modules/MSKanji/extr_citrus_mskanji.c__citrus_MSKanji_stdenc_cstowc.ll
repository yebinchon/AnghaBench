; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libiconv_modules/MSKanji/extr_citrus_mskanji.c__citrus_MSKanji_stdenc_cstowc.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libiconv_modules/MSKanji/extr_citrus_mskanji.c__citrus_MSKanji_stdenc_cstowc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@EILSEQ = common dso_local global i32 0, align 4
@MODE_JIS2004 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, i32*, i32, i32)* @_citrus_MSKanji_stdenc_cstowc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_citrus_MSKanji_stdenc_cstowc(%struct.TYPE_3__* noalias %0, i32* noalias %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %13 = load i32, i32* %8, align 4
  switch i32 %13, label %125 [
    i32 0, label %14
    i32 1, label %22
    i32 3, label %31
    i32 2, label %41
  ]

14:                                               ; preds = %4
  %15 = load i32, i32* %9, align 4
  %16 = icmp sge i32 %15, 128
  br i1 %16, label %17, label %19

17:                                               ; preds = %14
  %18 = load i32, i32* @EILSEQ, align 4
  store i32 %18, i32* %5, align 4
  br label %128

19:                                               ; preds = %14
  %20 = load i32, i32* %9, align 4
  %21 = load i32*, i32** %7, align 8
  store i32 %20, i32* %21, align 4
  br label %127

22:                                               ; preds = %4
  %23 = load i32, i32* %9, align 4
  %24 = icmp sge i32 %23, 128
  br i1 %24, label %25, label %27

25:                                               ; preds = %22
  %26 = load i32, i32* @EILSEQ, align 4
  store i32 %26, i32* %5, align 4
  br label %128

27:                                               ; preds = %22
  %28 = load i32, i32* %9, align 4
  %29 = add nsw i32 %28, 128
  %30 = load i32*, i32** %7, align 8
  store i32 %29, i32* %30, align 4
  br label %127

31:                                               ; preds = %4
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @MODE_JIS2004, align 4
  %36 = and i32 %34, %35
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %31
  %39 = load i32, i32* @EILSEQ, align 4
  store i32 %39, i32* %5, align 4
  br label %128

40:                                               ; preds = %31
  br label %41

41:                                               ; preds = %4, %40
  %42 = load i32, i32* %9, align 4
  %43 = ashr i32 %42, 8
  store i32 %43, i32* %11, align 4
  %44 = load i32, i32* %11, align 4
  %45 = icmp slt i32 %44, 33
  br i1 %45, label %46, label %48

46:                                               ; preds = %41
  %47 = load i32, i32* @EILSEQ, align 4
  store i32 %47, i32* %5, align 4
  br label %128

48:                                               ; preds = %41
  %49 = load i32, i32* %8, align 4
  %50 = icmp eq i32 %49, 3
  br i1 %50, label %51, label %75

51:                                               ; preds = %48
  %52 = load i32, i32* %11, align 4
  %53 = icmp sle i32 %52, 47
  br i1 %53, label %54, label %64

54:                                               ; preds = %51
  %55 = load i32, i32* %11, align 4
  %56 = icmp eq i32 %55, 34
  br i1 %56, label %60, label %57

57:                                               ; preds = %54
  %58 = load i32, i32* %11, align 4
  %59 = icmp sge i32 %58, 38
  br label %60

60:                                               ; preds = %57, %54
  %61 = phi i1 [ true, %54 ], [ %59, %57 ]
  %62 = zext i1 %61 to i64
  %63 = select i1 %61, i32 237, i32 240
  store i32 %63, i32* %12, align 4
  br label %74

64:                                               ; preds = %51
  %65 = load i32, i32* %11, align 4
  %66 = icmp sge i32 %65, 77
  br i1 %66, label %67, label %71

67:                                               ; preds = %64
  %68 = load i32, i32* %11, align 4
  %69 = icmp sle i32 %68, 126
  br i1 %69, label %70, label %71

70:                                               ; preds = %67
  store i32 206, i32* %12, align 4
  br label %73

71:                                               ; preds = %67, %64
  %72 = load i32, i32* @EILSEQ, align 4
  store i32 %72, i32* %5, align 4
  br label %128

73:                                               ; preds = %70
  br label %74

74:                                               ; preds = %73, %60
  br label %85

75:                                               ; preds = %48
  %76 = load i32, i32* %11, align 4
  %77 = icmp sgt i32 %76, 151
  br i1 %77, label %78, label %80

78:                                               ; preds = %75
  %79 = load i32, i32* @EILSEQ, align 4
  store i32 %79, i32* %5, align 4
  br label %128

80:                                               ; preds = %75
  %81 = load i32, i32* %11, align 4
  %82 = icmp slt i32 %81, 95
  %83 = zext i1 %82 to i64
  %84 = select i1 %82, i32 129, i32 193
  store i32 %84, i32* %12, align 4
  br label %85

85:                                               ; preds = %80, %74
  %86 = load i32, i32* %9, align 4
  %87 = and i32 %86, 255
  store i32 %87, i32* %10, align 4
  %88 = load i32, i32* %10, align 4
  %89 = icmp slt i32 %88, 33
  br i1 %89, label %93, label %90

90:                                               ; preds = %85
  %91 = load i32, i32* %10, align 4
  %92 = icmp sgt i32 %91, 126
  br i1 %92, label %93, label %95

93:                                               ; preds = %90, %85
  %94 = load i32, i32* @EILSEQ, align 4
  store i32 %94, i32* %5, align 4
  br label %128

95:                                               ; preds = %90
  %96 = load i32, i32* %11, align 4
  %97 = sub nsw i32 %96, 33
  store i32 %97, i32* %11, align 4
  %98 = load i32, i32* %10, align 4
  %99 = sub nsw i32 %98, 33
  store i32 %99, i32* %10, align 4
  %100 = load i32, i32* %11, align 4
  %101 = and i32 %100, 1
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %103, label %112

103:                                              ; preds = %95
  %104 = load i32, i32* %10, align 4
  %105 = add nsw i32 %104, 64
  store i32 %105, i32* %10, align 4
  %106 = load i32, i32* %10, align 4
  %107 = icmp sge i32 %106, 127
  br i1 %107, label %108, label %111

108:                                              ; preds = %103
  %109 = load i32, i32* %10, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %10, align 4
  br label %111

111:                                              ; preds = %108, %103
  br label %115

112:                                              ; preds = %95
  %113 = load i32, i32* %10, align 4
  %114 = add nsw i32 %113, 159
  store i32 %114, i32* %10, align 4
  br label %115

115:                                              ; preds = %112, %111
  %116 = load i32, i32* %11, align 4
  %117 = sdiv i32 %116, 2
  %118 = load i32, i32* %12, align 4
  %119 = add nsw i32 %117, %118
  store i32 %119, i32* %11, align 4
  %120 = load i32, i32* %11, align 4
  %121 = shl i32 %120, 8
  %122 = load i32, i32* %10, align 4
  %123 = or i32 %121, %122
  %124 = load i32*, i32** %7, align 8
  store i32 %123, i32* %124, align 4
  br label %127

125:                                              ; preds = %4
  %126 = load i32, i32* @EILSEQ, align 4
  store i32 %126, i32* %5, align 4
  br label %128

127:                                              ; preds = %115, %27, %19
  store i32 0, i32* %5, align 4
  br label %128

128:                                              ; preds = %127, %125, %93, %78, %71, %46, %38, %25, %17
  %129 = load i32, i32* %5, align 4
  ret i32 %129
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
