; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/zstd/lib/dictBuilder/extr_cover.c_COVER_buildDictionary.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/zstd/lib/dictBuilder/extr_cover.c_COVER_buildDictionary.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, i64 }
%struct.TYPE_11__ = type { i32, i32 }
%struct.TYPE_13__ = type { i32, i64 }
%struct.TYPE_12__ = type { i64, i32, i32 }

@.str = private unnamed_addr constant [44 x i8] c"Breaking content into %u epochs of size %u\0A\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"\0D%u%%       \00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"\0D%79s\0D\00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_14__*, i64*, i32*, i8*, i64, i64)* @COVER_buildDictionary to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @COVER_buildDictionary(%struct.TYPE_14__* %0, i64* %1, i32* %2, i8* %3, i64 %4, i64 %5) #0 {
  %7 = alloca %struct.TYPE_11__, align 4
  %8 = alloca %struct.TYPE_14__*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.TYPE_13__, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca %struct.TYPE_12__, align 8
  %23 = bitcast %struct.TYPE_11__* %7 to i64*
  store i64 %5, i64* %23, align 4
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %8, align 8
  store i64* %1, i64** %9, align 8
  store i32* %2, i32** %10, align 8
  store i8* %3, i8** %11, align 8
  store i64 %4, i64* %12, align 8
  %24 = load i8*, i8** %11, align 8
  %25 = bitcast i8* %24 to i32*
  store i32* %25, i32** %13, align 8
  %26 = load i64, i64* %12, align 8
  store i64 %26, i64* %14, align 8
  %27 = load i64, i64* %12, align 8
  %28 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %29 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = call { i32, i64 } @COVER_computeEpochs(i64 %27, i64 %30, i32 %32, i32 4)
  %34 = bitcast %struct.TYPE_13__* %15 to { i32, i64 }*
  %35 = getelementptr inbounds { i32, i64 }, { i32, i64 }* %34, i32 0, i32 0
  %36 = extractvalue { i32, i64 } %33, 0
  store i32 %36, i32* %35, align 8
  %37 = getelementptr inbounds { i32, i64 }, { i32, i64 }* %34, i32 0, i32 1
  %38 = extractvalue { i32, i64 } %33, 1
  store i64 %38, i64* %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %15, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = ashr i32 %40, 3
  %42 = sext i32 %41 to i64
  %43 = call i64 @MIN(i32 100, i64 %42)
  %44 = call i64 @MAX(i32 10, i64 %43)
  store i64 %44, i64* %16, align 8
  store i64 0, i64* %17, align 8
  %45 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %15, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %15, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = call i32 (i32, i8*, ...) @DISPLAYLEVEL(i32 2, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i64 %47, i64 %49)
  store i64 0, i64* %18, align 8
  br label %51

51:                                               ; preds = %127, %6
  %52 = load i64, i64* %14, align 8
  %53 = icmp ugt i64 %52, 0
  br i1 %53, label %54, label %134

54:                                               ; preds = %51
  %55 = load i64, i64* %18, align 8
  %56 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %15, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = mul i64 %55, %57
  store i64 %58, i64* %19, align 8
  %59 = load i64, i64* %19, align 8
  %60 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %15, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = add i64 %59, %61
  store i64 %62, i64* %20, align 8
  %63 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %64 = load i64*, i64** %9, align 8
  %65 = load i32*, i32** %10, align 8
  %66 = load i64, i64* %19, align 8
  %67 = load i64, i64* %20, align 8
  %68 = bitcast %struct.TYPE_11__* %7 to i64*
  %69 = load i64, i64* %68, align 4
  %70 = call { i64, i64 } @COVER_selectSegment(%struct.TYPE_14__* %63, i64* %64, i32* %65, i64 %66, i64 %67, i64 %69)
  %71 = bitcast %struct.TYPE_12__* %22 to { i64, i64 }*
  %72 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %71, i32 0, i32 0
  %73 = extractvalue { i64, i64 } %70, 0
  store i64 %73, i64* %72, align 8
  %74 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %71, i32 0, i32 1
  %75 = extractvalue { i64, i64 } %70, 1
  store i64 %75, i64* %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %22, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = icmp eq i64 %77, 0
  br i1 %78, label %79, label %86

79:                                               ; preds = %54
  %80 = load i64, i64* %17, align 8
  %81 = add i64 %80, 1
  store i64 %81, i64* %17, align 8
  %82 = load i64, i64* %16, align 8
  %83 = icmp uge i64 %81, %82
  br i1 %83, label %84, label %85

84:                                               ; preds = %79
  br label %134

85:                                               ; preds = %79
  br label %127

86:                                               ; preds = %54
  store i64 0, i64* %17, align 8
  %87 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %22, i32 0, i32 1
  %88 = load i32, i32* %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %22, i32 0, i32 2
  %90 = load i32, i32* %89, align 4
  %91 = sub nsw i32 %88, %90
  %92 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = add nsw i32 %91, %93
  %95 = sub nsw i32 %94, 1
  %96 = load i64, i64* %14, align 8
  %97 = call i64 @MIN(i32 %95, i64 %96)
  store i64 %97, i64* %21, align 8
  %98 = load i64, i64* %21, align 8
  %99 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = sext i32 %100 to i64
  %102 = icmp ult i64 %98, %101
  br i1 %102, label %103, label %104

103:                                              ; preds = %86
  br label %134

104:                                              ; preds = %86
  %105 = load i64, i64* %21, align 8
  %106 = load i64, i64* %14, align 8
  %107 = sub i64 %106, %105
  store i64 %107, i64* %14, align 8
  %108 = load i32*, i32** %13, align 8
  %109 = load i64, i64* %14, align 8
  %110 = getelementptr inbounds i32, i32* %108, i64 %109
  %111 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %112 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %22, i32 0, i32 2
  %115 = load i32, i32* %114, align 4
  %116 = add nsw i32 %113, %115
  %117 = load i64, i64* %21, align 8
  %118 = call i32 @memcpy(i32* %110, i32 %116, i64 %117)
  %119 = load i64, i64* %12, align 8
  %120 = load i64, i64* %14, align 8
  %121 = sub i64 %119, %120
  %122 = mul i64 %121, 100
  %123 = load i64, i64* %12, align 8
  %124 = udiv i64 %122, %123
  %125 = trunc i64 %124 to i32
  %126 = call i32 @DISPLAYUPDATE(i32 2, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 %125)
  br label %127

127:                                              ; preds = %104, %85
  %128 = load i64, i64* %18, align 8
  %129 = add i64 %128, 1
  %130 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %15, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = sext i32 %131 to i64
  %133 = urem i64 %129, %132
  store i64 %133, i64* %18, align 8
  br label %51

134:                                              ; preds = %103, %84, %51
  %135 = call i32 (i32, i8*, ...) @DISPLAYLEVEL(i32 2, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0))
  %136 = load i64, i64* %14, align 8
  ret i64 %136
}

declare dso_local { i32, i64 } @COVER_computeEpochs(i64, i64, i32, i32) #1

declare dso_local i64 @MAX(i32, i64) #1

declare dso_local i64 @MIN(i32, i64) #1

declare dso_local i32 @DISPLAYLEVEL(i32, i8*, ...) #1

declare dso_local { i64, i64 } @COVER_selectSegment(%struct.TYPE_14__*, i64*, i32*, i64, i64, i64) #1

declare dso_local i32 @memcpy(i32*, i32, i64) #1

declare dso_local i32 @DISPLAYUPDATE(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
