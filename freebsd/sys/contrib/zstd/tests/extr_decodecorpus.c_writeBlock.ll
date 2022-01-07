; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/zstd/tests/extr_decodecorpus.c_writeBlock.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/zstd/tests/extr_decodecorpus.c_writeBlock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32*, i32*, i32, i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }

@.str = private unnamed_addr constant [9 x i8] c" block:\0A\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"  block content size: %u\0A\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"  last block: %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"yes\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"no\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"  block type: %s\0A\00", align 1
@BLOCK_TYPES = common dso_local global i32* null, align 8
@.str.6 = private unnamed_addr constant [24 x i8] c"  block size field: %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_6__*, i64, i32, i32)* @writeBlock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @writeBlock(i32* %0, %struct.TYPE_6__* %1, i64 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_6__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  store i32* %0, i32** %6, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %18 = load i32*, i32** %6, align 8
  %19 = call i32 @RAND(i32* %18)
  %20 = srem i32 %19, 8
  store i32 %20, i32* %11, align 4
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  store i32* %23, i32** %14, align 8
  %24 = load i32*, i32** %14, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 3
  store i32* %25, i32** %15, align 8
  %26 = call i32 (i32, i8*, ...) @DISPLAYLEVEL(i32 4, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %27 = load i64, i64* %8, align 8
  %28 = trunc i64 %27 to i32
  %29 = call i32 (i32, i8*, ...) @DISPLAYLEVEL(i32 4, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %28)
  %30 = load i32, i32* %9, align 4
  %31 = icmp ne i32 %30, 0
  %32 = zext i1 %31 to i64
  %33 = select i1 %31, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0)
  %34 = call i32 (i32, i8*, ...) @DISPLAYLEVEL(i32 4, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i8* %33)
  %35 = load i32, i32* %11, align 4
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %54

37:                                               ; preds = %5
  %38 = load i32*, i32** %6, align 8
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 1
  %41 = load i32*, i32** %40, align 8
  %42 = load i64, i64* %8, align 8
  %43 = call i32 @RAND_buffer(i32* %38, i32* %41, i64 %42)
  %44 = load i32*, i32** %15, align 8
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 1
  %47 = load i32*, i32** %46, align 8
  %48 = load i64, i64* %8, align 8
  %49 = call i32 @memcpy(i32* %44, i32* %47, i64 %48)
  %50 = load i64, i64* %8, align 8
  %51 = load i32*, i32** %15, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 %50
  store i32* %52, i32** %15, align 8
  store i32 0, i32* %13, align 4
  %53 = load i64, i64* %8, align 8
  store i64 %53, i64* %12, align 8
  br label %119

54:                                               ; preds = %5
  %55 = load i32, i32* %11, align 4
  %56 = icmp eq i32 %55, 1
  br i1 %56, label %57, label %79

57:                                               ; preds = %54
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 4
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = icmp sgt i64 %61, 0
  br i1 %62, label %63, label %79

63:                                               ; preds = %57
  %64 = load i32*, i32** %6, align 8
  %65 = call i32 @RAND(i32* %64)
  %66 = and i32 %65, 255
  store i32 %66, i32* %16, align 4
  %67 = load i32, i32* %16, align 4
  %68 = load i32*, i32** %15, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 0
  store i32 %67, i32* %69, align 4
  %70 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 1
  %72 = load i32*, i32** %71, align 8
  %73 = load i32, i32* %16, align 4
  %74 = load i64, i64* %8, align 8
  %75 = call i32 @memset(i32* %72, i32 %73, i64 %74)
  %76 = load i32*, i32** %15, align 8
  %77 = getelementptr inbounds i32, i32* %76, i32 1
  store i32* %77, i32** %15, align 8
  store i32 1, i32* %13, align 4
  %78 = load i64, i64* %8, align 8
  store i64 %78, i64* %12, align 8
  br label %118

79:                                               ; preds = %57, %54
  store i32 2, i32* %13, align 4
  %80 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 3
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 2
  store i32 %82, i32* %84, align 8
  %85 = load i32*, i32** %15, align 8
  %86 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 0
  store i32* %85, i32** %87, align 8
  %88 = load i32*, i32** %6, align 8
  %89 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %90 = load i64, i64* %8, align 8
  %91 = load i32, i32* %10, align 4
  %92 = call i64 @writeCompressedBlock(i32* %88, %struct.TYPE_6__* %89, i64 %90, i32 %91)
  store i64 %92, i64* %17, align 8
  %93 = load i64, i64* %17, align 8
  %94 = load i64, i64* %8, align 8
  %95 = icmp uge i64 %93, %94
  br i1 %95, label %96, label %112

