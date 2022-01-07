; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/zstd/tests/extr_decodecorpus.c_generateCorpus.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/zstd/tests/extr_decodecorpus.c_generateCorpus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i64, i64, i64 }

@MAX_PATH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"seed: %u\0A\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"\0D%u/%u        \00", align 1
@gt_frame = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [13 x i8] c"%s/z%06u.zst\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"Error: path too long\0A\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"%s/z%06u\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"\0D%u/%u      \0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i32, i8*, i8*, i64)* @generateCorpus to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @generateCorpus(i64 %0, i32 %1, i8* %2, i8* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_4__, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i64 %0, i64* %7, align 8
  store i32 %1, i32* %8, align 4
  store i8* %2, i8** %9, align 8
  store i8* %3, i8** %10, align 8
  store i64 %4, i64* %11, align 8
  %18 = load i32, i32* @MAX_PATH, align 4
  %19 = zext i32 %18 to i64
  %20 = call i8* @llvm.stacksave()
  store i8* %20, i8** %12, align 8
  %21 = alloca i8, i64 %19, align 16
  store i64 %19, i64* %13, align 8
  %22 = load i64, i64* %7, align 8
  %23 = trunc i64 %22 to i32
  %24 = call i32 (i8*, ...) @DISPLAY(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %23)
  store i32 0, i32* %14, align 4
  br label %25

25:                                               ; preds = %98, %5
  %26 = load i32, i32* %14, align 4
  %27 = load i32, i32* %8, align 4
  %28 = icmp ult i32 %26, %27
  br i1 %28, label %29, label %101

29:                                               ; preds = %25
  %30 = load i32, i32* %14, align 4
  %31 = load i32, i32* %8, align 4
  %32 = call i32 @DISPLAYUPDATE(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32 %30, i32 %31)
  %33 = call i32 @initDictInfo(i32 0, i32 0, i32* null, i32 0)
  store i32 %33, i32* %16, align 4
  %34 = load i64, i64* %11, align 8
  %35 = load i64, i64* @gt_frame, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %41

37:                                               ; preds = %29
  %38 = load i64, i64* %7, align 8
  %39 = load i32, i32* %16, align 4
  %40 = call i64 @generateFrame(i64 %38, %struct.TYPE_4__* %15, i32 %39)
  store i64 %40, i64* %7, align 8
  br label %45

41:                                               ; preds = %29
  %42 = load i64, i64* %7, align 8
  %43 = load i32, i32* %16, align 4
  %44 = call i64 @generateCompressedBlock(i64 %42, %struct.TYPE_4__* %15, i32 %43)
  store i64 %44, i64* %7, align 8
  br label %45

45:                                               ; preds = %41, %37
  %46 = load i32, i32* @MAX_PATH, align 4
  %47 = load i8*, i8** %9, align 8
  %48 = load i32, i32* %14, align 4
  %49 = call i32 @snprintf(i8* %21, i32 %46, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i8* %47, i32 %48)
  %50 = add nsw i32 %49, 1
  %51 = load i32, i32* @MAX_PATH, align 4
  %52 = icmp sgt i32 %50, %51
  br i1 %52, label %53, label %55

53:                                               ; preds = %45
  %54 = call i32 (i8*, ...) @DISPLAY(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0))
  store i32 1, i32* %6, align 4
  store i32 1, i32* %17, align 4
  br label %105

55:                                               ; preds = %45
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 2
  %57 = load i64, i64* %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 3
  %59 = load i64, i64* %58, align 8
  %60 = inttoptr i64 %59 to i32*
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 2
  %62 = load i64, i64* %61, align 8
  %63 = inttoptr i64 %62 to i32*
  %64 = ptrtoint i32* %60 to i64
  %65 = ptrtoint i32* %63 to i64
  %66 = sub i64 %64, %65
  %67 = sdiv exact i64 %66, 4
  %68 = trunc i64 %67 to i32
  %69 = call i32 @outputBuffer(i64 %57, i32 %68, i8* %21)
  %70 = load i8*, i8** %10, align 8
  %71 = icmp ne i8* %70, null
  br i1 %71, label %72, label %97

72:                                               ; preds = %55
  %73 = load i32, i32* @MAX_PATH, align 4
  %74 = load i8*, i8** %10, align 8
  %75 = load i32, i32* %14, align 4
  %76 = call i32 @snprintf(i8* %21, i32 %73, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i8* %74, i32 %75)
  %77 = add nsw i32 %76, 1
  %78 = load i32, i32* @MAX_PATH, align 4
  %79 = icmp sgt i32 %77, %78
  br i1 %79, label %80, label %82

80:                                               ; preds = %72
  %81 = call i32 (i8*, ...) @DISPLAY(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0))
  store i32 1, i32* %6, align 4
  store i32 1, i32* %17, align 4
  br label %105

82:                                               ; preds = %72
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 1
  %86 = load i64, i64* %85, align 8
  %87 = inttoptr i64 %86 to i32*
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = inttoptr i64 %89 to i32*
  %91 = ptrtoint i32* %87 to i64
  %92 = ptrtoint i32* %90 to i64
  %93 = sub i64 %91, %92
  %94 = sdiv exact i64 %93, 4
  %95 = trunc i64 %94 to i32
  %96 = call i32 @outputBuffer(i64 %84, i32 %95, i8* %21)
  br label %97

97:                                               ; preds = %82, %55
  br label %98

98:                                               ; preds = %97
  %99 = load i32, i32* %14, align 4
  %100 = add i32 %99, 1
  store i32 %100, i32* %14, align 4
  br label %25

101:                                              ; preds = %25
  %102 = load i32, i32* %14, align 4
  %103 = load i32, i32* %8, align 4
  %104 = call i32 (i8*, ...) @DISPLAY(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0), i32 %102, i32 %103)
  store i32 0, i32* %6, align 4
  store i32 1, i32* %17, align 4
  br label %105

105:                                              ; preds = %101, %80, %53
  %106 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %106)
  %107 = load i32, i32* %6, align 4
  ret i32 %107
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @DISPLAY(i8*, ...) #2

declare dso_local i32 @DISPLAYUPDATE(i8*, i32, i32) #2

declare dso_local i32 @initDictInfo(i32, i32, i32*, i32) #2

declare dso_local i64 @generateFrame(i64, %struct.TYPE_4__*, i32) #2

declare dso_local i64 @generateCompressedBlock(i64, %struct.TYPE_4__*, i32) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i32) #2

declare dso_local i32 @outputBuffer(i64, i32, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
