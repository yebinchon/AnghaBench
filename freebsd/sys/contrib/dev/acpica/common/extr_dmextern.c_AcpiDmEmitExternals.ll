; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/common/extr_dmextern.c_AcpiDmEmitExternals.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/common/extr_dmextern.c_AcpiDmEmitExternals.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i32, %struct.TYPE_5__*, %struct.TYPE_5__*, %struct.TYPE_5__*, i32 }

@AcpiGbl_ExternalList = common dso_local global %struct.TYPE_5__* null, align 8
@ACPI_TYPE_METHOD = common dso_local global i64 0, align 8
@AcpiGbl_NumExternalMethods = common dso_local global i32 0, align 4
@ACPI_EXT_RESOLVED_REFERENCE = common dso_local global i32 0, align 4
@AcpiGbl_ResolvedExternalMethods = common dso_local global i32 0, align 4
@AslGbl_ExternalRefFilename = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [95 x i8] c"    /*\0A     * External declarations were imported from\0A     * a reference file -- %s\0A     */\0A\0A\00", align 1
@ACPI_EXT_EXTERNAL_EMITTED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"    External (%s%s)\00", align 1
@.str.2 = private unnamed_addr constant [54 x i8] c"    // Warning: Unknown method, guessing %u arguments\00", align 1
@ACPI_EXT_ORIGIN_FROM_FILE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [20 x i8] c"    // %u Arguments\00", align 1
@.str.4 = private unnamed_addr constant [36 x i8] c"    // From external reference file\00", align 1
@ACPI_EXT_CONFLICTING_DECLARATION = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@ExternalConflictMessage = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@ACPI_EXT_INTERNAL_PATH_ALLOCATED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @AcpiDmEmitExternals() #0 {
  %1 = alloca %struct.TYPE_5__*, align 8
  %2 = load %struct.TYPE_5__*, %struct.TYPE_5__** @AcpiGbl_ExternalList, align 8
  %3 = icmp ne %struct.TYPE_5__* %2, null
  br i1 %3, label %5, label %4

4:                                                ; preds = %0
  br label %151

5:                                                ; preds = %0
  %6 = load %struct.TYPE_5__*, %struct.TYPE_5__** @AcpiGbl_ExternalList, align 8
  store %struct.TYPE_5__* %6, %struct.TYPE_5__** %1, align 8
  br label %7

7:                                                ; preds = %29, %5
  %8 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %9 = icmp ne %struct.TYPE_5__* %8, null
  br i1 %9, label %10, label %33

10:                                               ; preds = %7
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @ACPI_TYPE_METHOD, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %29

16:                                               ; preds = %10
  %17 = load i32, i32* @AcpiGbl_NumExternalMethods, align 4
  %18 = add nsw i32 %17, 1
  store i32 %18, i32* @AcpiGbl_NumExternalMethods, align 4
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @ACPI_EXT_RESOLVED_REFERENCE, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %16
  %26 = load i32, i32* @AcpiGbl_ResolvedExternalMethods, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* @AcpiGbl_ResolvedExternalMethods, align 4
  br label %28

28:                                               ; preds = %25, %16
  br label %29

29:                                               ; preds = %28, %10
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 4
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %31, align 8
  store %struct.TYPE_5__* %32, %struct.TYPE_5__** %1, align 8
  br label %7

33:                                               ; preds = %7
  %34 = call i32 @AcpiDmUnresolvedWarning(i32 1)
  %35 = load i64, i64* @AslGbl_ExternalRefFilename, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %33
  %38 = load i64, i64* @AslGbl_ExternalRefFilename, align 8
  %39 = call i32 (i8*, ...) @AcpiOsPrintf(i8* getelementptr inbounds ([95 x i8], [95 x i8]* @.str, i64 0, i64 0), i64 %38)
  br label %40

40:                                               ; preds = %37, %33
  br label %41

41:                                               ; preds = %141, %40
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** @AcpiGbl_ExternalList, align 8
  %43 = icmp ne %struct.TYPE_5__* %42, null
  br i1 %43, label %44, label %149

44:                                               ; preds = %41
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** @AcpiGbl_ExternalList, align 8
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* @ACPI_EXT_EXTERNAL_EMITTED, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %126, label %51

51:                                               ; preds = %44
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** @AcpiGbl_ExternalList, align 8
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 2
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %53, align 8
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** @AcpiGbl_ExternalList, align 8
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = call i32 @AcpiDmGetObjectTypeName(i64 %57)
  %59 = call i32 (i8*, ...) @AcpiOsPrintf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), %struct.TYPE_5__* %54, i32 %58)
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** @AcpiGbl_ExternalList, align 8
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @ACPI_TYPE_METHOD, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %77

65:                                               ; preds = %51
  %66 = load %struct.TYPE_5__*, %struct.TYPE_5__** @AcpiGbl_ExternalList, align 8
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* @ACPI_EXT_RESOLVED_REFERENCE, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %77, label %72

72:                                               ; preds = %65
  %73 = load %struct.TYPE_5__*, %struct.TYPE_5__** @AcpiGbl_ExternalList, align 8
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 5
  %75 = load i32, i32* %74, align 8
  %76 = call i32 (i8*, ...) @AcpiOsPrintf(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.2, i64 0, i64 0), i32 %75)
  br label %110

