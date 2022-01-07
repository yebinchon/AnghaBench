; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/compiler/extr_asllistsup.c_LsWriteSourceLines.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/compiler/extr_asllistsup.c_LsWriteSourceLines.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ASL_FILE_ASM_INCLUDE_OUTPUT = common dso_local global i64 0, align 8
@ASL_FILE_C_INCLUDE_OUTPUT = common dso_local global i64 0, align 8
@AslGbl_CurrentLine = common dso_local global i64 0, align 8
@AslGbl_SourceLine = common dso_local global i64 0, align 8
@AslGbl_HexBytesWereWritten = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@FALSE = common dso_local global i64 0, align 8
@ASL_FILE_C_SOURCE_OUTPUT = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [8 x i8] c"    /*\0A\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"     */\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @LsWriteSourceLines(i64 %0, i64 %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @ASL_FILE_ASM_INCLUDE_OUTPUT, align 8
  %9 = icmp eq i64 %7, %8
  br i1 %9, label %14, label %10

10:                                               ; preds = %3
  %11 = load i64, i64* %6, align 8
  %12 = load i64, i64* @ASL_FILE_C_INCLUDE_OUTPUT, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %10, %3
  br label %58

15:                                               ; preds = %10
  %16 = load i64, i64* %5, align 8
  store i64 %16, i64* @AslGbl_CurrentLine, align 8
  %17 = load i64, i64* %6, align 8
  %18 = call i32 @LsFlushListingBuffer(i64 %17)
  %19 = load i64, i64* @AslGbl_SourceLine, align 8
  %20 = load i64, i64* @AslGbl_CurrentLine, align 8
  %21 = icmp slt i64 %19, %20
  br i1 %21, label %22, label %58

22:                                               ; preds = %15
  %23 = load i64, i64* @AslGbl_HexBytesWereWritten, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %22
  %26 = load i64, i64* %6, align 8
  %27 = call i32 @FlPrintFile(i64 %26, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %28 = load i64, i64* @FALSE, align 8
  store i64 %28, i64* @AslGbl_HexBytesWereWritten, align 8
  br label %29

29:                                               ; preds = %25, %22
  %30 = load i64, i64* %6, align 8
  %31 = load i64, i64* @ASL_FILE_C_SOURCE_OUTPUT, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %36

33:                                               ; preds = %29
  %34 = load i64, i64* %6, align 8
  %35 = call i32 @FlPrintFile(i64 %34, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  br label %36

36:                                               ; preds = %33, %29
  br label %37

37:                                               ; preds = %47, %36
  %38 = load i64, i64* @AslGbl_SourceLine, align 8
  %39 = load i64, i64* @AslGbl_CurrentLine, align 8
  %40 = icmp slt i64 %38, %39
  br i1 %40, label %41, label %45

41:                                               ; preds = %37
  %42 = load i64, i64* %6, align 8
  %43 = call i64 @LsWriteOneSourceLine(i64 %42)
  %44 = icmp ne i64 %43, 0
  br label %45

45:                                               ; preds = %41, %37
  %46 = phi i1 [ false, %37 ], [ %44, %41 ]
  br i1 %46, label %47, label %48

47:                                               ; preds = %45
  br label %37

48:                                               ; preds = %45
  %49 = load i64, i64* %6, align 8
  %50 = load i64, i64* @ASL_FILE_C_SOURCE_OUTPUT, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %55

52:                                               ; preds = %48
  %53 = load i64, i64* %6, align 8
  %54 = call i32 @FlPrintFile(i64 %53, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  br label %55

55:                                               ; preds = %52, %48
  %56 = load i64, i64* %6, align 8
  %57 = call i32 @FlPrintFile(i64 %56, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  br label %58

58:                                               ; preds = %14, %55, %15
  ret void
}

declare dso_local i32 @LsFlushListingBuffer(i64) #1

declare dso_local i32 @FlPrintFile(i64, i8*) #1

declare dso_local i64 @LsWriteOneSourceLine(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
