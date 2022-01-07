; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/compiler/extr_aslpredef.c_ApCheckForPredefinedObject.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/compiler/extr_aslpredef.c_ApCheckForPredefinedObject.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i32, i32, i32 }
%struct.TYPE_19__ = type { %struct.TYPE_17__ }
%struct.TYPE_17__ = type { i64, %struct.TYPE_15__* }
%struct.TYPE_15__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { %struct.TYPE_19__* }

@ASL_ERROR = common dso_local global i32 0, align 4
@ASL_MSG_RESERVED_METHOD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"with zero arguments\00", align 1
@AcpiGbl_PredefinedMethods = common dso_local global %struct.TYPE_18__* null, align 8
@.str.1 = private unnamed_addr constant [15 x i8] c"with arguments\00", align 1
@ACPI_NOT_PACKAGE_ELEMENT = common dso_local global i32 0, align 4
@PARSEOP_PACKAGE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ApCheckForPredefinedObject(%struct.TYPE_19__* %0, i8* %1) #0 {
  %3 = alloca %struct.TYPE_19__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_19__*, align 8
  %7 = alloca %struct.TYPE_18__*, align 8
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %3, align 8
  store i8* %1, i8** %4, align 8
  %8 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = call i32 @ApCheckForPredefinedName(%struct.TYPE_19__* %8, i8* %9)
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* %5, align 4
  switch i32 %11, label %18 [
    i32 129, label %12
    i32 128, label %12
    i32 131, label %12
    i32 130, label %13
  ]

12:                                               ; preds = %2, %2, %2
  br label %81

13:                                               ; preds = %2
  %14 = load i32, i32* @ASL_ERROR, align 4
  %15 = load i32, i32* @ASL_MSG_RESERVED_METHOD, align 4
  %16 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %17 = call i32 @AslError(i32 %14, i32 %15, %struct.TYPE_19__* %16, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  br label %81

18:                                               ; preds = %2
  br label %19

19:                                               ; preds = %18
  %20 = load %struct.TYPE_18__*, %struct.TYPE_18__** @AcpiGbl_PredefinedMethods, align 8
  %21 = load i32, i32* %5, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %20, i64 %22
  store %struct.TYPE_18__* %23, %struct.TYPE_18__** %7, align 8
  %24 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %25 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = call i64 @METHOD_GET_ARG_COUNT(i32 %27)
  %29 = icmp sgt i64 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %19
  %31 = load i32, i32* @ASL_ERROR, align 4
  %32 = load i32, i32* @ASL_MSG_RESERVED_METHOD, align 4
  %33 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %34 = call i32 @AslError(i32 %31, i32 %32, %struct.TYPE_19__* %33, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  br label %81

35:                                               ; preds = %19
  %36 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %37 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %46, label %41

41:                                               ; preds = %35
  %42 = load i32, i32* @ASL_ERROR, align 4
  %43 = load i32, i32* @ASL_MSG_RESERVED_METHOD, align 4
  %44 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %45 = call i32 @AslError(i32 %42, i32 %43, %struct.TYPE_19__* %44, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  br label %81

46:                                               ; preds = %35
  %47 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %48 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %48, i32 0, i32 1
  %50 = load %struct.TYPE_15__*, %struct.TYPE_15__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %51, i32 0, i32 0
  %53 = load %struct.TYPE_19__*, %struct.TYPE_19__** %52, align 8
  store %struct.TYPE_19__* %53, %struct.TYPE_19__** %6, align 8
  %54 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %55 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %59 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %59, i32 0, i32 1
  %61 = load %struct.TYPE_15__*, %struct.TYPE_15__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %62, i32 0, i32 0
  %64 = load %struct.TYPE_19__*, %struct.TYPE_19__** %63, align 8
  %65 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %66 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* @ACPI_NOT_PACKAGE_ELEMENT, align 4
  %70 = call i32 @ApCheckObjectType(i32 %57, %struct.TYPE_19__* %64, i32 %68, i32 %69)
  %71 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %72 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* @PARSEOP_PACKAGE, align 8
  %76 = icmp eq i64 %74, %75
  br i1 %76, label %77, label %81

77:                                               ; preds = %46
  %78 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %79 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %80 = call i32 @ApCheckPackage(%struct.TYPE_19__* %78, %struct.TYPE_18__* %79)
  br label %81

81:                                               ; preds = %12, %13, %30, %41, %77, %46
  ret void
}

declare dso_local i32 @ApCheckForPredefinedName(%struct.TYPE_19__*, i8*) #1

declare dso_local i32 @AslError(i32, i32, %struct.TYPE_19__*, i8*) #1

declare dso_local i64 @METHOD_GET_ARG_COUNT(i32) #1

declare dso_local i32 @ApCheckObjectType(i32, %struct.TYPE_19__*, i32, i32) #1

declare dso_local i32 @ApCheckPackage(%struct.TYPE_19__*, %struct.TYPE_18__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
