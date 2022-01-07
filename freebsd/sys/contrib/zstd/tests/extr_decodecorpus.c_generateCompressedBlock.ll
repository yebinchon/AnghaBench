; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/zstd/tests/extr_decodecorpus.c_generateCompressedBlock.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/zstd/tests/extr_decodecorpus.c_generateCompressedBlock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32*, i32, i32, i32*, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@.str = private unnamed_addr constant [16 x i8] c"block seed: %u\0A\00", align 1
@MAX_WINDOW_LOG = common dso_local global i32 0, align 4
@g_maxBlockSize = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"   can't compress block : try again \0A\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"   block size: %u \0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64, %struct.TYPE_7__*, i32)* @generateCompressedBlock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @generateCompressedBlock(i64 %0, %struct.TYPE_7__* %1, i32 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %8, align 4
  %14 = load i64, i64* %4, align 8
  %15 = trunc i64 %14 to i32
  %16 = call i32 (i32, i8*, ...) @DISPLAYLEVEL(i32 4, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %15)
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %18 = call i32 @initFrame(%struct.TYPE_7__* %17)
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 3
  %21 = load i32*, i32** %20, align 8
  store i32* %21, i32** %9, align 8
  br label %22

22:                                               ; preds = %114, %3
  %23 = load i32, i32* %8, align 4
  %24 = icmp ne i32 %23, 0
  %25 = xor i1 %24, true
  br i1 %25, label %26, label %115

26:                                               ; preds = %22
  %27 = call i64 @RAND(i64* %4)
  %28 = load i32, i32* @MAX_WINDOW_LOG, align 4
  %29 = sub nsw i32 %28, 10
  %30 = sext i32 %29 to i64
  %31 = urem i64 %27, %30
  %32 = trunc i64 %31 to i32
  store i32 %32, i32* %11, align 4
  %33 = call i64 @RAND(i64* %4)
  %34 = urem i64 %33, 8
  %35 = trunc i64 %34 to i32
  store i32 %35, i32* %12, align 4
  %36 = load i32, i32* %11, align 4
  %37 = add nsw i32 %36, 10
  %38 = shl i32 1, %37
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 4
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  store i32 %38, i32* %41, align 8
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 4
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = udiv i32 %45, 8
  %47 = load i32, i32* %12, align 4
  %48 = mul i32 %46, %47
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 4
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = add i32 %52, %48
  store i32 %53, i32* %51, align 8
  %54 = load i32, i32* @g_maxBlockSize, align 4
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 4
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = call i64 @MIN(i32 %54, i32 %58)
  store i64 %59, i64* %13, align 8
  %60 = call i64 @RAND(i64* %4)
  %61 = and i64 %60, 15
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %26
  %64 = load i64, i64* %13, align 8
  store i64 %64, i64* %7, align 8
  br label %80

65:                                               ; preds = %26
  %66 = call i64 @RAND(i64* %4)
  %67 = and i64 %66, 7
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %75

69:                                               ; preds = %65
  %70 = load i32, i32* @g_maxBlockSize, align 4
  %71 = icmp uge i32 %70, 128
  br i1 %71, label %72, label %75

72:                                               ; preds = %69
  %73 = call i64 @RAND(i64* %4)
  %74 = urem i64 %73, 128
  store i64 %74, i64* %7, align 8
  br label %79

75:                                               ; preds = %69, %65
  %76 = call i64 @RAND(i64* %4)
  %77 = load i64, i64* %13, align 8
  %78 = urem i64 %76, %77
  store i64 %78, i64* %7, align 8
  br label %79

79:                                               ; preds = %75, %72
  br label %80

80:                                               ; preds = %79, %63
  %81 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %84, i32 0, i32 1
  store i32 %83, i32* %85, align 8
  %86 = load i32*, i32** %9, align 8
  %87 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %88 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %87, i32 0, i32 3
  store i32* %86, i32** %88, align 8
  %89 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %90 = load i64, i64* %7, align 8
  %91 = load i32, i32* %6, align 4
  %92 = call i64 @writeCompressedBlock(i64* %4, %struct.TYPE_7__* %89, i64 %90, i32 %91)
  store i64 %92, i64* %10, align 8
  %93 = load i64, i64* %10, align 8
  %94 = load i64, i64* %7, align 8
  %95 = icmp uge i64 %93, %94
  br i1 %95, label %96, label %103

96:                                               ; preds = %80
  %97 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %98 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 8
  %100 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %101 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %100, i32 0, i32 2
  store i32 %99, i32* %101, align 4
  %102 = call i32 (i32, i8*, ...) @DISPLAYLEVEL(i32 5, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  br label %114

103:                                              ; preds = %80
  store i32 1, i32* %8, align 4
  %104 = load i64, i64* %10, align 8
  %105 = trunc i64 %104 to i32
  %106 = call i32 (i32, i8*, ...) @DISPLAYLEVEL(i32 4, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i32 %105)
  %107 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %108 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %107, i32 0, i32 0
  %109 = load i32*, i32** %108, align 8
  %110 = load i64, i64* %7, align 8
  %111 = getelementptr inbounds i32, i32* %109, i64 %110
  %112 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %113 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %112, i32 0, i32 0
  store i32* %111, i32** %113, align 8
  br label %114

114:                                              ; preds = %103, %96
  br label %22

115:                                              ; preds = %22
  %116 = load i64, i64* %4, align 8
  ret i64 %116
}

declare dso_local i32 @DISPLAYLEVEL(i32, i8*, ...) #1

declare dso_local i32 @initFrame(%struct.TYPE_7__*) #1

declare dso_local i64 @RAND(i64*) #1

declare dso_local i64 @MIN(i32, i32) #1

declare dso_local i64 @writeCompressedBlock(i64*, %struct.TYPE_7__*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
