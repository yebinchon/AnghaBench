; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/components/debugger/extr_dbexec.c_AcpiDbExecuteMethod.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/components/debugger/extr_dbexec.c_AcpiDbExecuteMethod.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i64**, i32* }
%struct.TYPE_10__ = type { i64, i32 }
%struct.TYPE_8__ = type { i64, i32* }

@ACPI_DEBUGGER_MAX_ARGS = common dso_local global i32 0, align 4
@DbExecuteMethod = common dso_local global i32 0, align 4
@AcpiGbl_DbOutputToFile = common dso_local global i64 0, align 8
@AcpiDbgLevel = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"Warning: debug output is not enabled!\0A\00", align 1
@AE_INFO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"While parsing method arguments\00", align 1
@AcpiGbl_DbBuffer = common dso_local global i32 0, align 4
@ACPI_DEBUG_BUFFER_SIZE = common dso_local global i64 0, align 8
@TRUE = common dso_local global i8* null, align 8
@AcpiGbl_MethodExecuting = common dso_local global i8* null, align 8
@FALSE = common dso_local global i8* null, align 8
@AcpiGbl_CmSingleStep = common dso_local global i8* null, align 8
@AE_ABORT_METHOD = common dso_local global i64 0, align 8
@AcpiGbl_AbortMethod = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [26 x i8] c"Aborting top-level method\00", align 1
@AE_OK = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [37 x i8] c"while executing %s from AML Debugger\00", align 1
@AE_BUFFER_OVERFLOW = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [76 x i8] c"Possible buffer overflow within AML Debugger buffer (size 0x%X needed 0x%X)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_9__*, %struct.TYPE_10__*)* @AcpiDbExecuteMethod to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @AcpiDbExecuteMethod(%struct.TYPE_9__* %0, %struct.TYPE_10__* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_8__, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %4, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %5, align 8
  %11 = load i32, i32* @ACPI_DEBUGGER_MAX_ARGS, align 4
  %12 = add nsw i32 %11, 1
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %8, align 8
  %15 = alloca i32, i64 %13, align 16
  store i64 %13, i64* %9, align 8
  %16 = load i32, i32* @DbExecuteMethod, align 4
  %17 = call i32 @ACPI_FUNCTION_TRACE(i32 %16)
  %18 = load i64, i64* @AcpiGbl_DbOutputToFile, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %2
  %21 = load i32, i32* @AcpiDbgLevel, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %25, label %23

23:                                               ; preds = %20
  %24 = call i32 @AcpiOsPrintf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  br label %25

25:                                               ; preds = %23, %20, %2
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 0
  store i64 0, i64* %26, align 8
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 1
  store i32* null, i32** %27, align 8
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 1
  %30 = load i64**, i64*** %29, align 8
  %31 = icmp ne i64** %30, null
  br i1 %31, label %32, label %90

32:                                               ; preds = %25
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 1
  %35 = load i64**, i64*** %34, align 8
  %36 = getelementptr inbounds i64*, i64** %35, i64 0
  %37 = load i64*, i64** %36, align 8
  %38 = icmp ne i64* %37, null
  br i1 %38, label %39, label %90

39:                                               ; preds = %32
  store i64 0, i64* %10, align 8
  br label %40

40:                                               ; preds = %83, %39
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 1
  %43 = load i64**, i64*** %42, align 8
  %44 = load i64, i64* %10, align 8
  %45 = getelementptr inbounds i64*, i64** %43, i64 %44
  %46 = load i64*, i64** %45, align 8
  %47 = icmp ne i64* %46, null
  br i1 %47, label %48, label %57

48:                                               ; preds = %40
  %49 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %49, i32 0, i32 1
  %51 = load i64**, i64*** %50, align 8
  %52 = load i64, i64* %10, align 8
  %53 = getelementptr inbounds i64*, i64** %51, i64 %52
  %54 = load i64*, i64** %53, align 8
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br label %57

57:                                               ; preds = %48, %40
  %58 = phi i1 [ false, %40 ], [ %56, %48 ]
  br i1 %58, label %59, label %86

