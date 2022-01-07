; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/compiler/extr_aslutils.c_UtDisplayErrorSummary.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/compiler/extr_aslutils.c_UtDisplayErrorSummary.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@AslGbl_ParserErrorDetected = common dso_local global i64 0, align 8
@AslGbl_ExceptionCount = common dso_local global i64* null, align 8
@ASL_ERROR = common dso_local global i64 0, align 8
@AslGbl_IgnoreErrors = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"\0ACompilation failed. \00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"\0ACompilation successful. \00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"%u Errors, %u Warnings, %u Remarks\00", align 1
@ASL_WARNING = common dso_local global i64 0, align 8
@ASL_WARNING2 = common dso_local global i64 0, align 8
@ASL_WARNING3 = common dso_local global i64 0, align 8
@ASL_REMARK = common dso_local global i64 0, align 8
@AslGbl_FileType = common dso_local global i64 0, align 8
@ASL_INPUT_TYPE_ASCII_DATA = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [53 x i8] c"\0ANo AML files were generated due to syntax error(s)\0A\00", align 1
@.str.4 = private unnamed_addr constant [55 x i8] c"\0ANo AML files were generated due to compiler error(s)\0A\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c", %u Optimizations\00", align 1
@ASL_OPTIMIZATION = common dso_local global i64 0, align 8
@AslGbl_TotalFolds = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [22 x i8] c", %u Constants Folded\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @UtDisplayErrorSummary to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @UtDisplayErrorSummary(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %4 = load i64, i64* @AslGbl_ParserErrorDetected, align 8
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %18, label %6

6:                                                ; preds = %1
  %7 = load i64*, i64** @AslGbl_ExceptionCount, align 8
  %8 = load i64, i64* @ASL_ERROR, align 8
  %9 = getelementptr inbounds i64, i64* %7, i64 %8
  %10 = load i64, i64* %9, align 8
  %11 = icmp sgt i64 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %6
  %13 = load i32, i32* @AslGbl_IgnoreErrors, align 4
  %14 = icmp ne i32 %13, 0
  %15 = xor i1 %14, true
  br label %16

16:                                               ; preds = %12, %6
  %17 = phi i1 [ false, %6 ], [ %15, %12 ]
  br label %18

18:                                               ; preds = %16, %1
  %19 = phi i1 [ true, %1 ], [ %17, %16 ]
  %20 = zext i1 %19 to i32
  store i32 %20, i32* %3, align 4
  %21 = load i32, i32* %3, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %18
  %24 = load i32, i32* %2, align 4
  %25 = call i32 (i32, i8*, ...) @FlPrintFile(i32 %24, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  br label %29

26:                                               ; preds = %18
  %27 = load i32, i32* %2, align 4
  %28 = call i32 (i32, i8*, ...) @FlPrintFile(i32 %27, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  br label %29

29:                                               ; preds = %26, %23
  %30 = load i32, i32* %2, align 4
  %31 = load i64*, i64** @AslGbl_ExceptionCount, align 8
  %32 = load i64, i64* @ASL_ERROR, align 8
  %33 = getelementptr inbounds i64, i64* %31, i64 %32
  %34 = load i64, i64* %33, align 8
  %35 = load i64*, i64** @AslGbl_ExceptionCount, align 8
  %36 = load i64, i64* @ASL_WARNING, align 8
  %37 = getelementptr inbounds i64, i64* %35, i64 %36
  %38 = load i64, i64* %37, align 8
  %39 = load i64*, i64** @AslGbl_ExceptionCount, align 8
  %40 = load i64, i64* @ASL_WARNING2, align 8
  %41 = getelementptr inbounds i64, i64* %39, i64 %40
  %42 = load i64, i64* %41, align 8
  %43 = add nsw i64 %38, %42
  %44 = load i64*, i64** @AslGbl_ExceptionCount, align 8
  %45 = load i64, i64* @ASL_WARNING3, align 8
  %46 = getelementptr inbounds i64, i64* %44, i64 %45
  %47 = load i64, i64* %46, align 8
  %48 = add nsw i64 %43, %47
  %49 = load i64*, i64** @AslGbl_ExceptionCount, align 8
  %50 = load i64, i64* @ASL_REMARK, align 8
  %51 = getelementptr inbounds i64, i64* %49, i64 %50
  %52 = load i64, i64* %51, align 8
  %53 = call i32 (i32, i8*, ...) @FlPrintFile(i32 %30, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i64 %34, i64 %48, i64 %52)
  %54 = load i64, i64* @AslGbl_FileType, align 8
  %55 = load i64, i64* @ASL_INPUT_TYPE_ASCII_DATA, align 8
  %56 = icmp ne i64 %54, %55
  br i1 %56, label %57, label %84

57:                                               ; preds = %29
  %58 = load i64, i64* @AslGbl_ParserErrorDetected, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %57
  %61 = load i32, i32* %2, align 4
  %62 = call i32 (i32, i8*, ...) @FlPrintFile(i32 %61, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.3, i64 0, i64 0))
  br label %87

63:                                               ; preds = %57
  %64 = load i32, i32* %3, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %63
  %67 = load i32, i32* %2, align 4
  %68 = call i32 (i32, i8*, ...) @FlPrintFile(i32 %67, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.4, i64 0, i64 0))
  br label %87

69:                                               ; preds = %63
  br label %70

70:                                               ; preds = %69
  %71 = load i32, i32* %2, align 4
  %72 = load i64*, i64** @AslGbl_ExceptionCount, align 8
  %73 = load i64, i64* @ASL_OPTIMIZATION, align 8
  %74 = getelementptr inbounds i64, i64* %72, i64 %73
  %75 = load i64, i64* %74, align 8
  %76 = call i32 (i32, i8*, ...) @FlPrintFile(i32 %71, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0), i64 %75)
  %77 = load i64, i64* @AslGbl_TotalFolds, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %83

79:                                               ; preds = %70
  %80 = load i32, i32* %2, align 4
  %81 = load i64, i64* @AslGbl_TotalFolds, align 8
  %82 = call i32 (i32, i8*, ...) @FlPrintFile(i32 %80, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i64 0, i64 0), i64 %81)
  br label %83

83:                                               ; preds = %79, %70
  br label %84

84:                                               ; preds = %83, %29
  %85 = load i32, i32* %2, align 4
  %86 = call i32 (i32, i8*, ...) @FlPrintFile(i32 %85, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0))
  br label %87

87:                                               ; preds = %84, %66, %60
  ret void
}

declare dso_local i32 @FlPrintFile(i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
