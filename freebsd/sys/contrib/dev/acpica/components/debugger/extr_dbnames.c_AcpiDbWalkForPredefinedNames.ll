; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/components/debugger/extr_dbnames.c_AcpiDbWalkForPredefinedNames.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/components/debugger/extr_dbnames.c_AcpiDbWalkForPredefinedNames.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_13__ = type { %struct.TYPE_12__, %struct.TYPE_11__ }
%struct.TYPE_12__ = type { i32, i32, i32 }
%struct.TYPE_11__ = type { i32, i32 }

@AE_OK = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@ACPI_RTYPE_PACKAGE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"%-32s Arguments %X, Return Types: %s\00", align 1
@.str.1 = private unnamed_addr constant [45 x i8] c" (PkgType %2.2X, ObjType %2.2X, Count %2.2X)\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i32, i8*, i8**)* @AcpiDbWalkForPredefinedNames to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @AcpiDbWalkForPredefinedNames(i64 %0, i32 %1, i8* %2, i8** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8**, align 8
  %10 = alloca %struct.TYPE_14__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_13__*, align 8
  %13 = alloca %struct.TYPE_13__*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca [48 x i8], align 16
  store i64 %0, i64* %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i8** %3, i8*** %9, align 8
  %16 = load i64, i64* %6, align 8
  %17 = inttoptr i64 %16 to %struct.TYPE_14__*
  store %struct.TYPE_14__* %17, %struct.TYPE_14__** %10, align 8
  %18 = load i8*, i8** %8, align 8
  %19 = bitcast i8* %18 to i32*
  store i32* %19, i32** %11, align 8
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %13, align 8
  %20 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %21 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call %struct.TYPE_13__* @AcpiUtMatchPredefinedMethod(i32 %23)
  store %struct.TYPE_13__* %24, %struct.TYPE_13__** %12, align 8
  %25 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %26 = icmp ne %struct.TYPE_13__* %25, null
  br i1 %26, label %29, label %27

27:                                               ; preds = %4
  %28 = load i32, i32* @AE_OK, align 4
  store i32 %28, i32* %5, align 4
  br label %91

29:                                               ; preds = %4
  %30 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %31 = load i32, i32* @TRUE, align 4
  %32 = call i8* @AcpiNsGetNormalizedPathname(%struct.TYPE_14__* %30, i32 %31)
  store i8* %32, i8** %14, align 8
  %33 = load i8*, i8** %14, align 8
  %34 = icmp ne i8* %33, null
  br i1 %34, label %37, label %35

35:                                               ; preds = %29
  %36 = load i32, i32* @AE_OK, align 4
  store i32 %36, i32* %5, align 4
  br label %91

37:                                               ; preds = %29
  %38 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %39 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @ACPI_RTYPE_PACKAGE, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %37
  %46 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %47 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %46, i64 1
  store %struct.TYPE_13__* %47, %struct.TYPE_13__** %13, align 8
  br label %48

48:                                               ; preds = %45, %37
  %49 = getelementptr inbounds [48 x i8], [48 x i8]* %15, i64 0, i64 0
  %50 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %51 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @AcpiUtGetExpectedReturnTypes(i8* %49, i32 %53)
  %55 = load i8*, i8** %14, align 8
  %56 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %57 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @METHOD_GET_ARG_COUNT(i32 %59)
  %61 = getelementptr inbounds [48 x i8], [48 x i8]* %15, i64 0, i64 0
  %62 = call i32 (i8*, ...) @AcpiOsPrintf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i8* %55, i32 %60, i8* %61)
  %63 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %64 = icmp ne %struct.TYPE_13__* %63, null
  br i1 %64, label %65, label %79

65:                                               ; preds = %48
  %66 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %67 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %71 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %75 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = call i32 (i8*, ...) @AcpiOsPrintf(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i32 %69, i32 %73, i32 %77)
  br label %79

79:                                               ; preds = %65, %48
  %80 = call i32 (i8*, ...) @AcpiOsPrintf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %81 = load i8*, i8** %14, align 8
  %82 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %83 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %84 = call i32 @AcpiNsCheckAcpiCompliance(i8* %81, %struct.TYPE_14__* %82, %struct.TYPE_13__* %83)
  %85 = load i8*, i8** %14, align 8
  %86 = call i32 @ACPI_FREE(i8* %85)
  %87 = load i32*, i32** %11, align 8
  %88 = load i32, i32* %87, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %87, align 4
  %90 = load i32, i32* @AE_OK, align 4
  store i32 %90, i32* %5, align 4
  br label %91

91:                                               ; preds = %79, %35, %27
  %92 = load i32, i32* %5, align 4
  ret i32 %92
}

declare dso_local %struct.TYPE_13__* @AcpiUtMatchPredefinedMethod(i32) #1

declare dso_local i8* @AcpiNsGetNormalizedPathname(%struct.TYPE_14__*, i32) #1

declare dso_local i32 @AcpiUtGetExpectedReturnTypes(i8*, i32) #1

declare dso_local i32 @AcpiOsPrintf(i8*, ...) #1

declare dso_local i32 @METHOD_GET_ARG_COUNT(i32) #1

declare dso_local i32 @AcpiNsCheckAcpiCompliance(i8*, %struct.TYPE_14__*, %struct.TYPE_13__*) #1

declare dso_local i32 @ACPI_FREE(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
