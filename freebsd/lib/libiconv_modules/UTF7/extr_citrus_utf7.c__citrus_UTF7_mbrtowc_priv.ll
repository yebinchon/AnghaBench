; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libiconv_modules/UTF7/extr_citrus_utf7.c__citrus_UTF7_mbrtowc_priv.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libiconv_modules/UTF7/extr_citrus_utf7.c__citrus_UTF7_mbrtowc_priv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }

@_ENCODING_IS_STATE_DEPENDENT = common dso_local global i64 0, align 8
@HISRG_MIN = common dso_local global i32 0, align 4
@HISRG_MAX = common dso_local global i32 0, align 4
@LOSRG_MIN = common dso_local global i32 0, align 4
@LOSRG_MAX = common dso_local global i32 0, align 4
@EILSEQ = common dso_local global i32 0, align 4
@SRG_BASE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i64*, i8**, i64, %struct.TYPE_5__*, i64*)* @_citrus_UTF7_mbrtowc_priv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_citrus_UTF7_mbrtowc_priv(i32* noalias %0, i64* noalias %1, i8** noalias %2, i64 %3, %struct.TYPE_5__* noalias %4, i64* noalias %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i8**, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.TYPE_5__*, align 8
  %13 = alloca i64*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  store i32* %0, i32** %8, align 8
  store i64* %1, i64** %9, align 8
  store i8** %2, i8*** %10, align 8
  store i64 %3, i64* %11, align 8
  store %struct.TYPE_5__* %4, %struct.TYPE_5__** %12, align 8
  store i64* %5, i64** %13, align 8
  %20 = load i8**, i8*** %10, align 8
  %21 = load i8*, i8** %20, align 8
  %22 = icmp eq i8* %21, null
  br i1 %22, label %23, label %29

23:                                               ; preds = %6
  %24 = load i32*, i32** %8, align 8
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %26 = call i32 @_citrus_UTF7_init_state(i32* %24, %struct.TYPE_5__* %25)
  %27 = load i64, i64* @_ENCODING_IS_STATE_DEPENDENT, align 8
  %28 = load i64*, i64** %13, align 8
  store i64 %27, i64* %28, align 8
  store i32 0, i32* %7, align 4
  br label %133

29:                                               ; preds = %6
  %30 = load i32*, i32** %8, align 8
  %31 = load i8**, i8*** %10, align 8
  %32 = load i64, i64* %11, align 8
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %34 = call i32 @_citrus_UTF7_mbtoutf16(i32* %30, i32* %15, i8** %31, i64 %32, %struct.TYPE_5__* %33, i64* %17)
  store i32 %34, i32* %19, align 4
  %35 = load i64, i64* %17, align 8
  %36 = icmp eq i64 %35, -1
  br i1 %36, label %40, label %37

37:                                               ; preds = %29
  %38 = load i64, i64* %17, align 8
  %39 = icmp eq i64 %38, -2
  br i1 %39, label %40, label %44

40:                                               ; preds = %37, %29
  %41 = load i64, i64* %17, align 8
  %42 = load i64*, i64** %13, align 8
  store i64 %41, i64* %42, align 8
  %43 = load i32, i32* %19, align 4
  store i32 %43, i32* %7, align 4
  br label %133

44:                                               ; preds = %37
  %45 = load i32, i32* %19, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %44
  %48 = load i32, i32* %19, align 4
  store i32 %48, i32* %7, align 4
  br label %133

49:                                               ; preds = %44
  %50 = load i64, i64* %17, align 8
  %51 = load i64, i64* %11, align 8
  %52 = sub i64 %51, %50
  store i64 %52, i64* %11, align 8
  %53 = load i64, i64* %17, align 8
  store i64 %53, i64* %18, align 8
  %54 = load i32, i32* %15, align 4
  %55 = load i32, i32* @HISRG_MIN, align 4
  %56 = icmp slt i32 %54, %55
  br i1 %56, label %61, label %57

57:                                               ; preds = %49
  %58 = load i32, i32* %15, align 4
  %59 = load i32, i32* @HISRG_MAX, align 4
  %60 = icmp sgt i32 %58, %59
  br i1 %60, label %61, label %64

61:                                               ; preds = %57, %49
  %62 = load i32, i32* %15, align 4
  %63 = sext i32 %62 to i64
  store i64 %63, i64* %14, align 8
  br label %114

64:                                               ; preds = %57
  %65 = load i32*, i32** %8, align 8
  %66 = load i8**, i8*** %10, align 8
  %67 = load i64, i64* %11, align 8
  %68 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %69 = call i32 @_citrus_UTF7_mbtoutf16(i32* %65, i32* %16, i8** %66, i64 %67, %struct.TYPE_5__* %68, i64* %17)
  store i32 %69, i32* %19, align 4
  %70 = load i64, i64* %17, align 8
  %71 = icmp eq i64 %70, -1
  br i1 %71, label %75, label %72

72:                                               ; preds = %64
  %73 = load i64, i64* %17, align 8
  %74 = icmp eq i64 %73, -2
  br i1 %74, label %75, label %81

75:                                               ; preds = %72, %64
  %76 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 0
  store i32 1, i32* %77, align 4
  %78 = load i64, i64* %17, align 8
  %79 = load i64*, i64** %13, align 8
  store i64 %78, i64* %79, align 8
  %80 = load i32, i32* %19, align 4
  store i32 %80, i32* %7, align 4
  br label %133

81:                                               ; preds = %72
  %82 = load i32, i32* %19, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %86

84:                                               ; preds = %81
  %85 = load i32, i32* %19, align 4
  store i32 %85, i32* %7, align 4
  br label %133

86:                                               ; preds = %81
  %87 = load i32, i32* %16, align 4
  %88 = load i32, i32* @LOSRG_MIN, align 4
  %89 = icmp slt i32 %87, %88
  br i1 %89, label %94, label %90

90:                                               ; preds = %86
  %91 = load i32, i32* %16, align 4
  %92 = load i32, i32* @LOSRG_MAX, align 4
  %93 = icmp sgt i32 %91, %92
  br i1 %93, label %94, label %97

94:                                               ; preds = %90, %86
  %95 = load i64*, i64** %13, align 8
  store i64 -1, i64* %95, align 8
  %96 = load i32, i32* @EILSEQ, align 4
  store i32 %96, i32* %7, align 4
  br label %133

97:                                               ; preds = %90
  %98 = load i32, i32* @HISRG_MIN, align 4
  %99 = load i32, i32* %15, align 4
  %100 = sub nsw i32 %99, %98
  store i32 %100, i32* %15, align 4
  %101 = load i32, i32* @LOSRG_MIN, align 4
  %102 = load i32, i32* %16, align 4
  %103 = sub nsw i32 %102, %101
  store i32 %103, i32* %16, align 4
  %104 = load i32, i32* %15, align 4
  %105 = shl i32 %104, 10
  %106 = load i32, i32* %16, align 4
  %107 = or i32 %105, %106
  %108 = sext i32 %107 to i64
  %109 = load i64, i64* @SRG_BASE, align 8
  %110 = add nsw i64 %108, %109
  store i64 %110, i64* %14, align 8
  %111 = load i64, i64* %17, align 8
  %112 = load i64, i64* %18, align 8
  %113 = add i64 %112, %111
  store i64 %113, i64* %18, align 8
  br label %114

114:                                              ; preds = %97, %61
  %115 = load i64*, i64** %9, align 8
  %116 = icmp ne i64* %115, null
  br i1 %116, label %117, label %120

117:                                              ; preds = %114
  %118 = load i64, i64* %14, align 8
  %119 = load i64*, i64** %9, align 8
  store i64 %118, i64* %119, align 8
  br label %120

120:                                              ; preds = %117, %114
  %121 = load i64, i64* %14, align 8
  %122 = icmp eq i64 %121, 0
  br i1 %122, label %123, label %128

123:                                              ; preds = %120
  %124 = load i64*, i64** %13, align 8
  store i64 0, i64* %124, align 8
  %125 = load i32*, i32** %8, align 8
  %126 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %127 = call i32 @_citrus_UTF7_init_state(i32* %125, %struct.TYPE_5__* %126)
  br label %131

128:                                              ; preds = %120
  %129 = load i64, i64* %18, align 8
  %130 = load i64*, i64** %13, align 8
  store i64 %129, i64* %130, align 8
  br label %131

131:                                              ; preds = %128, %123
  %132 = load i32, i32* %19, align 4
  store i32 %132, i32* %7, align 4
  br label %133

133:                                              ; preds = %131, %94, %84, %75, %47, %40, %23
  %134 = load i32, i32* %7, align 4
  ret i32 %134
}

declare dso_local i32 @_citrus_UTF7_init_state(i32*, %struct.TYPE_5__*) #1

declare dso_local i32 @_citrus_UTF7_mbtoutf16(i32*, i32*, i8**, i64, %struct.TYPE_5__*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
