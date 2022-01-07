; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/compiler/extr_aslerror.c_AePrintException.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/compiler/extr_aslerror.c_AePrintException.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32* }
%struct.TYPE_7__ = type { i32, i64, i8*, %struct.TYPE_7__*, i32 }

@FALSE = common dso_local global i32 0, align 4
@AslGbl_NoErrors = common dso_local global i64 0, align 8
@AslGbl_DisplayWarnings = common dso_local global i32 0, align 4
@AslGbl_DisplayRemarks = common dso_local global i32 0, align 4
@AslGbl_DisplayOptimizations = common dso_local global i32 0, align 4
@AslGbl_Files = common dso_local global %struct.TYPE_8__* null, align 8
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @AePrintException(i64 %0, %struct.TYPE_7__* %1, i8* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_7__*, align 8
  store i64 %0, i64* %4, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %5, align 8
  store i8* %2, i8** %6, align 8
  %12 = load i32, i32* @FALSE, align 4
  store i32 %12, i32* %8, align 4
  store i64 0, i64* %9, align 8
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 3
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  store %struct.TYPE_7__* %15, %struct.TYPE_7__** %11, align 8
  %16 = load i64, i64* @AslGbl_NoErrors, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %3
  br label %103

19:                                               ; preds = %3
  %20 = load i8*, i8** %6, align 8
  %21 = icmp ne i8* %20, null
  br i1 %21, label %43, label %22

22:                                               ; preds = %19
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  switch i32 %25, label %41 [
    i32 130, label %26
    i32 129, label %26
    i32 128, label %26
    i32 131, label %31
    i32 132, label %36
  ]

26:                                               ; preds = %22, %22, %22
  %27 = load i32, i32* @AslGbl_DisplayWarnings, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %26
  br label %103

30:                                               ; preds = %26
  br label %42

31:                                               ; preds = %22
  %32 = load i32, i32* @AslGbl_DisplayRemarks, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %31
  br label %103

35:                                               ; preds = %31
  br label %42

36:                                               ; preds = %22
  %37 = load i32, i32* @AslGbl_DisplayOptimizations, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %36
  br label %103

40:                                               ; preds = %36
  br label %42

41:                                               ; preds = %22
  br label %42

42:                                               ; preds = %41, %40, %35, %30
  br label %43

43:                                               ; preds = %42, %19
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** @AslGbl_Files, align 8
  %45 = load i64, i64* %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 0
  %48 = load i32*, i32** %47, align 8
  store i32* %48, i32** %7, align 8
  %49 = load i8*, i8** %6, align 8
  %50 = icmp ne i8* %49, null
  br i1 %50, label %51, label %55

51:                                               ; preds = %43
  %52 = load i32*, i32** %7, align 8
  %53 = load i8*, i8** %6, align 8
  %54 = call i32 (i32*, i8*, ...) @fprintf(i32* %52, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %53)
  br label %55

55:                                               ; preds = %51, %43
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 4
  %58 = load i32, i32* %57, align 8
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %66, label %60

60:                                               ; preds = %55
  %61 = load i32*, i32** %7, align 8
  %62 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %63 = load i32, i32* %8, align 4
  %64 = load i64, i64* %9, align 8
  %65 = call i32 @AeDecodeErrorMessageId(i32* %61, %struct.TYPE_7__* %62, i32 %63, i64 %64)
  br label %103

66:                                               ; preds = %55
  %67 = load i32*, i32** %7, align 8
  %68 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %69 = call i32 @AePrintErrorSourceLine(i32* %67, %struct.TYPE_7__* %68, i32* %8, i64* %9)
  store i32 %69, i32* %10, align 4
  %70 = load i32, i32* %10, align 4
  %71 = call i64 @ACPI_FAILURE(i32 %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %66
  br label %103

74:                                               ; preds = %66
  %75 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = icmp eq i64 %77, 0
  br i1 %78, label %79, label %85

79:                                               ; preds = %74
  %80 = load i32*, i32** %7, align 8
  %81 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %81, i32 0, i32 2
  %83 = load i8*, i8** %82, align 8
  %84 = call i32 (i32*, i8*, ...) @fprintf(i32* %80, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* %83)
  br label %103

85:                                               ; preds = %74
  %86 = load i32*, i32** %7, align 8
  %87 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %88 = load i32, i32* %8, align 4
  %89 = load i64, i64* %9, align 8
  %90 = call i32 @AeDecodeErrorMessageId(i32* %86, %struct.TYPE_7__* %87, i32 %88, i64 %89)
  br label %91

91:                                               ; preds = %94, %85
  %92 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %93 = icmp ne %struct.TYPE_7__* %92, null
  br i1 %93, label %94, label %103

94:                                               ; preds = %91
  %95 = load i32*, i32** %7, align 8
  %96 = call i32 (i32*, i8*, ...) @fprintf(i32* %95, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %97 = load i32*, i32** %7, align 8
  %98 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %99 = call i32 @AePrintSubError(i32* %97, %struct.TYPE_7__* %98)
  %100 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %101 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %100, i32 0, i32 3
  %102 = load %struct.TYPE_7__*, %struct.TYPE_7__** %101, align 8
  store %struct.TYPE_7__* %102, %struct.TYPE_7__** %11, align 8
  br label %91

103:                                              ; preds = %18, %29, %34, %39, %60, %73, %79, %91
  ret void
}

declare dso_local i32 @fprintf(i32*, i8*, ...) #1

declare dso_local i32 @AeDecodeErrorMessageId(i32*, %struct.TYPE_7__*, i32, i64) #1

declare dso_local i32 @AePrintErrorSourceLine(i32*, %struct.TYPE_7__*, i32*, i64*) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

declare dso_local i32 @AePrintSubError(i32*, %struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
