; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/acpica/extr_acpi.c_acpi_EvaluateDSM.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/acpica/extr_acpi.c_acpi_EvaluateDSM.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.acpi_object = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32*, i64 }
%struct.TYPE_13__ = type { i32, i32* }
%struct.TYPE_12__ = type { i32, %union.acpi_object* }
%struct.TYPE_9__ = type { i32*, i32 }
%struct.TYPE_10__ = type { i32 }

@AE_NO_MEMORY = common dso_local global i32 0, align 4
@ACPI_TYPE_BUFFER = common dso_local global i8* null, align 8
@ACPI_UUID_LENGTH = common dso_local global i32 0, align 4
@ACPI_TYPE_INTEGER = common dso_local global i8* null, align 8
@ACPI_TYPE_PACKAGE = common dso_local global i8* null, align 8
@ACPI_ALLOCATE_BUFFER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"_DSM\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"Unexpected status\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @acpi_EvaluateDSM(i32 %0, i32* %1, i32 %2, i32 %3, %union.acpi_object* %4, %struct.TYPE_13__* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %union.acpi_object*, align 8
  %13 = alloca %struct.TYPE_13__*, align 8
  %14 = alloca [4 x %union.acpi_object], align 16
  %15 = alloca %struct.TYPE_12__, align 8
  %16 = alloca %struct.TYPE_13__, align 8
  %17 = alloca i32, align 4
  store i32 %0, i32* %8, align 4
  store i32* %1, i32** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store %union.acpi_object* %4, %union.acpi_object** %12, align 8
  store %struct.TYPE_13__* %5, %struct.TYPE_13__** %13, align 8
  %18 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %19 = icmp eq %struct.TYPE_13__* %18, null
  br i1 %19, label %20, label %22

20:                                               ; preds = %6
  %21 = load i32, i32* @AE_NO_MEMORY, align 4
  store i32 %21, i32* %7, align 4
  br label %87

22:                                               ; preds = %6
  %23 = load i8*, i8** @ACPI_TYPE_BUFFER, align 8
  %24 = getelementptr inbounds [4 x %union.acpi_object], [4 x %union.acpi_object]* %14, i64 0, i64 0
  %25 = bitcast %union.acpi_object* %24 to i8**
  store i8* %23, i8** %25, align 16
  %26 = load i32, i32* @ACPI_UUID_LENGTH, align 4
  %27 = getelementptr inbounds [4 x %union.acpi_object], [4 x %union.acpi_object]* %14, i64 0, i64 0
  %28 = bitcast %union.acpi_object* %27 to %struct.TYPE_9__*
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 1
  store i32 %26, i32* %29, align 8
  %30 = load i32*, i32** %9, align 8
  %31 = getelementptr inbounds [4 x %union.acpi_object], [4 x %union.acpi_object]* %14, i64 0, i64 0
  %32 = bitcast %union.acpi_object* %31 to %struct.TYPE_9__*
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i32 0, i32 0
  store i32* %30, i32** %33, align 16
  %34 = load i8*, i8** @ACPI_TYPE_INTEGER, align 8
  %35 = getelementptr inbounds [4 x %union.acpi_object], [4 x %union.acpi_object]* %14, i64 0, i64 1
  %36 = bitcast %union.acpi_object* %35 to i8**
  store i8* %34, i8** %36, align 16
  %37 = load i32, i32* %10, align 4
  %38 = getelementptr inbounds [4 x %union.acpi_object], [4 x %union.acpi_object]* %14, i64 0, i64 1
  %39 = bitcast %union.acpi_object* %38 to %struct.TYPE_10__*
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %39, i32 0, i32 0
  store i32 %37, i32* %40, align 16
  %41 = load i8*, i8** @ACPI_TYPE_INTEGER, align 8
  %42 = getelementptr inbounds [4 x %union.acpi_object], [4 x %union.acpi_object]* %14, i64 0, i64 2
  %43 = bitcast %union.acpi_object* %42 to i8**
  store i8* %41, i8** %43, align 16
  %44 = load i32, i32* %11, align 4
  %45 = getelementptr inbounds [4 x %union.acpi_object], [4 x %union.acpi_object]* %14, i64 0, i64 2
  %46 = bitcast %union.acpi_object* %45 to %struct.TYPE_10__*
  %47 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %46, i32 0, i32 0
  store i32 %44, i32* %47, align 16
  %48 = load %union.acpi_object*, %union.acpi_object** %12, align 8
  %49 = icmp ne %union.acpi_object* %48, null
  br i1 %49, label %50, label %55

50:                                               ; preds = %22
  %51 = getelementptr inbounds [4 x %union.acpi_object], [4 x %union.acpi_object]* %14, i64 0, i64 3
  %52 = load %union.acpi_object*, %union.acpi_object** %12, align 8
  %53 = bitcast %union.acpi_object* %51 to i8*
  %54 = bitcast %union.acpi_object* %52 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %53, i8* align 8 %54, i64 16, i1 false)
  br label %65