96:                                               ; preds = %79
  store i32 0, i32* %13, align 4
  %97 = load i32*, i32** %15, align 8
  %98 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i32 0, i32 1
  %100 = load i32*, i32** %99, align 8
  %101 = load i64, i64* %8, align 8
  %102 = call i32 @memcpy(i32* %97, i32* %100, i64 %101)
  %103 = load i64, i64* %8, align 8
  %104 = load i32*, i32** %15, align 8
  %105 = getelementptr inbounds i32, i32* %104, i64 %103
  store i32* %105, i32** %15, align 8
  %106 = load i64, i64* %8, align 8
  store i64 %106, i64* %12, align 8
  %107 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %108 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %107, i32 0, i32 2
  %109 = load i32, i32* %108, align 8
  %110 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %111 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %110, i32 0, i32 3
  store i32 %109, i32* %111, align 4
  br label %117

112:                                              ; preds = %79
  %113 = load i64, i64* %17, align 8
  %114 = load i32*, i32** %15, align 8
  %115 = getelementptr inbounds i32, i32* %114, i64 %113
  store i32* %115, i32** %15, align 8
  %116 = load i64, i64* %17, align 8
  store i64 %116, i64* %12, align 8
  br label %117

117:                                              ; preds = %112, %96
  br label %118

118:                                              ; preds = %117, %63
  br label %119

119:                                              ; preds = %118, %37
  %120 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %121 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %120, i32 0, i32 1
  %122 = load i32*, i32** %121, align 8
  %123 = load i64, i64* %8, align 8
  %124 = getelementptr inbounds i32, i32* %122, i64 %123
  %125 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %126 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %125, i32 0, i32 1
  store i32* %124, i32** %126, align 8
  %127 = load i32*, i32** @BLOCK_TYPES, align 8
  %128 = load i32, i32* %13, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds i32, i32* %127, i64 %129
  %131 = load i32, i32* %130, align 4
  %132 = call i32 (i32, i8*, ...) @DISPLAYLEVEL(i32 4, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0), i32 %131)
  %133 = load i64, i64* %12, align 8
  %134 = trunc i64 %133 to i32
  %135 = call i32 (i32, i8*, ...) @DISPLAYLEVEL(i32 4, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i64 0, i64 0), i32 %134)
  %136 = load i32, i32* %9, align 4
  %137 = load i32, i32* %13, align 4
  %138 = shl i32 %137, 1
  %139 = or i32 %136, %138
  %140 = sext i32 %139 to i64
  %141 = load i64, i64* %12, align 8
  %142 = shl i64 %141, 3
  %143 = or i64 %140, %142
  %144 = and i64 %143, 255
  %145 = trunc i64 %144 to i32
  %146 = load i32*, i32** %14, align 8
  %147 = getelementptr inbounds i32, i32* %146, i64 0
  store i32 %145, i32* %147, align 4
  %148 = load i32*, i32** %14, align 8
  %149 = getelementptr inbounds i32, i32* %148, i64 1
  %150 = load i64, i64* %12, align 8
  %151 = lshr i64 %150, 5
  %152 = trunc i64 %151 to i32
  %153 = call i32 @MEM_writeLE16(i32* %149, i32 %152)
  %154 = load i32*, i32** %15, align 8
  %155 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %156 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %155, i32 0, i32 0
  store i32* %154, i32** %156, align 8
  ret void
}

declare dso_local i32 @RAND(i32*) #1

declare dso_local i32 @DISPLAYLEVEL(i32, i8*, ...) #1

declare dso_local i32 @RAND_buffer(i32*, i32*, i64) #1

declare dso_local i32 @memcpy(i32*, i32*, i64) #1

declare dso_local i32 @memset(i32*, i32, i64) #1

declare dso_local i64 @writeCompressedBlock(i32*, %struct.TYPE_6__*, i64, i32) #1

declare dso_local i32 @MEM_writeLE16(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
