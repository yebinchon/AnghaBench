; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/compiler/extr_aslerror.c_AslLogNewError.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/compiler/extr_aslerror.c_AslLogNewError.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@AslGbl_DebugFlag = common dso_local global i64 0, align 8
@ASL_FILE_STDERR = common dso_local global i32 0, align 4
@AslGbl_ExceptionCount = common dso_local global i64* null, align 8
@AslGbl_IgnoreErrors = common dso_local global i32 0, align 4
@ASL_ERROR = common dso_local global i64 0, align 8
@ASL_MAX_ERROR_COUNT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [36 x i8] c"\0AMaximum error count (%u) exceeded\0A\00", align 1
@AslGbl_SourceLine = common dso_local global i64 0, align 8
@AslGbl_ErrorLog = common dso_local global i32 0, align 4
@AslGbl_NextError = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i32, i32, i32, i32, i32, i8*, i8*, i8*, i32*)* @AslLogNewError to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @AslLogNewError(i64 %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i8* %6, i8* %7, i8* %8, i32* %9) #0 {
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i64, align 8
  store i64 %0, i64* %11, align 8
  store i32 %1, i32* %12, align 4
  store i32 %2, i32* %13, align 4
  store i32 %3, i32* %14, align 4
  store i32 %4, i32* %15, align 4
  store i32 %5, i32* %16, align 4
  store i8* %6, i8** %17, align 8
  store i8* %7, i8** %18, align 8
  store i8* %8, i8** %19, align 8
  store i32* %9, i32** %20, align 8
  store i32* null, i32** %21, align 8
  %23 = load i64, i64* %11, align 8
  %24 = load i32, i32* %12, align 4
  %25 = call i64 @GetModifiedLevel(i64 %23, i32 %24)
  store i64 %25, i64* %22, align 8
  %26 = load i64, i64* %22, align 8
  %27 = load i32, i32* %12, align 4
  %28 = load i32, i32* %13, align 4
  %29 = load i32, i32* %14, align 4
  %30 = load i32, i32* %15, align 4
  %31 = load i32, i32* %16, align 4
  %32 = load i8*, i8** %17, align 8
  %33 = load i8*, i8** %18, align 8
  %34 = load i8*, i8** %19, align 8
  %35 = load i32*, i32** %20, align 8
  %36 = call i32 @AslInitEnode(i32** %21, i64 %26, i32 %27, i32 %28, i32 %29, i32 %30, i32 %31, i8* %32, i8* %33, i8* %34, i32* %35)
  %37 = load i32*, i32** %21, align 8
  %38 = call i32 @AeAddToErrorLog(i32* %37)
  %39 = load i64, i64* @AslGbl_DebugFlag, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %10
  %42 = load i32, i32* @ASL_FILE_STDERR, align 4
  %43 = load i32*, i32** %21, align 8
  %44 = call i32 @AePrintException(i32 %42, i32* %43, i32* null)
  br label %45

45:                                               ; preds = %41, %10
  %46 = load i64*, i64** @AslGbl_ExceptionCount, align 8
  %47 = load i64, i64* %22, align 8
  %48 = getelementptr inbounds i64, i64* %46, i64 %47
  %49 = load i64, i64* %48, align 8
  %50 = add nsw i64 %49, 1
  store i64 %50, i64* %48, align 8
  %51 = load i32, i32* @AslGbl_IgnoreErrors, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %66, label %53

53:                                               ; preds = %45
  %54 = load i64*, i64** @AslGbl_ExceptionCount, align 8
  %55 = load i64, i64* @ASL_ERROR, align 8
  %56 = getelementptr inbounds i64, i64* %54, i64 %55
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @ASL_MAX_ERROR_COUNT, align 8
  %59 = icmp sgt i64 %57, %58
  br i1 %59, label %60, label %66

60:                                               ; preds = %53
  %61 = load i64, i64* @ASL_MAX_ERROR_COUNT, align 8
  %62 = call i32 @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i64 %61)
  store i64 0, i64* @AslGbl_SourceLine, align 8
  %63 = load i32, i32* @AslGbl_ErrorLog, align 4
  store i32 %63, i32* @AslGbl_NextError, align 4
  %64 = call i32 (...) @CmCleanupAndExit()
  %65 = call i32 @exit(i32 1) #3
  unreachable

66:                                               ; preds = %53, %45
  ret void
}

declare dso_local i64 @GetModifiedLevel(i64, i32) #1

declare dso_local i32 @AslInitEnode(i32**, i64, i32, i32, i32, i32, i32, i8*, i8*, i8*, i32*) #1

declare dso_local i32 @AeAddToErrorLog(i32*) #1

declare dso_local i32 @AePrintException(i32, i32*, i32*) #1

declare dso_local i32 @printf(i8*, i64) #1

declare dso_local i32 @CmCleanupAndExit(...) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
