; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/compiler/extr_aslpredef.c_ApCheckPredefinedReturnValue.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/compiler/extr_aslpredef.c_ApCheckPredefinedReturnValue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { %struct.TYPE_18__ }
%struct.TYPE_18__ = type { i32, i32 }
%struct.TYPE_22__ = type { %struct.TYPE_19__ }
%struct.TYPE_19__ = type { i32, %struct.TYPE_22__* }
%struct.TYPE_20__ = type { %struct.TYPE_16__* }
%struct.TYPE_16__ = type { %struct.TYPE_17__ }
%struct.TYPE_17__ = type { i32 }

@TRUE = common dso_local global i32 0, align 4
@AslGbl_AllExceptionsDisabled = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@AcpiGbl_PredefinedMethods = common dso_local global %struct.TYPE_21__* null, align 8
@ACPI_NOT_PACKAGE_ELEMENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ApCheckPredefinedReturnValue(%struct.TYPE_22__* %0, %struct.TYPE_20__* %1) #0 {
  %3 = alloca %struct.TYPE_22__*, align 8
  %4 = alloca %struct.TYPE_20__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_22__*, align 8
  %7 = alloca %struct.TYPE_21__*, align 8
  store %struct.TYPE_22__* %0, %struct.TYPE_22__** %3, align 8
  store %struct.TYPE_20__* %1, %struct.TYPE_20__** %4, align 8
  %8 = load i32, i32* @TRUE, align 4
  store i32 %8, i32* @AslGbl_AllExceptionsDisabled, align 4
  %9 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %9, i32 0, i32 0
  %11 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %12 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @ApCheckForPredefinedName(%struct.TYPE_16__* %11, i32 %17)
  store i32 %18, i32* %5, align 4
  %19 = load i32, i32* @FALSE, align 4
  store i32 %19, i32* @AslGbl_AllExceptionsDisabled, align 4
  %20 = load i32, i32* %5, align 4
  switch i32 %20, label %26 [
    i32 137, label %21
    i32 136, label %25
    i32 135, label %25
    i32 138, label %25
  ]

21:                                               ; preds = %2
  %22 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %23 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %24 = call i32 @ApCheckForUnexpectedReturnValue(%struct.TYPE_22__* %22, %struct.TYPE_20__* %23)
  br label %73

25:                                               ; preds = %2, %2, %2
  br label %73

26:                                               ; preds = %2
  %27 = load %struct.TYPE_21__*, %struct.TYPE_21__** @AcpiGbl_PredefinedMethods, align 8
  %28 = load i32, i32* %5, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %27, i64 %29
  store %struct.TYPE_21__* %30, %struct.TYPE_21__** %7, align 8
  %31 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %32 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %40, label %36

36:                                               ; preds = %26
  %37 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %38 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %39 = call i32 @ApCheckForUnexpectedReturnValue(%struct.TYPE_22__* %37, %struct.TYPE_20__* %38)
  br label %73

40:                                               ; preds = %26
  %41 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %42, i32 0, i32 1
  %44 = load %struct.TYPE_22__*, %struct.TYPE_22__** %43, align 8
  store %struct.TYPE_22__* %44, %struct.TYPE_22__** %6, align 8
  %45 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %46 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  switch i32 %48, label %71 [
    i32 128, label %49
    i32 132, label %49
    i32 131, label %49
    i32 133, label %49
    i32 129, label %49
    i32 134, label %49
    i32 130, label %49
  ]

49:                                               ; preds = %40, %40, %40, %40, %40, %40, %40
  %50 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %51 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %55 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %56 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @ACPI_NOT_PACKAGE_ELEMENT, align 4
  %60 = call i32 @ApCheckObjectType(i32 %53, %struct.TYPE_22__* %54, i32 %58, i32 %59)
  %61 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %62 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = icmp eq i32 %64, 130
  br i1 %65, label %66, label %70

66:                                               ; preds = %49
  %67 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %68 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %69 = call i32 @ApCheckPackage(%struct.TYPE_22__* %67, %struct.TYPE_21__* %68)
  br label %70

70:                                               ; preds = %66, %49
  br label %72

71:                                               ; preds = %40
  br label %72

72:                                               ; preds = %71, %70
  br label %73

73:                                               ; preds = %21, %25, %36, %72
  ret void
}

declare dso_local i32 @ApCheckForPredefinedName(%struct.TYPE_16__*, i32) #1

declare dso_local i32 @ApCheckForUnexpectedReturnValue(%struct.TYPE_22__*, %struct.TYPE_20__*) #1

declare dso_local i32 @ApCheckObjectType(i32, %struct.TYPE_22__*, i32, i32) #1

declare dso_local i32 @ApCheckPackage(%struct.TYPE_22__*, %struct.TYPE_21__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
