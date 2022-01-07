; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/compiler/extr_aslpredef.c_ApCheckForPredefinedName.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/compiler/extr_aslpredef.c_ApCheckForPredefinedName.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64* }

@ASL_ERROR = common dso_local global i32 0, align 4
@ASL_MSG_COMPILER_INTERNAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"zero length name found\00", align 1
@ACPI_NOT_RESERVED_NAME = common dso_local global i64 0, align 8
@AcpiGbl_PredefinedMethods = common dso_local global %struct.TYPE_7__* null, align 8
@AcpiGbl_ResourceNames = common dso_local global %struct.TYPE_7__* null, align 8
@ACPI_PREDEFINED_NAME = common dso_local global i64 0, align 8
@AcpiGbl_ScopeNames = common dso_local global %struct.TYPE_7__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ApCheckForPredefinedName(i32* %0, i8* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_7__*, align 8
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = getelementptr inbounds i8, i8* %8, i64 0
  %10 = load i8, i8* %9, align 1
  %11 = sext i8 %10 to i32
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %18

13:                                               ; preds = %2
  %14 = load i32, i32* @ASL_ERROR, align 4
  %15 = load i32, i32* @ASL_MSG_COMPILER_INTERNAL, align 4
  %16 = load i32*, i32** %4, align 8
  %17 = call i32 @AslError(i32 %14, i32 %15, i32* %16, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  br label %18

18:                                               ; preds = %13, %2
  %19 = load i8*, i8** %5, align 8
  %20 = getelementptr inbounds i8, i8* %19, i64 0
  %21 = load i8, i8* %20, align 1
  %22 = sext i8 %21 to i32
  %23 = icmp ne i32 %22, 95
  br i1 %23, label %24, label %26

24:                                               ; preds = %18
  %25 = load i64, i64* @ACPI_NOT_RESERVED_NAME, align 8
  store i64 %25, i64* %3, align 8
  br label %102

26:                                               ; preds = %18
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** @AcpiGbl_PredefinedMethods, align 8
  store %struct.TYPE_7__* %27, %struct.TYPE_7__** %7, align 8
  store i64 0, i64* %6, align 8
  br label %28

28:                                               ; preds = %49, %26
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = load i64*, i64** %31, align 8
  %33 = getelementptr inbounds i64, i64* %32, i64 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %52

36:                                               ; preds = %28
  %37 = load i8*, i8** %5, align 8
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  %41 = load i64*, i64** %40, align 8
  %42 = call i64 @ACPI_COMPARE_NAMESEG(i8* %37, i64* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %36
  %45 = load i64, i64* %6, align 8
  store i64 %45, i64* %3, align 8
  br label %102

46:                                               ; preds = %36
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 1
  store %struct.TYPE_7__* %48, %struct.TYPE_7__** %7, align 8
  br label %49

49:                                               ; preds = %46
  %50 = load i64, i64* %6, align 8
  %51 = add nsw i64 %50, 1
  store i64 %51, i64* %6, align 8
  br label %28

52:                                               ; preds = %28
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** @AcpiGbl_ResourceNames, align 8
  store %struct.TYPE_7__* %53, %struct.TYPE_7__** %7, align 8
  br label %54

54:                                               ; preds = %72, %52
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 0
  %58 = load i64*, i64** %57, align 8
  %59 = getelementptr inbounds i64, i64* %58, i64 0
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %75

62:                                               ; preds = %54
  %63 = load i8*, i8** %5, align 8
  %64 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 0
  %67 = load i64*, i64** %66, align 8
  %68 = call i64 @ACPI_COMPARE_NAMESEG(i8* %63, i64* %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %62
  %71 = load i64, i64* @ACPI_PREDEFINED_NAME, align 8
  store i64 %71, i64* %3, align 8
  br label %102

72:                                               ; preds = %62
  %73 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i32 1
  store %struct.TYPE_7__* %74, %struct.TYPE_7__** %7, align 8
  br label %54

75:                                               ; preds = %54
  %76 = load %struct.TYPE_7__*, %struct.TYPE_7__** @AcpiGbl_ScopeNames, align 8
  store %struct.TYPE_7__* %76, %struct.TYPE_7__** %7, align 8
  br label %77

77:                                               ; preds = %95, %75
  %78 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 0
  %81 = load i64*, i64** %80, align 8
  %82 = getelementptr inbounds i64, i64* %81, i64 0
  %83 = load i64, i64* %82, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %98

85:                                               ; preds = %77
  %86 = load i8*, i8** %5, align 8
  %87 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %88 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 0
  %90 = load i64*, i64** %89, align 8
  %91 = call i64 @ACPI_COMPARE_NAMESEG(i8* %86, i64* %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %95

93:                                               ; preds = %85
  %94 = load i64, i64* @ACPI_PREDEFINED_NAME, align 8
  store i64 %94, i64* %3, align 8
  br label %102

95:                                               ; preds = %85
  %96 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %97 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %96, i32 1
  store %struct.TYPE_7__* %97, %struct.TYPE_7__** %7, align 8
  br label %77

98:                                               ; preds = %77
  %99 = load i32*, i32** %4, align 8
  %100 = load i8*, i8** %5, align 8
  %101 = call i64 @ApCheckForSpecialName(i32* %99, i8* %100)
  store i64 %101, i64* %3, align 8
  br label %102

102:                                              ; preds = %98, %93, %70, %44, %24
  %103 = load i64, i64* %3, align 8
  ret i64 %103
}

declare dso_local i32 @AslError(i32, i32, i32*, i8*) #1

declare dso_local i64 @ACPI_COMPARE_NAMESEG(i8*, i64*) #1

declare dso_local i64 @ApCheckForSpecialName(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
