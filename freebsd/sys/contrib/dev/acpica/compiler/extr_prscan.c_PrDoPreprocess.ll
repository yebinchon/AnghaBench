; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/compiler/extr_prscan.c_PrDoPreprocess.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/compiler/extr_prscan.c_PrDoPreprocess.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@ASL_DEBUG_OUTPUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Starting preprocessing phase\0A\0A\00", align 1
@ASL_FILE_INPUT = common dso_local global i64 0, align 8
@AslGbl_Files = common dso_local global %struct.TYPE_2__* null, align 8
@ASL_FILE_PREPROCESSOR = common dso_local global i64 0, align 8
@AslCompilerin = common dso_local global i32 0, align 4
@AslGbl_PreprocessOnly = common dso_local global i32 0, align 4
@AslGbl_CurrentLineNumber = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [32 x i8] c"Preprocessing phase complete \0A\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @PrDoPreprocess() #0 {
  %1 = alloca i64, align 8
  %2 = load i32, i32* @ASL_DEBUG_OUTPUT, align 4
  %3 = call i32 @DbgPrint(i32 %2, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %4 = load i64, i64* @ASL_FILE_INPUT, align 8
  %5 = call i32 @FlSeekFile(i64 %4, i32 0)
  %6 = call i32 (...) @PrDumpPredefinedNames()
  br label %7

7:                                                ; preds = %10, %0
  %8 = call i32 (...) @PrPreprocessInputFile()
  %9 = call i64 (...) @PrPopInputFileStack()
  store i64 %9, i64* %1, align 8
  br label %10

10:                                               ; preds = %7
  %11 = load i64, i64* %1, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %7, label %13

13:                                               ; preds = %10
  %14 = load i64, i64* @ASL_FILE_INPUT, align 8
  %15 = call i32 @FlCloseFile(i64 %14)
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** @AslGbl_Files, align 8
  %17 = load i64, i64* @ASL_FILE_PREPROCESSOR, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i64 %17
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** @AslGbl_Files, align 8
  %22 = load i64, i64* @ASL_FILE_INPUT, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i64 %22
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  store i32 %20, i32* %24, align 4
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** @AslGbl_Files, align 8
  %26 = load i64, i64* @ASL_FILE_INPUT, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* @AslCompilerin, align 4
  %30 = load i64, i64* @ASL_FILE_INPUT, align 8
  %31 = call i32 @FlSeekFile(i64 %30, i32 0)
  %32 = load i32, i32* @AslGbl_PreprocessOnly, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %13
  store i64 0, i64* @AslGbl_CurrentLineNumber, align 8
  br label %35

35:                                               ; preds = %34, %13
  %36 = load i32, i32* @ASL_DEBUG_OUTPUT, align 4
  %37 = call i32 @DbgPrint(i32 %36, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  ret void
}

declare dso_local i32 @DbgPrint(i32, i8*) #1

declare dso_local i32 @FlSeekFile(i64, i32) #1

declare dso_local i32 @PrDumpPredefinedNames(...) #1

declare dso_local i32 @PrPreprocessInputFile(...) #1

declare dso_local i64 @PrPopInputFileStack(...) #1

declare dso_local i32 @FlCloseFile(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
