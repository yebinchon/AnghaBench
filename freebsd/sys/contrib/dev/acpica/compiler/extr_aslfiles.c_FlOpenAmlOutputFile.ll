; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/compiler/extr_aslfiles.c_FlOpenAmlOutputFile.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/compiler/extr_aslfiles.c_FlOpenAmlOutputFile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8* }

@AslGbl_Files = common dso_local global %struct.TYPE_2__* null, align 8
@ASL_FILE_AML_OUTPUT = common dso_local global i64 0, align 8
@AcpiGbl_CaptureComments = common dso_local global i32 0, align 4
@FILE_SUFFIX_AML_CODE = common dso_local global i32 0, align 4
@FILE_SUFFIX_CONVERT_AML = common dso_local global i32 0, align 4
@ASL_ERROR = common dso_local global i32 0, align 4
@ASL_MSG_OUTPUT_FILENAME = common dso_local global i32 0, align 4
@AE_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"w+b\00", align 1
@AE_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @FlOpenAmlOutputFile(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  %5 = load %struct.TYPE_2__*, %struct.TYPE_2__** @AslGbl_Files, align 8
  %6 = load i64, i64* @ASL_FILE_AML_OUTPUT, align 8
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i64 %6
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i8*, i8** %8, align 8
  store i8* %9, i8** %4, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = icmp ne i8* %10, null
  br i1 %11, label %37, label %12

12:                                               ; preds = %1
  %13 = load i32, i32* @AcpiGbl_CaptureComments, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %19, label %15

15:                                               ; preds = %12
  %16 = load i8*, i8** %3, align 8
  %17 = load i32, i32* @FILE_SUFFIX_AML_CODE, align 4
  %18 = call i8* @FlGenerateFilename(i8* %16, i32 %17)
  store i8* %18, i8** %4, align 8
  br label %23

19:                                               ; preds = %12
  %20 = load i8*, i8** %3, align 8
  %21 = load i32, i32* @FILE_SUFFIX_CONVERT_AML, align 4
  %22 = call i8* @FlGenerateFilename(i8* %20, i32 %21)
  store i8* %22, i8** %4, align 8
  br label %23

23:                                               ; preds = %19, %15
  %24 = load i8*, i8** %4, align 8
  %25 = icmp ne i8* %24, null
  br i1 %25, label %31, label %26

26:                                               ; preds = %23
  %27 = load i32, i32* @ASL_ERROR, align 4
  %28 = load i32, i32* @ASL_MSG_OUTPUT_FILENAME, align 4
  %29 = call i32 @AslCommonError(i32 %27, i32 %28, i32 0, i32 0, i32 0, i32 0, i32* null, i32* null)
  %30 = load i32, i32* @AE_ERROR, align 4
  store i32 %30, i32* %2, align 4
  br label %42

31:                                               ; preds = %23
  %32 = load i8*, i8** %4, align 8
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** @AslGbl_Files, align 8
  %34 = load i64, i64* @ASL_FILE_AML_OUTPUT, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  store i8* %32, i8** %36, align 8
  br label %37

37:                                               ; preds = %31, %1
  %38 = load i64, i64* @ASL_FILE_AML_OUTPUT, align 8
  %39 = load i8*, i8** %4, align 8
  %40 = call i32 @FlOpenFile(i64 %38, i8* %39, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %41 = load i32, i32* @AE_OK, align 4
  store i32 %41, i32* %2, align 4
  br label %42

42:                                               ; preds = %37, %26
  %43 = load i32, i32* %2, align 4
  ret i32 %43
}

declare dso_local i8* @FlGenerateFilename(i8*, i32) #1

declare dso_local i32 @AslCommonError(i32, i32, i32, i32, i32, i32, i32*, i32*) #1

declare dso_local i32 @FlOpenFile(i64, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
