; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/ti/twl/extr_twl_vreg.c_twl_vreg_disable_regulator.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/ti/twl/extr_twl_vreg.c_twl_vreg_disable_regulator.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.twl_vreg_softc = type { i32, i32 }
%struct.twl_regulator_entry = type { i32 }

@TWL_VREG_GRP = common dso_local global i32 0, align 4
@TWL4030_P1_GRP = common dso_local global i32 0, align 4
@TWL4030_P2_GRP = common dso_local global i32 0, align 4
@TWL4030_P3_GRP = common dso_local global i32 0, align 4
@TWL6030_P1_GRP = common dso_local global i32 0, align 4
@TWL6030_P2_GRP = common dso_local global i32 0, align 4
@TWL6030_P3_GRP = common dso_local global i32 0, align 4
@TWL_VREG_STATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.twl_vreg_softc*, %struct.twl_regulator_entry*)* @twl_vreg_disable_regulator to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @twl_vreg_disable_regulator(%struct.twl_vreg_softc* %0, %struct.twl_regulator_entry* %1) #0 {
  %3 = alloca %struct.twl_vreg_softc*, align 8
  %4 = alloca %struct.twl_regulator_entry*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.twl_vreg_softc* %0, %struct.twl_vreg_softc** %3, align 8
  store %struct.twl_regulator_entry* %1, %struct.twl_regulator_entry** %4, align 8
  store i32 0, i32* %5, align 4
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
  %20 = getelementptr inbounds %struct.twl_vreg_softc, %struct.twl_vreg_softc* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i64 @twl_is_4030(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %46

24:                                               ; preds = %18
  %25 = load %struct.twl_vreg_softc*, %struct.twl_vreg_softc** %3, align 8
  %26 = load %struct.twl_regulator_entry*, %struct.twl_regulator_entry** %4, align 8
  %27 = load i32, i32* @TWL_VREG_GRP, align 4
  %28 = call i32 @twl_vreg_read_1(%struct.twl_vreg_softc* %25, %struct.twl_regulator_entry* %26, i32 %27, i32* %6)
  store i32 %28, i32* %5, align 4
  %29 = load i32, i32* %5, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %24
  br label %80

32:                                               ; preds = %24
  %33 = load i32, i32* @TWL4030_P1_GRP, align 4
  %34 = load i32, i32* @TWL4030_P2_GRP, align 4
  %35 = or i32 %33, %34
  %36 = load i32, i32* @TWL4030_P3_GRP, align 4
  %37 = or i32 %35, %36
  %38 = xor i32 %37, -1
  %39 = load i32, i32* %6, align 4
  %40 = and i32 %39, %38
  store i32 %40, i32* %6, align 4
  %41 = load %struct.twl_vreg_softc*, %struct.twl_vreg_softc** %3, align 8
  %42 = load %struct.twl_regulator_entry*, %struct.twl_regulator_entry** %4, align 8
  %43 = load i32, i32* @TWL_VREG_GRP, align 4
  %44 = load i32, i32* %6, align 4
  %45 = call i32 @twl_vreg_write_1(%struct.twl_vreg_softc* %41, %struct.twl_regulator_entry* %42, i32 %43, i32 %44)
  store i32 %45, i32* %5, align 4
  br label %79

46:                                               ; preds = %18
  %47 = load %struct.twl_vreg_softc*, %struct.twl_vreg_softc** %3, align 8
  %48 = getelementptr inbounds %struct.twl_vreg_softc, %struct.twl_vreg_softc* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i64 @twl_is_6030(i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %58, label %52

52:                                               ; preds = %46
  %53 = load %struct.twl_vreg_softc*, %struct.twl_vreg_softc** %3, align 8
  %54 = getelementptr inbounds %struct.twl_vreg_softc, %struct.twl_vreg_softc* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i64 @twl_is_6025(i32 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %78

58:                                               ; preds = %52, %46
  %59 = load %struct.twl_vreg_softc*, %struct.twl_vreg_softc** %3, align 8
  %60 = getelementptr inbounds %struct.twl_vreg_softc, %struct.twl_vreg_softc* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i64 @twl_is_6030(i32 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %70

64:                                               ; preds = %58
  %65 = load i32, i32* @TWL6030_P1_GRP, align 4
  %66 = load i32, i32* @TWL6030_P2_GRP, align 4
  %67 = or i32 %65, %66
  %68 = load i32, i32* @TWL6030_P3_GRP, align 4
  %69 = or i32 %67, %68
  store i32 %69, i32* %6, align 4
  br label %71

70:                                               ; preds = %58
  store i32 0, i32* %6, align 4
  br label %71

71:                                               ; preds = %70, %64
  %72 = load %struct.twl_vreg_softc*, %struct.twl_vreg_softc** %3, align 8
  %73 = load %struct.twl_regulator_entry*, %struct.twl_regulator_entry** %4, align 8
  %74 = load i32, i32* @TWL_VREG_STATE, align 4
  %75 = load i32, i32* %6, align 4
  %76 = shl i32 %75, 5
  %77 = call i32 @twl_vreg_write_1(%struct.twl_vreg_softc* %72, %struct.twl_regulator_entry* %73, i32 %74, i32 %76)
  store i32 %77, i32* %5, align 4
  br label %78

78:                                               ; preds = %71, %52
  br label %79

79:                                               ; preds = %78, %32
  br label %80

80:                                               ; preds = %79, %31
  %81 = load i32, i32* %7, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %86, label %83

83:                                               ; preds = %80
  %84 = load %struct.twl_vreg_softc*, %struct.twl_vreg_softc** %3, align 8
  %85 = call i32 @TWL_VREG_LOCK_DOWNGRADE(%struct.twl_vreg_softc* %84)
  br label %86

86:                                               ; preds = %83, %80
  %87 = load i32, i32* %5, align 4
  ret i32 %87
}

declare dso_local i32 @TWL_VREG_ASSERT_LOCKED(%struct.twl_vreg_softc*) #1

declare dso_local i32 @sx_xlocked(i32*) #1

declare dso_local i32 @TWL_VREG_LOCK_UPGRADE(%struct.twl_vreg_softc*) #1

declare dso_local i64 @twl_is_4030(i32) #1

declare dso_local i32 @twl_vreg_read_1(%struct.twl_vreg_softc*, %struct.twl_regulator_entry*, i32, i32*) #1

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
