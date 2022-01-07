; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/zstd/contrib/experimental_dict_builders/fastCover/extr_fastCover.c_FASTCOVER_buildDictionary.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/zstd/contrib/experimental_dict_builders/fastCover/extr_fastCover.c_FASTCOVER_buildDictionary.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i64, i64 }
%struct.TYPE_9__ = type { i64, i64 }
%struct.TYPE_10__ = type { i64, i64, i64 }

@.str = private unnamed_addr constant [44 x i8] c"Breaking content into %u epochs of size %u\0A\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"\0D%u%%       \00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"\0D%79s\0D\00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_11__*, i64*, i8*, i64, i64, i64)* @FASTCOVER_buildDictionary to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @FASTCOVER_buildDictionary(%struct.TYPE_11__* %0, i64* %1, i8* %2, i64 %3, i64 %4, i64 %5) #0 {
  %7 = alloca %struct.TYPE_9__, align 8
  %8 = alloca %struct.TYPE_11__*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca %struct.TYPE_10__, align 8
  %21 = bitcast %struct.TYPE_9__* %7 to { i64, i64 }*
  %22 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %21, i32 0, i32 0
  store i64 %4, i64* %22, align 8
  %23 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %21, i32 0, i32 1
  store i64 %5, i64* %23, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %8, align 8
  store i64* %1, i64** %9, align 8
  store i8* %2, i8** %10, align 8
  store i64 %3, i64* %11, align 8
  %24 = load i8*, i8** %10, align 8
  %25 = bitcast i8* %24 to i32*
  store i32* %25, i32** %12, align 8
  %26 = load i64, i64* %11, align 8
  store i64 %26, i64* %13, align 8
  %27 = load i64, i64* %11, align 8
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = udiv i64 %27, %29
  %31 = call i64 @MAX(i32 1, i64 %30)
  store i64 %31, i64* %14, align 8
  %32 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %33 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* %14, align 8
  %36 = udiv i64 %34, %35
  store i64 %36, i64* %15, align 8
  %37 = load i64, i64* %14, align 8
  %38 = load i64, i64* %15, align 8
  %39 = call i32 (i32, i8*, ...) @DISPLAYLEVEL(i32 2, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i64 %37, i64 %38)
  store i64 0, i64* %16, align 8
  br label %40

40:                                               ; preds = %97, %6
  %41 = load i64, i64* %13, align 8
  %42 = icmp ugt i64 %41, 0
  br i1 %42, label %43, label %102

43:                                               ; preds = %40
  %44 = load i64, i64* %16, align 8
  %45 = load i64, i64* %15, align 8
  %46 = mul i64 %44, %45
  store i64 %46, i64* %17, align 8
  %47 = load i64, i64* %17, align 8
  %48 = load i64, i64* %15, align 8
  %49 = add i64 %47, %48
  store i64 %49, i64* %18, align 8
  %50 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %51 = load i64*, i64** %9, align 8
  %52 = load i64, i64* %17, align 8
  %53 = load i64, i64* %18, align 8
  call void @FASTCOVER_selectSegment(%struct.TYPE_10__* sret %20, %struct.TYPE_11__* %50, i64* %51, i64 %52, i64 %53, %struct.TYPE_9__* byval(%struct.TYPE_9__) align 8 %7)
  %54 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %20, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = icmp eq i64 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %43
  br label %102

58:                                               ; preds = %43
  %59 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %20, i32 0, i32 2
  %60 = load i64, i64* %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %20, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = sub nsw i64 %60, %62
  %64 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = add i64 %63, %65
  %67 = sub i64 %66, 1
  %68 = load i64, i64* %13, align 8
  %69 = call i64 @MIN(i64 %67, i64 %68)
  store i64 %69, i64* %19, align 8
  %70 = load i64, i64* %19, align 8
  %71 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = icmp ult i64 %70, %72
  br i1 %73, label %74, label %75

74:                                               ; preds = %58
  br label %102

75:                                               ; preds = %58
  %76 = load i64, i64* %19, align 8
  %77 = load i64, i64* %13, align 8
  %78 = sub i64 %77, %76
  store i64 %78, i64* %13, align 8
  %79 = load i32*, i32** %12, align 8
  %80 = load i64, i64* %13, align 8
  %81 = getelementptr inbounds i32, i32* %79, i64 %80
  %82 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %83 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %82, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %20, i32 0, i32 1
  %86 = load i64, i64* %85, align 8
  %87 = add nsw i64 %84, %86
  %88 = load i64, i64* %19, align 8
  %89 = call i32 @memcpy(i32* %81, i64 %87, i64 %88)
  %90 = load i64, i64* %11, align 8
  %91 = load i64, i64* %13, align 8
  %92 = sub i64 %90, %91
  %93 = mul i64 %92, 100
  %94 = load i64, i64* %11, align 8
  %95 = udiv i64 %93, %94
  %96 = call i32 @DISPLAYUPDATE(i32 2, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i64 %95)
  br label %97

97:                                               ; preds = %75
  %98 = load i64, i64* %16, align 8
  %99 = add i64 %98, 1
  %100 = load i64, i64* %14, align 8
  %101 = urem i64 %99, %100
  store i64 %101, i64* %16, align 8
  br label %40

102:                                              ; preds = %74, %57, %40
  %103 = call i32 (i32, i8*, ...) @DISPLAYLEVEL(i32 2, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0))
  %104 = load i64, i64* %13, align 8
  ret i64 %104
}

declare dso_local i64 @MAX(i32, i64) #1

declare dso_local i32 @DISPLAYLEVEL(i32, i8*, ...) #1

declare dso_local void @FASTCOVER_selectSegment(%struct.TYPE_10__* sret, %struct.TYPE_11__*, i64*, i64, i64, %struct.TYPE_9__* byval(%struct.TYPE_9__) align 8) #1

declare dso_local i64 @MIN(i64, i64) #1

declare dso_local i32 @memcpy(i32*, i64, i64) #1

declare dso_local i32 @DISPLAYUPDATE(i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