59:                                               ; preds = %57
  %60 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %61 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %60, i32 0, i32 2
  %62 = load i32*, i32** %61, align 8
  %63 = load i64, i64* %10, align 8
  %64 = getelementptr inbounds i32, i32* %62, i64 %63
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %67 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %66, i32 0, i32 1
  %68 = load i64**, i64*** %67, align 8
  %69 = load i64, i64* %10, align 8
  %70 = getelementptr inbounds i64*, i64** %68, i64 %69
  %71 = load i64*, i64** %70, align 8
  %72 = load i64, i64* %10, align 8
  %73 = getelementptr inbounds i32, i32* %15, i64 %72
  %74 = call i64 @AcpiDbConvertToObject(i32 %65, i64* %71, i32* %73)
  store i64 %74, i64* %6, align 8
  %75 = load i64, i64* %6, align 8
  %76 = call i64 @ACPI_FAILURE(i64 %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %82

78:                                               ; preds = %59
  %79 = load i32, i32* @AE_INFO, align 4
  %80 = load i64, i64* %6, align 8
  %81 = call i32 @ACPI_EXCEPTION(i32 ptrtoint ([31 x i8]* @.str.1 to i32))
  br label %141

82:                                               ; preds = %59
  br label %83

83:                                               ; preds = %82
  %84 = load i64, i64* %10, align 8
  %85 = add i64 %84, 1
  store i64 %85, i64* %10, align 8
  br label %40

86:                                               ; preds = %57
  %87 = load i64, i64* %10, align 8
  %88 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 0
  store i64 %87, i64* %88, align 8
  %89 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 1
  store i32* %15, i32** %89, align 8
  br label %90

90:                                               ; preds = %86, %32, %25
  %91 = load i32, i32* @AcpiGbl_DbBuffer, align 4
  %92 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %93 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %92, i32 0, i32 1
  store i32 %91, i32* %93, align 8
  %94 = load i64, i64* @ACPI_DEBUG_BUFFER_SIZE, align 8
  %95 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %96 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %95, i32 0, i32 0
  store i64 %94, i64* %96, align 8
  %97 = load i8*, i8** @TRUE, align 8
  store i8* %97, i8** @AcpiGbl_MethodExecuting, align 8
  %98 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %99 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %102 = call i64 @AcpiEvaluateObject(i32* null, i32 %100, %struct.TYPE_8__* %7, %struct.TYPE_10__* %101)
  store i64 %102, i64* %6, align 8
  %103 = load i8*, i8** @FALSE, align 8
  store i8* %103, i8** @AcpiGbl_CmSingleStep, align 8
  %104 = load i8*, i8** @FALSE, align 8
  store i8* %104, i8** @AcpiGbl_MethodExecuting, align 8
  %105 = load i64, i64* %6, align 8
  %106 = call i64 @ACPI_FAILURE(i64 %105)
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %140

108:                                              ; preds = %90
  %109 = load i64, i64* %6, align 8
  %110 = load i64, i64* @AE_ABORT_METHOD, align 8
  %111 = icmp eq i64 %109, %110
  br i1 %111, label %115, label %112

112:                                              ; preds = %108
  %113 = load i8*, i8** @AcpiGbl_AbortMethod, align 8
  %114 = icmp ne i8* %113, null
  br i1 %114, label %115, label %121

115:                                              ; preds = %112, %108
  %116 = load i32, i32* @AE_INFO, align 4
  %117 = load i64, i64* %6, align 8
  %118 = call i32 @ACPI_EXCEPTION(i32 ptrtoint ([26 x i8]* @.str.2 to i32))
  %119 = load i8*, i8** @FALSE, align 8
  store i8* %119, i8** @AcpiGbl_AbortMethod, align 8
  %120 = load i64, i64* @AE_OK, align 8
  store i64 %120, i64* %6, align 8
  br label %141

121:                                              ; preds = %112
  %122 = load i32, i32* @AE_INFO, align 4
  %123 = load i64, i64* %6, align 8
  %124 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %125 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = call i32 @ACPI_EXCEPTION(i32 %126)
  %128 = load i64, i64* %6, align 8
  %129 = load i64, i64* @AE_BUFFER_OVERFLOW, align 8
  %130 = icmp eq i64 %128, %129
  br i1 %130, label %131, label %139

131:                                              ; preds = %121
  %132 = load i32, i32* @AE_INFO, align 4
  %133 = load i64, i64* @ACPI_DEBUG_BUFFER_SIZE, align 8
  %134 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %135 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %134, i32 0, i32 0
  %136 = load i64, i64* %135, align 8
  %137 = trunc i64 %136 to i32
  %138 = call i32 @ACPI_ERROR(i32 %137)
  br label %139

139:                                              ; preds = %131, %121
  br label %140

140:                                              ; preds = %139, %90
  br label %141

141:                                              ; preds = %140, %115, %78
  %142 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 0
  %143 = load i64, i64* %142, align 8
  %144 = call i32 @AcpiDbDeleteObjects(i64 %143, i32* %15)
  %145 = load i64, i64* %6, align 8
  %146 = call i32 @return_ACPI_STATUS(i64 %145)
  %147 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %147)
  %148 = load i64, i64* %3, align 8
  ret i64 %148
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @ACPI_FUNCTION_TRACE(i32) #2

declare dso_local i32 @AcpiOsPrintf(i8*) #2

declare dso_local i64 @AcpiDbConvertToObject(i32, i64*, i32*) #2

declare dso_local i64 @ACPI_FAILURE(i64) #2

declare dso_local i32 @ACPI_EXCEPTION(i32) #2

declare dso_local i64 @AcpiEvaluateObject(i32*, i32, %struct.TYPE_8__*, %struct.TYPE_10__*) #2

declare dso_local i32 @ACPI_ERROR(i32) #2

declare dso_local i32 @AcpiDbDeleteObjects(i64, i32*) #2

declare dso_local i32 @return_ACPI_STATUS(i64) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
