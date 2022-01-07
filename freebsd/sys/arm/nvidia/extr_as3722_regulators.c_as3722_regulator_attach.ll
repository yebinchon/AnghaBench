; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/nvidia/extr_as3722_regulators.c_as3722_regulator_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/nvidia/extr_as3722_regulators.c_as3722_regulator_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8* }
%struct.as3722_softc = type { i32, %struct.as3722_reg_sc**, i32 }
%struct.as3722_reg_sc = type { i32 }

@.str = private unnamed_addr constant [11 x i8] c"regulators\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c" Cannot find regulators subnode\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@as3722s_def = common dso_local global %struct.TYPE_4__* null, align 8
@M_AS3722_REG = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@bootverbose = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [28 x i8] c"Regulator %s missing in DT\0A\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"Cannot attach regulator: %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @as3722_regulator_attach(%struct.as3722_softc* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.as3722_softc*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.as3722_reg_sc*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.as3722_softc* %0, %struct.as3722_softc** %4, align 8
  store i64 %1, i64* %5, align 8
  %10 = load i64, i64* %5, align 8
  %11 = call i64 @ofw_bus_find_child(i64 %10, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  store i64 %11, i64* %8, align 8
  %12 = load i64, i64* %8, align 8
  %13 = icmp sle i64 %12, 0
  br i1 %13, label %14, label %20

14:                                               ; preds = %2
  %15 = load %struct.as3722_softc*, %struct.as3722_softc** %4, align 8
  %16 = getelementptr inbounds %struct.as3722_softc, %struct.as3722_softc* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 8
  %18 = call i32 (i32, i8*, ...) @device_printf(i32 %17, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %19 = load i32, i32* @ENXIO, align 4
  store i32 %19, i32* %3, align 4
  br label %104

20:                                               ; preds = %2
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** @as3722s_def, align 8
  %22 = call i32 @nitems(%struct.TYPE_4__* %21)
  %23 = load %struct.as3722_softc*, %struct.as3722_softc** %4, align 8
  %24 = getelementptr inbounds %struct.as3722_softc, %struct.as3722_softc* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 8
  %25 = load %struct.as3722_softc*, %struct.as3722_softc** %4, align 8
  %26 = getelementptr inbounds %struct.as3722_softc, %struct.as3722_softc* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = sext i32 %27 to i64
  %29 = mul i64 8, %28
  %30 = trunc i64 %29 to i32
  %31 = load i32, i32* @M_AS3722_REG, align 4
  %32 = load i32, i32* @M_WAITOK, align 4
  %33 = load i32, i32* @M_ZERO, align 4
  %34 = or i32 %32, %33
  %35 = call %struct.as3722_reg_sc** @malloc(i32 %30, i32 %31, i32 %34)
  %36 = load %struct.as3722_softc*, %struct.as3722_softc** %4, align 8
  %37 = getelementptr inbounds %struct.as3722_softc, %struct.as3722_softc* %36, i32 0, i32 1
  store %struct.as3722_reg_sc** %35, %struct.as3722_reg_sc*** %37, align 8
  store i32 0, i32* %9, align 4
  br label %38

38:                                               ; preds = %100, %20
  %39 = load i32, i32* %9, align 4
  %40 = load %struct.as3722_softc*, %struct.as3722_softc** %4, align 8
  %41 = getelementptr inbounds %struct.as3722_softc, %struct.as3722_softc* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = icmp slt i32 %39, %42
  br i1 %43, label %44, label %103

44:                                               ; preds = %38
  %45 = load i64, i64* %8, align 8
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** @as3722s_def, align 8
  %47 = load i32, i32* %9, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = load i8*, i8** %50, align 8
  %52 = call i64 @ofw_bus_find_child(i64 %45, i8* %51)
  store i64 %52, i64* %7, align 8
  %53 = load i64, i64* %7, align 8
  %54 = icmp eq i64 %53, 0
  br i1 %54, label %55, label %70

55:                                               ; preds = %44
  %56 = load i64, i64* @bootverbose, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %69

58:                                               ; preds = %55
  %59 = load %struct.as3722_softc*, %struct.as3722_softc** %4, align 8
  %60 = getelementptr inbounds %struct.as3722_softc, %struct.as3722_softc* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 8
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** @as3722s_def, align 8
  %63 = load i32, i32* %9, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i64 %64
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 0
  %67 = load i8*, i8** %66, align 8
  %68 = call i32 (i32, i8*, ...) @device_printf(i32 %61, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i8* %67)
  br label %69

69:                                               ; preds = %58, %55
  br label %100

70:                                               ; preds = %44
  %71 = load %struct.as3722_softc*, %struct.as3722_softc** %4, align 8
  %72 = load i64, i64* %7, align 8
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** @as3722s_def, align 8
  %74 = load i32, i32* %9, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i64 %75
  %77 = call %struct.as3722_reg_sc* @as3722_attach(%struct.as3722_softc* %71, i64 %72, %struct.TYPE_4__* %76)
  store %struct.as3722_reg_sc* %77, %struct.as3722_reg_sc** %6, align 8
  %78 = load %struct.as3722_reg_sc*, %struct.as3722_reg_sc** %6, align 8
  %79 = icmp eq %struct.as3722_reg_sc* %78, null
  br i1 %79, label %80, label %92

80:                                               ; preds = %70
  %81 = load %struct.as3722_softc*, %struct.as3722_softc** %4, align 8
  %82 = getelementptr inbounds %struct.as3722_softc, %struct.as3722_softc* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 8
  %84 = load %struct.TYPE_4__*, %struct.TYPE_4__** @as3722s_def, align 8
  %85 = load i32, i32* %9, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i64 %86
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 0
  %89 = load i8*, i8** %88, align 8
  %90 = call i32 (i32, i8*, ...) @device_printf(i32 %83, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i8* %89)
  %91 = load i32, i32* @ENXIO, align 4
  store i32 %91, i32* %3, align 4
  br label %104

92:                                               ; preds = %70
  %93 = load %struct.as3722_reg_sc*, %struct.as3722_reg_sc** %6, align 8
  %94 = load %struct.as3722_softc*, %struct.as3722_softc** %4, align 8
  %95 = getelementptr inbounds %struct.as3722_softc, %struct.as3722_softc* %94, i32 0, i32 1
  %96 = load %struct.as3722_reg_sc**, %struct.as3722_reg_sc*** %95, align 8
  %97 = load i32, i32* %9, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds %struct.as3722_reg_sc*, %struct.as3722_reg_sc** %96, i64 %98
  store %struct.as3722_reg_sc* %93, %struct.as3722_reg_sc** %99, align 8
  br label %100

100:                                              ; preds = %92, %69
  %101 = load i32, i32* %9, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %9, align 4
  br label %38

103:                                              ; preds = %38
  store i32 0, i32* %3, align 4
  br label %104

104:                                              ; preds = %103, %80, %14
  %105 = load i32, i32* %3, align 4
  ret i32 %105
}

declare dso_local i64 @ofw_bus_find_child(i64, i8*) #1

declare dso_local i32 @device_printf(i32, i8*, ...) #1

declare dso_local i32 @nitems(%struct.TYPE_4__*) #1

declare dso_local %struct.as3722_reg_sc** @malloc(i32, i32, i32) #1

declare dso_local %struct.as3722_reg_sc* @as3722_attach(%struct.as3722_softc*, i64, %struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
