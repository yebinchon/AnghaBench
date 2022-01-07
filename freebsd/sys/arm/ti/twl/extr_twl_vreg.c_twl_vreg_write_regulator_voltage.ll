; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/ti/twl/extr_twl_vreg.c_twl_vreg_write_regulator_voltage.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/ti/twl/extr_twl_vreg.c_twl_vreg_write_regulator_voltage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.twl_vreg_softc = type { i32, i32 }
%struct.twl_regulator_entry = type { i64, i32, i32, i32* }

@EINVAL = common dso_local global i32 0, align 4
@TWL_VREG_VSEL = common dso_local global i32 0, align 4
@twl_vreg_debug = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"%s : setting voltage to %dmV (vsel: 0x%x)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.twl_vreg_softc*, %struct.twl_regulator_entry*, i32)* @twl_vreg_write_regulator_voltage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @twl_vreg_write_regulator_voltage(%struct.twl_vreg_softc* %0, %struct.twl_regulator_entry* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.twl_vreg_softc*, align 8
  %6 = alloca %struct.twl_regulator_entry*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.twl_vreg_softc* %0, %struct.twl_vreg_softc** %5, align 8
  store %struct.twl_regulator_entry* %1, %struct.twl_regulator_entry** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.twl_vreg_softc*, %struct.twl_vreg_softc** %5, align 8
  %12 = call i32 @TWL_VREG_ASSERT_LOCKED(%struct.twl_vreg_softc* %11)
  %13 = load i32, i32* %7, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %3
  %16 = load %struct.twl_vreg_softc*, %struct.twl_vreg_softc** %5, align 8
  %17 = load %struct.twl_regulator_entry*, %struct.twl_regulator_entry** %6, align 8
  %18 = call i32 @twl_vreg_disable_regulator(%struct.twl_vreg_softc* %16, %struct.twl_regulator_entry* %17)
  store i32 %18, i32* %4, align 4
  br label %96

19:                                               ; preds = %3
  %20 = load %struct.twl_regulator_entry*, %struct.twl_regulator_entry** %6, align 8
  %21 = getelementptr inbounds %struct.twl_regulator_entry, %struct.twl_regulator_entry* %20, i32 0, i32 3
  %22 = load i32*, i32** %21, align 8
  %23 = icmp eq i32* %22, null
  br i1 %23, label %29, label %24

24:                                               ; preds = %19
  %25 = load %struct.twl_regulator_entry*, %struct.twl_regulator_entry** %6, align 8
  %26 = getelementptr inbounds %struct.twl_regulator_entry, %struct.twl_regulator_entry* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %29, label %41

29:                                               ; preds = %24, %19
  %30 = load i32, i32* %7, align 4
  %31 = load %struct.twl_regulator_entry*, %struct.twl_regulator_entry** %6, align 8
  %32 = getelementptr inbounds %struct.twl_regulator_entry, %struct.twl_regulator_entry* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = icmp ne i32 %30, %33
  br i1 %34, label %35, label %37

35:                                               ; preds = %29
  %36 = load i32, i32* @EINVAL, align 4
  store i32 %36, i32* %4, align 4
  br label %96

37:                                               ; preds = %29
  %38 = load %struct.twl_vreg_softc*, %struct.twl_vreg_softc** %5, align 8
  %39 = load %struct.twl_regulator_entry*, %struct.twl_regulator_entry** %6, align 8
  %40 = call i32 @twl_vreg_enable_regulator(%struct.twl_vreg_softc* %38, %struct.twl_regulator_entry* %39)
  store i32 %40, i32* %4, align 4
  br label %96

41:                                               ; preds = %24
  %42 = load %struct.twl_vreg_softc*, %struct.twl_vreg_softc** %5, align 8
  %43 = load %struct.twl_regulator_entry*, %struct.twl_regulator_entry** %6, align 8
  %44 = load i32, i32* %7, align 4
  %45 = call i32 @twl_vreg_millivolt_to_vsel(%struct.twl_vreg_softc* %42, %struct.twl_regulator_entry* %43, i32 %44, i32* %9)
  store i32 %45, i32* %8, align 4
  %46 = load i32, i32* %8, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %41
  %49 = load i32, i32* %8, align 4
  store i32 %49, i32* %4, align 4
  br label %96

