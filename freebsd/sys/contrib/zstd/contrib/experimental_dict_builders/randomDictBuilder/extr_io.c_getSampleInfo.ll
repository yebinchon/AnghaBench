; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/zstd/contrib/experimental_dict_builders/randomDictBuilder/extr_io.c_getSampleInfo.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/zstd/contrib/experimental_dict_builders/randomDictBuilder/extr_io.c_getSampleInfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i64*, i8* }
%struct.TYPE_6__ = type { i32, i64, i64 }

@RANDOM_MEMMULT = common dso_local global i64 0, align 8
@NOISELENGTH = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [37 x i8] c"not enough memory for trainFromFiles\00", align 1
@.str.1 = private unnamed_addr constant [45 x i8] c"!  Warning : some sample(s) are very large \0A\00", align 1
@.str.2 = private unnamed_addr constant [60 x i8] c"!  Note that dictionary is only useful for small samples. \0A\00", align 1
@.str.3 = private unnamed_addr constant [73 x i8] c"!  As a consequence, only the first %u bytes of each sample are loaded \0A\00", align 1
@SAMPLESIZE_MAX = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [61 x i8] c"!  Warning : nb of samples too low for proper processing ! \0A\00", align 1
@.str.5 = private unnamed_addr constant [43 x i8] c"!  Please provide _one file per sample_. \0A\00", align 1
@.str.6 = private unnamed_addr constant [91 x i8] c"!  Alternatively, split files into fixed-size blocks representative of samples, with -B# \0A\00", align 1
@.str.7 = private unnamed_addr constant [22 x i8] c"nb of samples too low\00", align 1
@.str.8 = private unnamed_addr constant [73 x i8] c"!  Warning : data size of samples too small for target dictionary size \0A\00", align 1
@.str.9 = private unnamed_addr constant [69 x i8] c"!  Samples should be about 100x larger than target dictionary size \0A\00", align 1
@.str.10 = private unnamed_addr constant [46 x i8] c"Not enough memory; training on %u MB only...\0A\00", align 1
@.str.11 = private unnamed_addr constant [23 x i8] c"Shuffling input files\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_5__* @getSampleInfo(i8** %0, i32 %1, i64 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i8**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_6__, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i8*, align 8
  %17 = alloca %struct.TYPE_5__*, align 8
  store i8** %0, i8*** %6, align 8
  store i32 %1, i32* %7, align 4
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %18 = load i8**, i8*** %6, align 8
  %19 = load i32, i32* %7, align 4
  %20 = load i64, i64* %8, align 8
  %21 = load i32, i32* %10, align 4
  call void @getFileStats(%struct.TYPE_6__* sret %11, i8** %18, i32 %19, i64 %20, i32 %21)
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = sext i32 %23 to i64
  %25 = mul i64 %24, 8
  %26 = trunc i64 %25 to i32
  %27 = call i8* @malloc(i32 %26)
  %28 = bitcast i8* %27 to i64*
  store i64* %28, i64** %12, align 8
  %29 = load i64, i64* @RANDOM_MEMMULT, align 8
  store i64 %29, i64* %13, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* %13, align 8
  %33 = mul i64 %31, %32
  %34 = call i64 @findMaxMem(i64 %33)
  %35 = load i64, i64* %13, align 8
  %36 = udiv i64 %34, %35
  store i64 %36, i64* %14, align 8
  %37 = load i64, i64* %14, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = call i32 @MIN(i64 %37, i64 %39)
  %41 = sext i32 %40 to i64
  store i64 %41, i64* %15, align 8
  %42 = load i64, i64* %15, align 8
  %43 = load i64, i64* @NOISELENGTH, align 8
  %44 = add i64 %42, %43
  %45 = trunc i64 %44 to i32
  %46 = call i8* @malloc(i32 %45)
  store i8* %46, i8** %16, align 8
  %47 = load i64*, i64** %12, align 8
  %48 = icmp ne i64* %47, null
  br i1 %48, label %49, label %52

49:                                               ; preds = %5
  %50 = load i8*, i8** %16, align 8
  %51 = icmp ne i8* %50, null
  br i1 %51, label %54, label %52

