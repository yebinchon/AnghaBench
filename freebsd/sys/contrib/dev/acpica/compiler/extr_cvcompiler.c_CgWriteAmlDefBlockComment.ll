; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/compiler/extr_cvcompiler.c_CgWriteAmlDefBlockComment.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/compiler/extr_cvcompiler.c_CgWriteAmlDefBlockComment.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64, i8*, %struct.TYPE_8__*, i32 }
%struct.TYPE_8__ = type { i8*, %struct.TYPE_8__* }

@AcpiGbl_CaptureComments = common dso_local global i32 0, align 4
@PARSEOP_DEFINITION_BLOCK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [44 x i8] c"Printing comments for a definition block..\0A\00", align 1
@FILE_SUFFIX_DISASSEMBLY = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [2 x i8] c".\00", align 1
@FILENAME_COMMENT = common dso_local global i32 0, align 4
@STD_DEFBLK_COMMENT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [22 x i8] c"Printing comment: %s\0A\00", align 1
@END_DEFBLK_COMMENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CgWriteAmlDefBlockComment(%struct.TYPE_7__* %0) #0 {
  %2 = alloca %struct.TYPE_7__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %2, align 8
  %8 = load i32, i32* @AcpiGbl_CaptureComments, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %17

10:                                               ; preds = %1
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @PARSEOP_DEFINITION_BLOCK, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %10, %1
  br label %104

18:                                               ; preds = %10
  %19 = call i32 (i8*, ...) @CvDbgPrint(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @strlen(i32 %23)
  %25 = call i8* @UtLocalCacheCalloc(i32 %24)
  store i8* %25, i8** %5, align 8
  %26 = load i8*, i8** %5, align 8
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @strcpy(i8* %26, i32 %30)
  %32 = load i8*, i8** %5, align 8
  %33 = call i8* @strrchr(i8* %32, i8 signext 47)
  store i8* %33, i8** %7, align 8
  %34 = load i8*, i8** %5, align 8
  %35 = call i8* @strrchr(i8* %34, i8 signext 46)
  store i8* %35, i8** %6, align 8
  %36 = load i8*, i8** %6, align 8
  %37 = icmp ne i8* %36, null
  br i1 %37, label %38, label %49

38:                                               ; preds = %18
  %39 = load i8*, i8** %6, align 8
  %40 = load i8*, i8** %7, align 8
  %41 = icmp ugt i8* %39, %40
  br i1 %41, label %42, label %49

42:                                               ; preds = %38
  %43 = load i8*, i8** %6, align 8
  %44 = getelementptr inbounds i8, i8* %43, i32 1
  store i8* %44, i8** %6, align 8
  %45 = load i8*, i8** %6, align 8
  store i8 0, i8* %45, align 1
  %46 = load i8*, i8** %6, align 8
  %47 = load i8*, i8** @FILE_SUFFIX_DISASSEMBLY, align 8
  %48 = call i32 @strcat(i8* %46, i8* %47)
  br label %55

49:                                               ; preds = %38, %18
  %50 = load i8*, i8** %5, align 8
  %51 = call i32 @strcat(i8* %50, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %52 = load i8*, i8** %5, align 8
  %53 = load i8*, i8** @FILE_SUFFIX_DISASSEMBLY, align 8
  %54 = call i32 @strcat(i8* %52, i8* %53)
  br label %55

55:                                               ; preds = %49, %42
  %56 = load i32, i32* @FILENAME_COMMENT, align 4
  store i32 %56, i32* %3, align 4
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %58 = load i8*, i8** %5, align 8
  %59 = load i32, i32* %3, align 4
  %60 = call i32 @CgWriteOneAmlComment(%struct.TYPE_7__* %57, i8* %58, i32 %59)
  %61 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 2
  %64 = load %struct.TYPE_8__*, %struct.TYPE_8__** %63, align 8
  store %struct.TYPE_8__* %64, %struct.TYPE_8__** %4, align 8
  %65 = load i32, i32* @STD_DEFBLK_COMMENT, align 4
  store i32 %65, i32* %3, align 4
  br label %66

66:                                               ; preds = %69, %55
  %67 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %68 = icmp ne %struct.TYPE_8__* %67, null
  br i1 %68, label %69, label %83

69:                                               ; preds = %66
  %70 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %71 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i32 0, i32 0
  %73 = load i8*, i8** %72, align 8
  %74 = load i32, i32* %3, align 4
  %75 = call i32 @CgWriteOneAmlComment(%struct.TYPE_7__* %70, i8* %73, i32 %74)
  %76 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 0
  %78 = load i8*, i8** %77, align 8
  %79 = call i32 (i8*, ...) @CvDbgPrint(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i8* %78)
  %80 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %80, i32 0, i32 1
  %82 = load %struct.TYPE_8__*, %struct.TYPE_8__** %81, align 8
  store %struct.TYPE_8__* %82, %struct.TYPE_8__** %4, align 8
  br label %66

83:                                               ; preds = %66
  %84 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 2
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %86, align 8
  %87 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %88 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 1
  %90 = load i8*, i8** %89, align 8
  %91 = icmp ne i8* %90, null
  br i1 %91, label %92, label %104

92:                                               ; preds = %83
  %93 = load i32, i32* @END_DEFBLK_COMMENT, align 4
  store i32 %93, i32* %3, align 4
  %94 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %95 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %96 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i32 0, i32 1
  %98 = load i8*, i8** %97, align 8
  %99 = load i32, i32* %3, align 4
  %100 = call i32 @CgWriteOneAmlComment(%struct.TYPE_7__* %94, i8* %98, i32 %99)
  %101 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %102 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i32 0, i32 1
  store i8* null, i8** %103, align 8
  br label %104

104:                                              ; preds = %17, %92, %83
  ret void
}

declare dso_local i32 @CvDbgPrint(i8*, ...) #1

declare dso_local i8* @UtLocalCacheCalloc(i32) #1

declare dso_local i32 @strlen(i32) #1

declare dso_local i32 @strcpy(i8*, i32) #1

declare dso_local i8* @strrchr(i8*, i8 signext) #1

declare dso_local i32 @strcat(i8*, i8*) #1

declare dso_local i32 @CgWriteOneAmlComment(%struct.TYPE_7__*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