50:                                               ; preds = %41
  %51 = load %struct.twl_vreg_softc*, %struct.twl_vreg_softc** %5, align 8
  %52 = getelementptr inbounds %struct.twl_vreg_softc, %struct.twl_vreg_softc* %51, i32 0, i32 1
  %53 = call i32 @sx_xlocked(i32* %52)
  store i32 %53, i32* %10, align 4
  %54 = load i32, i32* %10, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %59, label %56

56:                                               ; preds = %50
  %57 = load %struct.twl_vreg_softc*, %struct.twl_vreg_softc** %5, align 8
  %58 = call i32 @TWL_VREG_LOCK_UPGRADE(%struct.twl_vreg_softc* %57)
  br label %59

59:                                               ; preds = %56, %50
  %60 = load %struct.twl_vreg_softc*, %struct.twl_vreg_softc** %5, align 8
  %61 = load %struct.twl_regulator_entry*, %struct.twl_regulator_entry** %6, align 8
  %62 = load i32, i32* @TWL_VREG_VSEL, align 4
  %63 = load i32, i32* %9, align 4
  %64 = and i32 %63, 31
  %65 = call i32 @twl_vreg_write_1(%struct.twl_vreg_softc* %60, %struct.twl_regulator_entry* %61, i32 %62, i32 %64)
  store i32 %65, i32* %8, align 4
  %66 = load i32, i32* %8, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %72, label %68

68:                                               ; preds = %59
  %69 = load %struct.twl_vreg_softc*, %struct.twl_vreg_softc** %5, align 8
  %70 = load %struct.twl_regulator_entry*, %struct.twl_regulator_entry** %6, align 8
  %71 = call i32 @twl_vreg_enable_regulator(%struct.twl_vreg_softc* %69, %struct.twl_regulator_entry* %70)
  store i32 %71, i32* %8, align 4
  br label %72

72:                                               ; preds = %68, %59
  %73 = load i32, i32* %10, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %78, label %75

75:                                               ; preds = %72
  %76 = load %struct.twl_vreg_softc*, %struct.twl_vreg_softc** %5, align 8
  %77 = call i32 @TWL_VREG_LOCK_DOWNGRADE(%struct.twl_vreg_softc* %76)
  br label %78

78:                                               ; preds = %75, %72
  %79 = load i32, i32* @twl_vreg_debug, align 4
  %80 = icmp sgt i32 %79, 1
  br i1 %80, label %81, label %94

81:                                               ; preds = %78
  %82 = load i32, i32* %8, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %94, label %84

84:                                               ; preds = %81
  %85 = load %struct.twl_vreg_softc*, %struct.twl_vreg_softc** %5, align 8
  %86 = getelementptr inbounds %struct.twl_vreg_softc, %struct.twl_vreg_softc* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.twl_regulator_entry*, %struct.twl_regulator_entry** %6, align 8
  %89 = getelementptr inbounds %struct.twl_regulator_entry, %struct.twl_regulator_entry* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* %7, align 4
  %92 = load i32, i32* %9, align 4
  %93 = call i32 @device_printf(i32 %87, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %90, i32 %91, i32 %92)
  br label %94

94:                                               ; preds = %84, %81, %78
  %95 = load i32, i32* %8, align 4
  store i32 %95, i32* %4, align 4
  br label %96

96:                                               ; preds = %94, %48, %37, %35, %15
  %97 = load i32, i32* %4, align 4
  ret i32 %97
}

declare dso_local i32 @TWL_VREG_ASSERT_LOCKED(%struct.twl_vreg_softc*) #1

declare dso_local i32 @twl_vreg_disable_regulator(%struct.twl_vreg_softc*, %struct.twl_regulator_entry*) #1

declare dso_local i32 @twl_vreg_enable_regulator(%struct.twl_vreg_softc*, %struct.twl_regulator_entry*) #1

declare dso_local i32 @twl_vreg_millivolt_to_vsel(%struct.twl_vreg_softc*, %struct.twl_regulator_entry*, i32, i32*) #1

declare dso_local i32 @sx_xlocked(i32*) #1

declare dso_local i32 @TWL_VREG_LOCK_UPGRADE(%struct.twl_vreg_softc*) #1

declare dso_local i32 @twl_vreg_write_1(%struct.twl_vreg_softc*, %struct.twl_regulator_entry*, i32, i32) #1

declare dso_local i32 @TWL_VREG_LOCK_DOWNGRADE(%struct.twl_vreg_softc*) #1

declare dso_local i32 @device_printf(i32, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
