; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/compiler/extr_aslopt.c_OptOptimizeNameDeclaration.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/compiler/extr_aslopt.c_OptOptimizeNameDeclaration.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i64 }

@AcpiGbl_RootNode = common dso_local global i32* null, align 8
@PARSEOP_DEFINITION_BLOCK = common dso_local global i64 0, align 8
@ACPI_UINT32_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"Externalizing NamePath\00", align 1
@ASL_NO_ABORT = common dso_local global i32 0, align 4
@ACPI_TYPE_ANY = common dso_local global i32 0, align 4
@ACPI_IMODE_EXECUTE = common dso_local global i32 0, align 4
@ACPI_NS_DONT_OPEN_SCOPE = common dso_local global i32 0, align 4
@ASL_OPTIMIZATION = common dso_local global i32 0, align 4
@ASL_MSG_NAME_OPTIMIZATION = common dso_local global i32 0, align 4
@ACPI_DB_OPTIMIZATIONS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"AT ROOT:   %-24s\00", align 1
@AE_NOT_FOUND = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [18 x i8] c" ***** WRONG NODE\00", align 1
@ASL_WARNING = common dso_local global i32 0, align 4
@ASL_MSG_COMPILER_INTERNAL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [44 x i8] c"Not using optimized name - found wrong node\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c" ***** NOT FOUND\00", align 1
@.str.5 = private unnamed_addr constant [45 x i8] c"Not using optimized name - did not find node\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_12__*, i32*, i32*, i32*, i8*, i8**)* @OptOptimizeNameDeclaration to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @OptOptimizeNameDeclaration(%struct.TYPE_12__* %0, i32* %1, i32* %2, i32* %3, i8* %4, i8** %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_12__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8**, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i32*, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %8, align 8
  store i32* %1, i32** %9, align 8
  store i32* %2, i32** %10, align 8
  store i32* %3, i32** %11, align 8
  store i8* %4, i8** %12, align 8
  store i8** %5, i8*** %13, align 8
  %17 = call i32 @ACPI_FUNCTION_TRACE(i32 (%struct.TYPE_12__*, i32*, i32*, i32*, i8*, i8**)* @OptOptimizeNameDeclaration)
  %18 = load i32*, i32** %10, align 8
  %19 = load i32*, i32** @AcpiGbl_RootNode, align 8
  %20 = icmp eq i32* %18, %19
  br i1 %20, label %31, label %21

21:                                               ; preds = %6
  %22 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %23 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_10__*, %struct.TYPE_10__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @PARSEOP_DEFINITION_BLOCK, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %99

