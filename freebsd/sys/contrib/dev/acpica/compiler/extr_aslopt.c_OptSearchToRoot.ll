; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/compiler/extr_aslopt.c_OptSearchToRoot.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/compiler/extr_aslopt.c_OptSearchToRoot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64, i64 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32* }

@ACPI_NAMESEG_SIZE = common dso_local global i64 0, align 8
@ACPI_TYPE_ANY = common dso_local global i32 0, align 4
@ACPI_IMODE_EXECUTE = common dso_local global i32 0, align 4
@ACPI_NS_SEARCH_PARENT = common dso_local global i32 0, align 4
@ACPI_NS_DONT_OPEN_SCOPE = common dso_local global i32 0, align 4
@AE_NOT_FOUND = common dso_local global i32 0, align 4
@ACPI_DB_OPTIMIZATIONS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"NAMESEG:   %-24s\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"_T_\00", align 1
@ASL_OPTIMIZATION = common dso_local global i32 0, align 4
@ASL_MSG_SINGLE_NAME_OPTIMIZATION = common dso_local global i32 0, align 4
@AE_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32*, i32*, %struct.TYPE_9__*, i8**)* @OptSearchToRoot to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @OptSearchToRoot(i32* %0, i32* %1, i32* %2, i32* %3, %struct.TYPE_9__* %4, i8** %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_9__*, align 8
  %13 = alloca i8**, align 8
  %14 = alloca i32*, align 8
  %15 = alloca %struct.TYPE_8__, align 8
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  store i32* %0, i32** %8, align 8
  store i32* %1, i32** %9, align 8
  store i32* %2, i32** %10, align 8
  store i32* %3, i32** %11, align 8
  store %struct.TYPE_9__* %4, %struct.TYPE_9__** %12, align 8
  store i8** %5, i8*** %13, align 8
  %18 = call i32 @ACPI_FUNCTION_NAME(i32 (i32*, i32*, i32*, i32*, %struct.TYPE_9__*, i8**)* @OptSearchToRoot)
  %19 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %20 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = inttoptr i64 %21 to i8*
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @ACPI_NAMESEG_SIZE, align 8
  %27 = sub i64 %25, %26
  %28 = getelementptr inbounds i8, i8* %22, i64 %27
  store i8* %28, i8** %17, align 8
  %29 = load i32*, i32** %10, align 8
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 0
  store i32* %29, i32** %31, align 8
  %32 = load i8*, i8** %17, align 8
  %33 = load i32, i32* @ACPI_TYPE_ANY, align 4
  %34 = load i32, i32* @ACPI_IMODE_EXECUTE, align 4
  %35 = load i32, i32* @ACPI_NS_SEARCH_PARENT, align 4
  %36 = load i32, i32* @ACPI_NS_DONT_OPEN_SCOPE, align 4
  %37 = or i32 %35, %36
  %38 = load i32*, i32** %9, align 8
  %39 = call i32 @AcpiNsLookup(%struct.TYPE_8__* %15, i8* %32, i32 %33, i32 %34, i32 %37, i32* %38, i32** %14)
  store i32 %39, i32* %16, align 4
  %40 = load i32, i32* %16, align 4
  %41 = call i64 @ACPI_FAILURE(i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %6
  %44 = load i32, i32* %16, align 4
  store i32 %44, i32* %7, align 4
  br label %77

45:                                               ; preds = %6
  %46 = load i32*, i32** %14, align 8
  %47 = load i32*, i32** %11, align 8
  %48 = icmp ne i32* %46, %47
  br i1 %48, label %49, label %51

49:                                               ; preds = %45
  %50 = load i32, i32* @AE_NOT_FOUND, align 4
  store i32 %50, i32* %7, align 4
  br label %77

51:                                               ; preds = %45
  %52 = load i32, i32* @ACPI_DB_OPTIMIZATIONS, align 4
  %53 = load i8*, i8** %17, align 8
  %54 = ptrtoint i8* %53 to i32
  %55 = call i32 @ACPI_DEBUG_PRINT_RAW(i32 %54)
  %56 = load i64, i64* @ACPI_NAMESEG_SIZE, align 8
  %57 = add i64 %56, 1
  %58 = call i8* @UtLocalCacheCalloc(i64 %57)
  %59 = load i8**, i8*** %13, align 8
  store i8* %58, i8** %59, align 8
  %60 = load i8**, i8*** %13, align 8
  %61 = load i8*, i8** %60, align 8
  %62 = load i8*, i8** %17, align 8
  %63 = call i32 @strcpy(i8* %61, i8* %62)
  %64 = load i8**, i8*** %13, align 8
  %65 = load i8*, i8** %64, align 8
  %66 = call i64 @strncmp(i8* %65, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 3)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %75

68:                                               ; preds = %51
  %69 = load i32, i32* @ASL_OPTIMIZATION, align 4
  %70 = load i32, i32* @ASL_MSG_SINGLE_NAME_OPTIMIZATION, align 4
  %71 = load i32*, i32** %8, align 8
  %72 = load i8**, i8*** %13, align 8
  %73 = load i8*, i8** %72, align 8
  %74 = call i32 @AslError(i32 %69, i32 %70, i32* %71, i8* %73)
  br label %75

75:                                               ; preds = %68, %51
  %76 = load i32, i32* @AE_OK, align 4
  store i32 %76, i32* %7, align 4
  br label %77

77:                                               ; preds = %75, %49, %43
  %78 = load i32, i32* %7, align 4
  ret i32 %78
}

declare dso_local i32 @ACPI_FUNCTION_NAME(i32 (i32*, i32*, i32*, i32*, %struct.TYPE_9__*, i8**)*) #1

declare dso_local i32 @AcpiNsLookup(%struct.TYPE_8__*, i8*, i32, i32, i32, i32*, i32**) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

declare dso_local i32 @ACPI_DEBUG_PRINT_RAW(i32) #1

declare dso_local i8* @UtLocalCacheCalloc(i64) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @AslError(i32, i32, i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
