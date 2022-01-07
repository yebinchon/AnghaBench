; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/compiler/extr_cvparser.c_CvInitFileTree.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/compiler/extr_cvparser.c_CvInitFileTree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i8*, i8*, i8*, i32, i32, i32*, i32* }
%struct.TYPE_5__ = type { i32 }

@AcpiGbl_CaptureComments = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"AmlLength: %x\0A\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"AmlStart:  %p\0A\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"AmlEnd?:   %p\0A\00", align 1
@AcpiGbl_FileCache = common dso_local global i32 0, align 4
@AcpiGbl_FileTreeRoot = common dso_local global %struct.TYPE_6__* null, align 8
@AcpiGbl_OutputFile = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@AcpiGbl_CurrentFilename = common dso_local global i8* null, align 8
@AcpiGbl_RootFilename = common dso_local global i8* null, align 8
@AML_COMMENT_OP = common dso_local global i64 0, align 8
@FILENAME_COMMENT = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [18 x i8] c"A9 and a 08 file\0A\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@PARENTFILENAME_COMMENT = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [18 x i8] c"A9 and a 09 file\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CvInitFileTree(%struct.TYPE_5__* %0, i64* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store i64* %1, i64** %5, align 8
  store i32 %2, i32* %6, align 4
  store i8* null, i8** %9, align 8
  store i8* null, i8** %10, align 8
  store i8* null, i8** %11, align 8
  store i8* null, i8** %12, align 8
  %13 = load i32, i32* @AcpiGbl_CaptureComments, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %3
  br label %131

16:                                               ; preds = %3
  %17 = load i32, i32* %6, align 4
  %18 = call i32 (i8*, ...) @CvDbgPrint(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %17)
  %19 = load i64*, i64** %5, align 8
  %20 = call i32 (i8*, ...) @CvDbgPrint(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i64* %19)
  %21 = load i64*, i64** %5, align 8
  %22 = load i32, i32* %6, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i64, i64* %21, i64 %23
  %25 = call i32 (i8*, ...) @CvDbgPrint(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i64* %24)
  %26 = load i32, i32* @AcpiGbl_FileCache, align 4
  %27 = call %struct.TYPE_6__* @AcpiOsAcquireObject(i32 %26)
  store %struct.TYPE_6__* %27, %struct.TYPE_6__** @AcpiGbl_FileTreeRoot, align 8
  %28 = load i64*, i64** %5, align 8
  %29 = bitcast i64* %28 to i8*
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** @AcpiGbl_FileTreeRoot, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  store i8* %29, i8** %31, align 8
  %32 = load i64*, i64** %5, align 8
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i64, i64* %32, i64 %36
  %38 = bitcast i64* %37 to i8*
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** @AcpiGbl_FileTreeRoot, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 1
  store i8* %38, i8** %40, align 8
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** @AcpiGbl_FileTreeRoot, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 6
  store i32* null, i32** %42, align 8
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** @AcpiGbl_FileTreeRoot, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 5
  store i32* null, i32** %44, align 8
  %45 = load i64*, i64** %5, align 8
  %46 = getelementptr inbounds i64, i64* %45, i64 2
  %47 = bitcast i64* %46 to i8*
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** @AcpiGbl_FileTreeRoot, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 2
  store i8* %47, i8** %49, align 8
  %50 = load i32, i32* @AcpiGbl_OutputFile, align 4
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** @AcpiGbl_FileTreeRoot, align 8
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 4
  store i32 %50, i32* %52, align 4
  %53 = load i32, i32* @TRUE, align 4
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** @AcpiGbl_FileTreeRoot, align 8
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 3
  store i32 %53, i32* %55, align 8
  store i8* null, i8** %9, align 8
  %56 = load i64*, i64** %5, align 8
  %57 = getelementptr inbounds i64, i64* %56, i64 2
  %58 = bitcast i64* %57 to i8*
  store i8* %58, i8** @AcpiGbl_CurrentFilename, align 8
  %59 = load i64*, i64** %5, align 8
  %60 = getelementptr inbounds i64, i64* %59, i64 2
  %61 = bitcast i64* %60 to i8*
  store i8* %61, i8** @AcpiGbl_RootFilename, align 8
  %62 = load i64*, i64** %5, align 8
  store i64* %62, i64** %7, align 8
  %63 = load i64*, i64** %5, align 8
  %64 = load i32, i32* %6, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i64, i64* %63, i64 %65
  store i64* %66, i64** %8, align 8
  br label %67

67:                                               ; preds = %128, %16
  %68 = load i64*, i64** %7, align 8
  %69 = load i64*, i64** %8, align 8
  %70 = icmp ule i64* %68, %69
  br i1 %70, label %71, label %131

71:                                               ; preds = %67
  %72 = load i64*, i64** %7, align 8
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* @AML_COMMENT_OP, align 8
  %75 = icmp eq i64 %73, %74
  br i1 %75, label %76, label %100

76:                                               ; preds = %71
  %77 = load i64*, i64** %7, align 8
  %78 = getelementptr inbounds i64, i64* %77, i64 1
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* @FILENAME_COMMENT, align 8
  %81 = icmp eq i64 %79, %80
  br i1 %81, label %82, label %100

82:                                               ; preds = %76
  %83 = load i64*, i64** %7, align 8
  %84 = getelementptr inbounds i64, i64* %83, i64 2
  %85 = bitcast i64* %84 to i8*
  %86 = call i64 @CvIsFilename(i8* %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %100

88:                                               ; preds = %82
  %89 = call i32 (i8*, ...) @CvDbgPrint(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  %90 = load i8*, i8** %9, align 8
  store i8* %90, i8** %10, align 8
  %91 = load i64*, i64** %7, align 8
  %92 = getelementptr inbounds i64, i64* %91, i64 2
  %93 = bitcast i64* %92 to i8*
  store i8* %93, i8** %9, align 8
  %94 = load i8*, i8** %9, align 8
  %95 = load i8*, i8** %10, align 8
  %96 = call i32 @CvAddToFileTree(i8* %94, i8* %95)
  %97 = load i8*, i8** %9, align 8
  store i8* %97, i8** %12, align 8
  %98 = load i8*, i8** %9, align 8
  %99 = call i32 (i8*, ...) @CvDbgPrint(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i8* %98)
  br label %128

100:                                              ; preds = %82, %76, %71
  %101 = load i64*, i64** %7, align 8
  %102 = load i64, i64* %101, align 8
  %103 = load i64, i64* @AML_COMMENT_OP, align 8
  %104 = icmp eq i64 %102, %103
  br i1 %104, label %105, label %127

105:                                              ; preds = %100
  %106 = load i64*, i64** %7, align 8
  %107 = getelementptr inbounds i64, i64* %106, i64 1
  %108 = load i64, i64* %107, align 8
  %109 = load i64, i64* @PARENTFILENAME_COMMENT, align 8
  %110 = icmp eq i64 %108, %109
  br i1 %110, label %111, label %127

111:                                              ; preds = %105
  %112 = load i64*, i64** %7, align 8
  %113 = getelementptr inbounds i64, i64* %112, i64 2
  %114 = bitcast i64* %113 to i8*
  %115 = call i64 @CvIsFilename(i8* %114)
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %127

117:                                              ; preds = %111
  %118 = call i32 (i8*, ...) @CvDbgPrint(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0))
  %119 = load i64*, i64** %7, align 8
  %120 = getelementptr inbounds i64, i64* %119, i64 2
  %121 = bitcast i64* %120 to i8*
  store i8* %121, i8** %11, align 8
  %122 = load i8*, i8** %12, align 8
  %123 = load i8*, i8** %11, align 8
  %124 = call i32 @CvSetFileParent(i8* %122, i8* %123)
  %125 = load i8*, i8** %11, align 8
  %126 = call i32 (i8*, ...) @CvDbgPrint(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i8* %125)
  br label %127

127:                                              ; preds = %117, %111, %105, %100
  br label %128

128:                                              ; preds = %127, %88
  %129 = load i64*, i64** %7, align 8
  %130 = getelementptr inbounds i64, i64* %129, i32 1
  store i64* %130, i64** %7, align 8
  br label %67

131:                                              ; preds = %15, %67
  ret void
}

declare dso_local i32 @CvDbgPrint(i8*, ...) #1

declare dso_local %struct.TYPE_6__* @AcpiOsAcquireObject(i32) #1

declare dso_local i64 @CvIsFilename(i8*) #1

declare dso_local i32 @CvAddToFileTree(i8*, i8*) #1

declare dso_local i32 @CvSetFileParent(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
