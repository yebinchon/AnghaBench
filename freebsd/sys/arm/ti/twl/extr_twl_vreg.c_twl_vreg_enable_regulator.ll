; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/ti/twl/extr_twl_vreg.c_twl_vreg_enable_regulator.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/ti/twl/extr_twl_vreg.c_twl_vreg_enable_regulator.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.twl_vreg_softc = type { i32, i32 }
%struct.twl_regulator_entry = type { i32 }

@TWL_VREG_GRP = common dso_local global i32 0, align 4
@TWL4030_P1_GRP = common dso_local global i32 0, align 4
@TWL6030_P1_GRP = common dso_local global i32 0, align 4
@TWL_VREG_STATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.twl_vreg_softc*, %struct.twl_regulator_entry*)* @twl_vreg_enable_regulator to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @twl_vreg_enable_regulator(%struct.twl_vreg_softc* %0, %struct.twl_regulator_entry* %1) #0 {
  %3 = alloca %struct.twl_vreg_softc*, align 8
  %4 = alloca %struct.twl_regulator_entry*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.twl_vreg_softc* %0, %struct.twl_vreg_softc** %3, align 8
  store %struct.twl_regulator_entry* %1, %struct.twl_regulator_entry** %4, align 8
  %8 = load %struct.twl_vreg_softc*, %struct.twl_vreg_softc** %3, align 8
  %9 = call i32 @TWL_VREG_ASSERT_LOCKED(%struct.twl_vreg_softc* %8)
  %10 = load %struct.twl_vreg_softc*, %struct.twl_vreg_softc** %3, align 8
  %11 = getelementptr inbounds %struct.twl_vreg_softc, %struct.twl_vreg_softc* %10, i32 0, i32 1
  %12 = call i32 @sx_xlocked(i32* %11)
  store i32 %12, i32* %7, align 4
  %13 = load i32, i32* %7, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %2
  %16 = load %struct.twl_vreg_softc*, %struct.twl_vreg_softc** %3, align 8
  %17 = call i32 @TWL_VREG_LOCK_UPGRADE(%struct.twl_vreg_softc* %16)
  br label %18

18:                                               ; preds = %15, %2
  %19 = load %struct.twl_vreg_softc*, %struct.twl_vreg_softc** %3, align 8
  %20 = load %struct.twl_regulator_entry*, %struct.twl_regulator_entry** %4, align 8
  %21 = load i32, i32* @TWL_VREG_GRP, align 4
  %22 = call i32 @twl_vreg_read_1(%struct.twl_vreg_softc* %19, %struct.twl_regulator_entry* %20, i32 %21, i32* %6)
  store i32 %22, i32* %5, align 4
  %23 = load i32, i32* %5, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %18
  br label %87