52:                                               ; preds = %49, %5
  %53 = call i32 @EXM_THROW(i32 12, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  br label %54

54:                                               ; preds = %52, %49
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 2
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %63

58:                                               ; preds = %54
  %59 = call i32 (i32, i8*, ...) @DISPLAYLEVEL(i32 2, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0))
  %60 = call i32 (i32, i8*, ...) @DISPLAYLEVEL(i32 2, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.2, i64 0, i64 0))
  %61 = load i32, i32* @SAMPLESIZE_MAX, align 4
  %62 = call i32 (i32, i8*, ...) @DISPLAYLEVEL(i32 2, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.3, i64 0, i64 0), i32 %61)
  br label %63

63:                                               ; preds = %58, %54
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = icmp slt i32 %65, 5
  br i1 %66, label %67, label %72

67:                                               ; preds = %63
  %68 = call i32 (i32, i8*, ...) @DISPLAYLEVEL(i32 2, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.4, i64 0, i64 0))
  %69 = call i32 (i32, i8*, ...) @DISPLAYLEVEL(i32 2, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.5, i64 0, i64 0))
  %70 = call i32 (i32, i8*, ...) @DISPLAYLEVEL(i32 2, i8* getelementptr inbounds ([91 x i8], [91 x i8]* @.str.6, i64 0, i64 0))
  %71 = call i32 @EXM_THROW(i32 14, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i64 0, i64 0))
  br label %72

72:                                               ; preds = %67, %63
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = load i32, i32* %9, align 4
  %76 = mul i32 8, %75
  %77 = zext i32 %76 to i64
  %78 = icmp ult i64 %74, %77
  br i1 %78, label %79, label %82

79:                                               ; preds = %72
  %80 = call i32 (i32, i8*, ...) @DISPLAYLEVEL(i32 2, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.8, i64 0, i64 0))
  %81 = call i32 (i32, i8*, ...) @DISPLAYLEVEL(i32 2, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.9, i64 0, i64 0))
  br label %82

82:                                               ; preds = %79, %72
  %83 = load i64, i64* %15, align 8
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 1
  %85 = load i64, i64* %84, align 8
  %86 = icmp ult i64 %83, %85
  br i1 %86, label %87, label %92

87:                                               ; preds = %82
  %88 = load i64, i64* %15, align 8
  %89 = lshr i64 %88, 20
  %90 = trunc i64 %89 to i32
  %91 = call i32 (i32, i8*, ...) @DISPLAYLEVEL(i32 1, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.10, i64 0, i64 0), i32 %90)
  br label %92

92:                                               ; preds = %87, %82
  %93 = call i32 (i32, i8*, ...) @DISPLAYLEVEL(i32 3, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.11, i64 0, i64 0))
  %94 = load i8**, i8*** %6, align 8
  %95 = load i32, i32* %7, align 4
  %96 = call i32 @shuffle(i8** %94, i32 %95)
  %97 = load i8*, i8** %16, align 8
  %98 = load i64*, i64** %12, align 8
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = load i8**, i8*** %6, align 8
  %102 = load i32, i32* %7, align 4
  %103 = load i64, i64* %8, align 8
  %104 = load i32, i32* %10, align 4
  %105 = call i32 @loadFiles(i8* %97, i64* %15, i64* %98, i32 %100, i8** %101, i32 %102, i64 %103, i32 %104)
  store i32 %105, i32* %7, align 4
  %106 = call i8* @malloc(i32 24)
  %107 = bitcast i8* %106 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %107, %struct.TYPE_5__** %17, align 8
  %108 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %111 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %110, i32 0, i32 0
  store i32 %109, i32* %111, align 8
  %112 = load i64*, i64** %12, align 8
  %113 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %114 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %113, i32 0, i32 1
  store i64* %112, i64** %114, align 8
  %115 = load i8*, i8** %16, align 8
  %116 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %117 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %116, i32 0, i32 2
  store i8* %115, i8** %117, align 8
  %118 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  ret %struct.TYPE_5__* %118
}

declare dso_local void @getFileStats(%struct.TYPE_6__* sret, i8**, i32, i64, i32) #1

declare dso_local i8* @malloc(i32) #1

declare dso_local i64 @findMaxMem(i64) #1

declare dso_local i32 @MIN(i64, i64) #1

declare dso_local i32 @EXM_THROW(i32, i8*) #1

declare dso_local i32 @DISPLAYLEVEL(i32, i8*, ...) #1

declare dso_local i32 @shuffle(i8**, i32) #1

declare dso_local i32 @loadFiles(i8*, i64*, i64*, i32, i8**, i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