31:                                               ; preds = %21, %6
  %32 = load i8*, i8** %12, align 8
  %33 = getelementptr inbounds i8, i8* %32, i64 0
  %34 = load i8, i8* %33, align 1
  %35 = call i64 @ACPI_IS_ROOT_PREFIX(i8 signext %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %99

37:                                               ; preds = %31
  %38 = load i8*, i8** %12, align 8
  %39 = getelementptr inbounds i8, i8* %38, i64 1
  %40 = load i8**, i8*** %13, align 8
  store i8* %39, i8** %40, align 8
  %41 = load i32, i32* @ACPI_UINT32_MAX, align 4
  %42 = load i8**, i8*** %13, align 8
  %43 = load i8*, i8** %42, align 8
  %44 = call i32 @AcpiNsExternalizeName(i32 %41, i8* %43, i32* null, i8** %15)
  store i32 %44, i32* %14, align 4
  %45 = load i32, i32* %14, align 4
  %46 = call i64 @ACPI_FAILURE(i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %54

48:                                               ; preds = %37
  %49 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %50 = load i32, i32* %14, align 4
  %51 = load i32, i32* @ASL_NO_ABORT, align 4
  %52 = call i32 @AslCoreSubsystemError(%struct.TYPE_12__* %49, i32 %50, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %51)
  %53 = load i32, i32* %14, align 4
  store i32 %53, i32* %7, align 4
  br label %101

54:                                               ; preds = %37
  %55 = load i8**, i8*** %13, align 8
  %56 = load i8*, i8** %55, align 8
  %57 = load i32, i32* @ACPI_TYPE_ANY, align 4
  %58 = load i32, i32* @ACPI_IMODE_EXECUTE, align 4
  %59 = load i32, i32* @ACPI_NS_DONT_OPEN_SCOPE, align 4
  %60 = load i32*, i32** %9, align 8
  %61 = call i32 @AcpiNsLookup(i32* null, i8* %56, i32 %57, i32 %58, i32 %59, i32* %60, i32** %16)
  store i32 %61, i32* %14, align 4
  %62 = load i32, i32* %14, align 4
  %63 = call i64 @ACPI_SUCCESS(i32 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %88

65:                                               ; preds = %54
  %66 = load i32*, i32** %16, align 8
  %67 = load i32*, i32** %11, align 8
  %68 = icmp eq i32* %66, %67
  br i1 %68, label %69, label %79

69:                                               ; preds = %65
  %70 = load i32, i32* @ASL_OPTIMIZATION, align 4
  %71 = load i32, i32* @ASL_MSG_NAME_OPTIMIZATION, align 4
  %72 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %73 = load i8*, i8** %15, align 8
  %74 = call i32 @AslError(i32 %70, i32 %71, %struct.TYPE_12__* %72, i8* %73)
  %75 = load i32, i32* @ACPI_DB_OPTIMIZATIONS, align 4
  %76 = load i8*, i8** %15, align 8
  %77 = ptrtoint i8* %76 to i32
  %78 = call i32 @ACPI_DEBUG_PRINT_RAW(i32 %77)
  br label %87

79:                                               ; preds = %65
  %80 = load i32, i32* @AE_NOT_FOUND, align 4
  store i32 %80, i32* %14, align 4
  %81 = load i32, i32* @ACPI_DB_OPTIMIZATIONS, align 4
  %82 = call i32 @ACPI_DEBUG_PRINT_RAW(i32 ptrtoint ([18 x i8]* @.str.2 to i32))
  %83 = load i32, i32* @ASL_WARNING, align 4
  %84 = load i32, i32* @ASL_MSG_COMPILER_INTERNAL, align 4
  %85 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %86 = call i32 @AslError(i32 %83, i32 %84, %struct.TYPE_12__* %85, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3, i64 0, i64 0))
  br label %87

87:                                               ; preds = %79, %69
  br label %95

88:                                               ; preds = %54
  %89 = load i32, i32* @ACPI_DB_OPTIMIZATIONS, align 4
  %90 = call i32 @ACPI_DEBUG_PRINT_RAW(i32 ptrtoint ([17 x i8]* @.str.4 to i32))
  %91 = load i32, i32* @ASL_WARNING, align 4
  %92 = load i32, i32* @ASL_MSG_COMPILER_INTERNAL, align 4
  %93 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %94 = call i32 @AslError(i32 %91, i32 %92, %struct.TYPE_12__* %93, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.5, i64 0, i64 0))
  br label %95

95:                                               ; preds = %88, %87
  %96 = load i8*, i8** %15, align 8
  %97 = call i32 @ACPI_FREE(i8* %96)
  %98 = load i32, i32* %14, align 4
  store i32 %98, i32* %7, align 4
  br label %101

99:                                               ; preds = %31, %21
  %100 = load i32, i32* @AE_NOT_FOUND, align 4
  store i32 %100, i32* %7, align 4
  br label %101

101:                                              ; preds = %99, %95, %48
  %102 = load i32, i32* %7, align 4
  ret i32 %102
}

declare dso_local i32 @ACPI_FUNCTION_TRACE(i32 (%struct.TYPE_12__*, i32*, i32*, i32*, i8*, i8**)*) #1

declare dso_local i64 @ACPI_IS_ROOT_PREFIX(i8 signext) #1

declare dso_local i32 @AcpiNsExternalizeName(i32, i8*, i32*, i8**) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

declare dso_local i32 @AslCoreSubsystemError(%struct.TYPE_12__*, i32, i8*, i32) #1

declare dso_local i32 @AcpiNsLookup(i32*, i8*, i32, i32, i32, i32*, i32**) #1

declare dso_local i64 @ACPI_SUCCESS(i32) #1

declare dso_local i32 @AslError(i32, i32, %struct.TYPE_12__*, i8*) #1

declare dso_local i32 @ACPI_DEBUG_PRINT_RAW(i32) #1

declare dso_local i32 @ACPI_FREE(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
