; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/compiler/extr_cvparser.c_CvAddToFileTree.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/compiler/extr_cvparser.c_CvAddToFileTree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i8*, i8*, i8*, i32, i32, %struct.TYPE_6__*, %struct.TYPE_6__* }

@AcpiGbl_RootFilename = common dso_local global i32 0, align 4
@AcpiGbl_FileTreeRoot = common dso_local global %struct.TYPE_6__* null, align 8
@AcpiGbl_FileCache = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"w+\00", align 1
@ASL_FILE_AML_OUTPUT = common dso_local global i32 0, align 4
@AslGbl_MsgBuffer = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"\22%s\22 - %s\00", align 1
@errno = common dso_local global i32 0, align 4
@ASL_ERROR = common dso_local global i32 0, align 4
@ASL_MSG_OPEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*)* @CvAddToFileTree to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @CvAddToFileTree(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_6__*, align 8
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = load i32, i32* @AcpiGbl_RootFilename, align 4
  %8 = call i32 @AcpiUtStricmp(i8* %6, i32 %7)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %24, label %10

10:                                               ; preds = %2
  %11 = load i8*, i8** %4, align 8
  %12 = icmp ne i8* %11, null
  br i1 %12, label %13, label %24

13:                                               ; preds = %10
  %14 = load i8*, i8** %4, align 8
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** @AcpiGbl_FileTreeRoot, align 8
  %16 = call %struct.TYPE_6__* @CvFilenameExists(i8* %14, %struct.TYPE_6__* %15)
  store %struct.TYPE_6__* %16, %struct.TYPE_6__** %5, align 8
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %18 = icmp ne %struct.TYPE_6__* %17, null
  br i1 %18, label %19, label %23

19:                                               ; preds = %13
  %20 = load i8*, i8** %3, align 8
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  store i8* %20, i8** %22, align 8
  br label %23

23:                                               ; preds = %19, %13
  br label %34

24:                                               ; preds = %10, %2
  %25 = load i8*, i8** %3, align 8
  %26 = load i32, i32* @AcpiGbl_RootFilename, align 4
  %27 = call i32 @AcpiUtStricmp(i8* %25, i32 %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %33, label %29

29:                                               ; preds = %24
  %30 = load i8*, i8** %4, align 8
  %31 = icmp ne i8* %30, null
  br i1 %31, label %33, label %32

32:                                               ; preds = %29
  br label %121

33:                                               ; preds = %29, %24
  br label %34

34:                                               ; preds = %33, %23
  %35 = load i8*, i8** %3, align 8
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** @AcpiGbl_FileTreeRoot, align 8
  %37 = call %struct.TYPE_6__* @CvFilenameExists(i8* %35, %struct.TYPE_6__* %36)
  store %struct.TYPE_6__* %37, %struct.TYPE_6__** %5, align 8
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %39 = icmp ne %struct.TYPE_6__* %38, null
  br i1 %39, label %40, label %81

40:                                               ; preds = %34
  %41 = load i8*, i8** %4, align 8
  %42 = icmp ne i8* %41, null
  br i1 %42, label %43, label %81

43:                                               ; preds = %40
  %44 = load i8*, i8** %4, align 8
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** @AcpiGbl_FileTreeRoot, align 8
  %46 = call %struct.TYPE_6__* @CvFilenameExists(i8* %44, %struct.TYPE_6__* %45)
  store %struct.TYPE_6__* %46, %struct.TYPE_6__** %5, align 8
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %48 = icmp ne %struct.TYPE_6__* %47, null
  br i1 %48, label %49, label %80

49:                                               ; preds = %43
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 0
  %52 = load i8*, i8** %51, align 8
  %53 = load i8*, i8** %3, align 8
  %54 = icmp ult i8* %52, %53
  br i1 %54, label %55, label %80

55:                                               ; preds = %49
  %56 = load i8*, i8** %3, align 8
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 0
  store i8* %56, i8** %58, align 8
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 5
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %60, align 8
  store %struct.TYPE_6__* %61, %struct.TYPE_6__** %5, align 8
  br label %62

62:                                               ; preds = %75, %55
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %64 = icmp ne %struct.TYPE_6__* %63, null
  br i1 %64, label %65, label %79

65:                                               ; preds = %62
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 0
  %68 = load i8*, i8** %67, align 8
  %69 = load i8*, i8** %3, align 8
  %70 = icmp ult i8* %68, %69
  br i1 %70, label %71, label %75

71:                                               ; preds = %65
  %72 = load i8*, i8** %3, align 8
  %73 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 0
  store i8* %72, i8** %74, align 8
  br label %75

75:                                               ; preds = %71, %65
  %76 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 5
  %78 = load %struct.TYPE_6__*, %struct.TYPE_6__** %77, align 8
  store %struct.TYPE_6__* %78, %struct.TYPE_6__** %5, align 8
  br label %62

79:                                               ; preds = %62
  br label %80

80:                                               ; preds = %79, %49, %43
  br label %121

81:                                               ; preds = %40, %34
  %82 = load %struct.TYPE_6__*, %struct.TYPE_6__** @AcpiGbl_FileTreeRoot, align 8
  store %struct.TYPE_6__* %82, %struct.TYPE_6__** %5, align 8
  %83 = load i32, i32* @AcpiGbl_FileCache, align 4
  %84 = call %struct.TYPE_6__* @AcpiOsAcquireObject(i32 %83)
  store %struct.TYPE_6__* %84, %struct.TYPE_6__** @AcpiGbl_FileTreeRoot, align 8
  %85 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %86 = load %struct.TYPE_6__*, %struct.TYPE_6__** @AcpiGbl_FileTreeRoot, align 8
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 6
  store %struct.TYPE_6__* %85, %struct.TYPE_6__** %87, align 8
  %88 = load %struct.TYPE_6__*, %struct.TYPE_6__** @AcpiGbl_FileTreeRoot, align 8
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 5
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %89, align 8
  %90 = load i8*, i8** %3, align 8
  %91 = load %struct.TYPE_6__*, %struct.TYPE_6__** @AcpiGbl_FileTreeRoot, align 8
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 1
  store i8* %90, i8** %92, align 8
  %93 = load i8*, i8** %3, align 8
  %94 = load %struct.TYPE_6__*, %struct.TYPE_6__** @AcpiGbl_FileTreeRoot, align 8
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i32 0, i32 2
  store i8* %93, i8** %95, align 8
  %96 = load i32, i32* @FALSE, align 4
  %97 = load %struct.TYPE_6__*, %struct.TYPE_6__** @AcpiGbl_FileTreeRoot, align 8
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i32 0, i32 4
  store i32 %96, i32* %98, align 4
  %99 = load i8*, i8** %3, align 8
  %100 = call i32 @fopen(i8* %99, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %101 = load %struct.TYPE_6__*, %struct.TYPE_6__** @AcpiGbl_FileTreeRoot, align 8
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i32 0, i32 3
  store i32 %100, i32* %102, align 8
  %103 = load %struct.TYPE_6__*, %struct.TYPE_6__** @AcpiGbl_FileTreeRoot, align 8
  %104 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %103, i32 0, i32 3
  %105 = load i32, i32* %104, align 8
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %120, label %107

107:                                              ; preds = %81
  %108 = load i32, i32* @ASL_FILE_AML_OUTPUT, align 4
  %109 = call i32 @FlDeleteFile(i32 %108)
  %110 = load i32, i32* @AslGbl_MsgBuffer, align 4
  %111 = load i8*, i8** %3, align 8
  %112 = load i32, i32* @errno, align 4
  %113 = call i8* @strerror(i32 %112)
  %114 = call i32 @sprintf(i32 %110, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i8* %111, i8* %113)
  %115 = load i32, i32* @ASL_ERROR, align 4
  %116 = load i32, i32* @ASL_MSG_OPEN, align 4
  %117 = load i32, i32* @AslGbl_MsgBuffer, align 4
  %118 = call i32 @AslCommonError(i32 %115, i32 %116, i32 0, i32 0, i32 0, i32 0, i32* null, i32 %117)
  %119 = call i32 (...) @AslAbort()
  br label %120

120:                                              ; preds = %107, %81
  br label %121

121:                                              ; preds = %32, %120, %80
  ret void
}

declare dso_local i32 @AcpiUtStricmp(i8*, i32) #1

declare dso_local %struct.TYPE_6__* @CvFilenameExists(i8*, %struct.TYPE_6__*) #1

declare dso_local %struct.TYPE_6__* @AcpiOsAcquireObject(i32) #1

declare dso_local i32 @fopen(i8*, i8*) #1

declare dso_local i32 @FlDeleteFile(i32) #1

declare dso_local i32 @sprintf(i32, i8*, i8*, i8*) #1

declare dso_local i8* @strerror(i32) #1

declare dso_local i32 @AslCommonError(i32, i32, i32, i32, i32, i32, i32*, i32) #1

declare dso_local i32 @AslAbort(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