55:                                               ; preds = %22
  %56 = load i8*, i8** @ACPI_TYPE_PACKAGE, align 8
  %57 = getelementptr inbounds [4 x %union.acpi_object], [4 x %union.acpi_object]* %14, i64 0, i64 3
  %58 = bitcast %union.acpi_object* %57 to i8**
  store i8* %56, i8** %58, align 16
  %59 = getelementptr inbounds [4 x %union.acpi_object], [4 x %union.acpi_object]* %14, i64 0, i64 3
  %60 = bitcast %union.acpi_object* %59 to %struct.TYPE_11__*
  %61 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %60, i32 0, i32 1
  store i64 0, i64* %61, align 8
  %62 = getelementptr inbounds [4 x %union.acpi_object], [4 x %union.acpi_object]* %14, i64 0, i64 3
  %63 = bitcast %union.acpi_object* %62 to %struct.TYPE_11__*
  %64 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %63, i32 0, i32 0
  store i32* null, i32** %64, align 16
  br label %65

65:                                               ; preds = %55, %50
  %66 = getelementptr inbounds [4 x %union.acpi_object], [4 x %union.acpi_object]* %14, i64 0, i64 0
  %67 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %15, i32 0, i32 1
  store %union.acpi_object* %66, %union.acpi_object** %67, align 8
  %68 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %15, i32 0, i32 0
  store i32 4, i32* %68, align 8
  %69 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %16, i32 0, i32 1
  store i32* null, i32** %69, align 8
  %70 = load i32, i32* @ACPI_ALLOCATE_BUFFER, align 4
  %71 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %16, i32 0, i32 0
  store i32 %70, i32* %71, align 8
  %72 = load i32, i32* %8, align 4
  %73 = call i32 @AcpiEvaluateObject(i32 %72, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), %struct.TYPE_12__* %15, %struct.TYPE_13__* %16)
  store i32 %73, i32* %17, align 4
  %74 = load i32, i32* %17, align 4
  %75 = call i64 @ACPI_FAILURE(i32 %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %79

77:                                               ; preds = %65
  %78 = load i32, i32* %17, align 4
  store i32 %78, i32* %7, align 4
  br label %87

79:                                               ; preds = %65
  %80 = load i32, i32* %17, align 4
  %81 = call i32 @ACPI_SUCCESS(i32 %80)
  %82 = call i32 @KASSERT(i32 %81, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  %83 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %84 = bitcast %struct.TYPE_13__* %83 to i8*
  %85 = bitcast %struct.TYPE_13__* %16 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %84, i8* align 8 %85, i64 16, i1 false)
  %86 = load i32, i32* %17, align 4
  store i32 %86, i32* %7, align 4
  br label %87

87:                                               ; preds = %79, %77, %20
  %88 = load i32, i32* %7, align 4
  ret i32 %88
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @AcpiEvaluateObject(i32, i8*, %struct.TYPE_12__*, %struct.TYPE_13__*) #2

declare dso_local i64 @ACPI_FAILURE(i32) #2

declare dso_local i32 @KASSERT(i32, i8*) #2

declare dso_local i32 @ACPI_SUCCESS(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
