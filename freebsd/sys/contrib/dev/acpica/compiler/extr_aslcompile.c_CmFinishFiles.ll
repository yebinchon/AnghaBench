; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/compiler/extr_aslcompile.c_CmFinishFiles.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/compiler/extr_aslcompile.c_CmFinishFiles.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }

@AslGbl_Files = common dso_local global %struct.TYPE_2__* null, align 8
@ASL_FILE_PREPROCESSOR = common dso_local global i64 0, align 8
@ASL_FILE_INPUT = common dso_local global i64 0, align 8
@ASL_MAX_FILE_TYPE = common dso_local global i64 0, align 8
@stderr = common dso_local global i64 0, align 8
@stdout = common dso_local global i64 0, align 8
@ASL_FILE_AML_OUTPUT = common dso_local global i64 0, align 8
@AslGbl_PreprocessFlag = common dso_local global i64 0, align 8
@AslGbl_KeepPreprocessorTempFile = common dso_local global i32 0, align 4
@AslGbl_SourceOutputFlag = common dso_local global i32 0, align 4
@ASL_FILE_SOURCE_OUTPUT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @CmFinishFiles to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @CmFinishFiles(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %4 = load %struct.TYPE_2__*, %struct.TYPE_2__** @AslGbl_Files, align 8
  %5 = load i64, i64* @ASL_FILE_PREPROCESSOR, align 8
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %4, i64 %5
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** @AslGbl_Files, align 8
  %10 = load i64, i64* @ASL_FILE_INPUT, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i64 %10
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp eq i64 %8, %13
  br i1 %14, label %15, label %20

15:                                               ; preds = %1
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** @AslGbl_Files, align 8
  %17 = load i64, i64* @ASL_FILE_PREPROCESSOR, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i64 %17
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  store i64 0, i64* %19, align 8
  br label %20

20:                                               ; preds = %15, %1
  %21 = load i64, i64* @ASL_FILE_INPUT, align 8
  store i64 %21, i64* %3, align 8
  br label %22

22:                                               ; preds = %46, %20
  %23 = load i64, i64* %3, align 8
  %24 = load i64, i64* @ASL_MAX_FILE_TYPE, align 8
  %25 = icmp ult i64 %23, %24
  br i1 %25, label %26, label %49

26:                                               ; preds = %22
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** @AslGbl_Files, align 8
  %28 = load i64, i64* %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @stderr, align 8
  %33 = icmp ne i64 %31, %32
  br i1 %33, label %34, label %45

34:                                               ; preds = %26
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** @AslGbl_Files, align 8
  %36 = load i64, i64* %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i64 %36
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @stdout, align 8
  %41 = icmp ne i64 %39, %40
  br i1 %41, label %42, label %45

42:                                               ; preds = %34
  %43 = load i64, i64* %3, align 8
  %44 = call i32 @FlCloseFile(i64 %43)
  br label %45

45:                                               ; preds = %42, %34, %26
  br label %46

46:                                               ; preds = %45
  %47 = load i64, i64* %3, align 8
  %48 = add i64 %47, 1
  store i64 %48, i64* %3, align 8
  br label %22

49:                                               ; preds = %22
  %50 = load i64, i64* %2, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %49
  %53 = load i64, i64* @ASL_FILE_AML_OUTPUT, align 8
  %54 = call i32 @FlDeleteFile(i64 %53)
  br label %55

55:                                               ; preds = %52, %49
  %56 = load i64, i64* @AslGbl_PreprocessFlag, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %64

58:                                               ; preds = %55
  %59 = load i32, i32* @AslGbl_KeepPreprocessorTempFile, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %64, label %61

61:                                               ; preds = %58
  %62 = load i64, i64* @ASL_FILE_PREPROCESSOR, align 8
  %63 = call i32 @FlDeleteFile(i64 %62)
  br label %64

64:                                               ; preds = %61, %58, %55
  %65 = load i32, i32* @AslGbl_SourceOutputFlag, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %70, label %67

67:                                               ; preds = %64
  %68 = load i64, i64* @ASL_FILE_SOURCE_OUTPUT, align 8
  %69 = call i32 @FlDeleteFile(i64 %68)
  br label %70

70:                                               ; preds = %67, %64
  ret void
}

declare dso_local i32 @FlCloseFile(i64) #1

declare dso_local i32 @FlDeleteFile(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