77:                                               ; preds = %65, %51
  %78 = load %struct.TYPE_5__*, %struct.TYPE_5__** @AcpiGbl_ExternalList, align 8
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 8
  %81 = load i32, i32* @ACPI_EXT_ORIGIN_FROM_FILE, align 4
  %82 = and i32 %80, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %97

84:                                               ; preds = %77
  %85 = load %struct.TYPE_5__*, %struct.TYPE_5__** @AcpiGbl_ExternalList, align 8
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* @ACPI_TYPE_METHOD, align 8
  %89 = icmp eq i64 %87, %88
  br i1 %89, label %90, label %95

90:                                               ; preds = %84
  %91 = load %struct.TYPE_5__*, %struct.TYPE_5__** @AcpiGbl_ExternalList, align 8
  %92 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %91, i32 0, i32 5
  %93 = load i32, i32* %92, align 8
  %94 = call i32 (i8*, ...) @AcpiOsPrintf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i32 %93)
  br label %95

95:                                               ; preds = %90, %84
  %96 = call i32 (i8*, ...) @AcpiOsPrintf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0))
  br label %109

97:                                               ; preds = %77
  %98 = load %struct.TYPE_5__*, %struct.TYPE_5__** @AcpiGbl_ExternalList, align 8
  %99 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = load i64, i64* @ACPI_TYPE_METHOD, align 8
  %102 = icmp eq i64 %100, %101
  br i1 %102, label %103, label %108

103:                                              ; preds = %97
  %104 = load %struct.TYPE_5__*, %struct.TYPE_5__** @AcpiGbl_ExternalList, align 8
  %105 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %104, i32 0, i32 5
  %106 = load i32, i32* %105, align 8
  %107 = call i32 (i8*, ...) @AcpiOsPrintf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i32 %106)
  br label %108

108:                                              ; preds = %103, %97
  br label %109

109:                                              ; preds = %108, %95
  br label %110

110:                                              ; preds = %109, %72
  %111 = load i32, i32* @ACPI_EXT_CONFLICTING_DECLARATION, align 4
  %112 = load %struct.TYPE_5__*, %struct.TYPE_5__** @AcpiGbl_ExternalList, align 8
  %113 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 8
  %115 = and i32 %114, %111
  store i32 %115, i32* %113, align 8
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %124

117:                                              ; preds = %110
  %118 = load i32, i32* @ExternalConflictMessage, align 4
  %119 = call i32 (i8*, ...) @AcpiOsPrintf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i32 %118)
  %120 = load %struct.TYPE_5__*, %struct.TYPE_5__** @AcpiGbl_ExternalList, align 8
  %121 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %120, i32 0, i32 2
  %122 = load %struct.TYPE_5__*, %struct.TYPE_5__** %121, align 8
  %123 = call i32 @AcpiDmConflictingDeclaration(%struct.TYPE_5__* %122)
  br label %124

124:                                              ; preds = %117, %110
  %125 = call i32 (i8*, ...) @AcpiOsPrintf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0))
  br label %126

126:                                              ; preds = %124, %44
  %127 = load %struct.TYPE_5__*, %struct.TYPE_5__** @AcpiGbl_ExternalList, align 8
  %128 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %127, i32 0, i32 4
  %129 = load %struct.TYPE_5__*, %struct.TYPE_5__** %128, align 8
  store %struct.TYPE_5__* %129, %struct.TYPE_5__** %1, align 8
  %130 = load %struct.TYPE_5__*, %struct.TYPE_5__** @AcpiGbl_ExternalList, align 8
  %131 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 8
  %133 = load i32, i32* @ACPI_EXT_INTERNAL_PATH_ALLOCATED, align 4
  %134 = and i32 %132, %133
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %141

136:                                              ; preds = %126
  %137 = load %struct.TYPE_5__*, %struct.TYPE_5__** @AcpiGbl_ExternalList, align 8
  %138 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %137, i32 0, i32 3
  %139 = load %struct.TYPE_5__*, %struct.TYPE_5__** %138, align 8
  %140 = call i32 @ACPI_FREE(%struct.TYPE_5__* %139)
  br label %141

141:                                              ; preds = %136, %126
  %142 = load %struct.TYPE_5__*, %struct.TYPE_5__** @AcpiGbl_ExternalList, align 8
  %143 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %142, i32 0, i32 2
  %144 = load %struct.TYPE_5__*, %struct.TYPE_5__** %143, align 8
  %145 = call i32 @ACPI_FREE(%struct.TYPE_5__* %144)
  %146 = load %struct.TYPE_5__*, %struct.TYPE_5__** @AcpiGbl_ExternalList, align 8
  %147 = call i32 @ACPI_FREE(%struct.TYPE_5__* %146)
  %148 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  store %struct.TYPE_5__* %148, %struct.TYPE_5__** @AcpiGbl_ExternalList, align 8
  br label %41

149:                                              ; preds = %41
  %150 = call i32 (i8*, ...) @AcpiOsPrintf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0))
  br label %151

151:                                              ; preds = %149, %4
  ret void
}

declare dso_local i32 @AcpiDmUnresolvedWarning(i32) #1

declare dso_local i32 @AcpiOsPrintf(i8*, ...) #1

declare dso_local i32 @AcpiDmGetObjectTypeName(i64) #1

declare dso_local i32 @AcpiDmConflictingDeclaration(%struct.TYPE_5__*) #1

declare dso_local i32 @ACPI_FREE(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