26:                                               ; preds = %18
  %27 = load %struct.twl_vreg_softc*, %struct.twl_vreg_softc** %3, align 8
  %28 = getelementptr inbounds %struct.twl_vreg_softc, %struct.twl_vreg_softc* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i64 @twl_is_4030(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %41

32:                                               ; preds = %26
  %33 = load i32, i32* @TWL4030_P1_GRP, align 4
  %34 = load i32, i32* %6, align 4
  %35 = or i32 %34, %33
  store i32 %35, i32* %6, align 4
  %36 = load %struct.twl_vreg_softc*, %struct.twl_vreg_softc** %3, align 8
  %37 = load %struct.twl_regulator_entry*, %struct.twl_regulator_entry** %4, align 8
  %38 = load i32, i32* @TWL_VREG_GRP, align 4
  %39 = load i32, i32* %6, align 4
  %40 = call i32 @twl_vreg_write_1(%struct.twl_vreg_softc* %36, %struct.twl_regulator_entry* %37, i32 %38, i32 %39)
  store i32 %40, i32* %5, align 4
  br label %86

41:                                               ; preds = %26
  %42 = load %struct.twl_vreg_softc*, %struct.twl_vreg_softc** %3, align 8
  %43 = getelementptr inbounds %struct.twl_vreg_softc, %struct.twl_vreg_softc* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i64 @twl_is_6030(i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %53, label %47

47:                                               ; preds = %41
  %48 = load %struct.twl_vreg_softc*, %struct.twl_vreg_softc** %3, align 8
  %49 = getelementptr inbounds %struct.twl_vreg_softc, %struct.twl_vreg_softc* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i64 @twl_is_6025(i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %85

53:                                               ; preds = %47, %41
  %54 = load %struct.twl_vreg_softc*, %struct.twl_vreg_softc** %3, align 8
  %55 = getelementptr inbounds %struct.twl_vreg_softc, %struct.twl_vreg_softc* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i64 @twl_is_6030(i32 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %77

59:                                               ; preds = %53
  %60 = load i32, i32* %6, align 4
  %61 = load i32, i32* @TWL6030_P1_GRP, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %77, label %64

64:                                               ; preds = %59
  %65 = load i32, i32* @TWL6030_P1_GRP, align 4
  %66 = load i32, i32* %6, align 4
  %67 = or i32 %66, %65
  store i32 %67, i32* %6, align 4
  %68 = load %struct.twl_vreg_softc*, %struct.twl_vreg_softc** %3, align 8
  %69 = load %struct.twl_regulator_entry*, %struct.twl_regulator_entry** %4, align 8
  %70 = load i32, i32* @TWL_VREG_GRP, align 4
  %71 = load i32, i32* %6, align 4
  %72 = call i32 @twl_vreg_write_1(%struct.twl_vreg_softc* %68, %struct.twl_regulator_entry* %69, i32 %70, i32 %71)
  store i32 %72, i32* %5, align 4
  %73 = load i32, i32* %5, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %64
  br label %87

76:                                               ; preds = %64
  br label %77

77:                                               ; preds = %76, %59, %53
  %78 = load %struct.twl_vreg_softc*, %struct.twl_vreg_softc** %3, align 8
  %79 = load %struct.twl_regulator_entry*, %struct.twl_regulator_entry** %4, align 8
  %80 = load i32, i32* @TWL_VREG_STATE, align 4
  %81 = load i32, i32* %6, align 4
  %82 = shl i32 %81, 5
  %83 = or i32 %82, 1
  %84 = call i32 @twl_vreg_write_1(%struct.twl_vreg_softc* %78, %struct.twl_regulator_entry* %79, i32 %80, i32 %83)
  store i32 %84, i32* %5, align 4
  br label %85

85:                                               ; preds = %77, %47
  br label %86

86:                                               ; preds = %85, %32
  br label %87

87:                                               ; preds = %86, %75, %25
  %88 = load i32, i32* %7, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %93, label %90

90:                                               ; preds = %87
  %91 = load %struct.twl_vreg_softc*, %struct.twl_vreg_softc** %3, align 8
  %92 = call i32 @TWL_VREG_LOCK_DOWNGRADE(%struct.twl_vreg_softc* %91)
  br label %93

93:                                               ; preds = %90, %87
  %94 = load i32, i32* %5, align 4
  ret i32 %94
}

declare dso_local i32 @TWL_VREG_ASSERT_LOCKED(%struct.twl_vreg_softc*) #1

declare dso_local i32 @sx_xlocked(i32*) #1

declare dso_local i32 @TWL_VREG_LOCK_UPGRADE(%struct.twl_vreg_softc*) #1

declare dso_local i32 @twl_vreg_read_1(%struct.twl_vreg_softc*, %struct.twl_regulator_entry*, i32, i32*) #1

declare dso_local i64 @twl_is_4030(i32) #1

declare dso_local i32 @twl_vreg_write_1(%struct.twl_vreg_softc*, %struct.twl_regulator_entry*, i32, i32) #1

declare dso_local i64 @twl_is_6030(i32) #1

declare dso_local i64 @twl_is_6025(i32) #1

declare dso_local i32 @TWL_VREG_LOCK_DOWNGRADE(%struct.twl_vreg_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
