; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/ti/twl/extr_twl_vreg.c_twl_vreg_is_regulator_enabled.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/ti/twl/extr_twl_vreg.c_twl_vreg_is_regulator_enabled.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.twl_vreg_softc = type { i32, i32 }
%struct.twl_regulator_entry = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@TWL_VREG_GRP = common dso_local global i32 0, align 4
@TWL4030_P1_GRP = common dso_local global i32 0, align 4
@TWL6030_P1_GRP = common dso_local global i32 0, align 4
@TWL_VREG_STATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.twl_vreg_softc*, %struct.twl_regulator_entry*, i32*)* @twl_vreg_is_regulator_enabled to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @twl_vreg_is_regulator_enabled(%struct.twl_vreg_softc* %0, %struct.twl_regulator_entry* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.twl_vreg_softc*, align 8
  %6 = alloca %struct.twl_regulator_entry*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.twl_vreg_softc* %0, %struct.twl_vreg_softc** %5, align 8
  store %struct.twl_regulator_entry* %1, %struct.twl_regulator_entry** %6, align 8
  store i32* %2, i32** %7, align 8
  %12 = load i32*, i32** %7, align 8
  %13 = icmp eq i32* %12, null
  br i1 %13, label %14, label %16

14:                                               ; preds = %3
  %15 = load i32, i32* @EINVAL, align 4
  store i32 %15, i32* %4, align 4
  br label %106

16:                                               ; preds = %3
  %17 = load %struct.twl_vreg_softc*, %struct.twl_vreg_softc** %5, align 8
  %18 = call i32 @TWL_VREG_ASSERT_LOCKED(%struct.twl_vreg_softc* %17)
  %19 = load %struct.twl_vreg_softc*, %struct.twl_vreg_softc** %5, align 8
  %20 = getelementptr inbounds %struct.twl_vreg_softc, %struct.twl_vreg_softc* %19, i32 0, i32 1
  %21 = call i32 @sx_xlocked(i32* %20)
  store i32 %21, i32* %11, align 4
  %22 = load i32, i32* %11, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %16
  %25 = load %struct.twl_vreg_softc*, %struct.twl_vreg_softc** %5, align 8
  %26 = call i32 @TWL_VREG_LOCK_UPGRADE(%struct.twl_vreg_softc* %25)
  br label %27

27:                                               ; preds = %24, %16
  %28 = load %struct.twl_vreg_softc*, %struct.twl_vreg_softc** %5, align 8
  %29 = getelementptr inbounds %struct.twl_vreg_softc, %struct.twl_vreg_softc* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i64 @twl_is_4030(i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %46

33:                                               ; preds = %27
  %34 = load %struct.twl_vreg_softc*, %struct.twl_vreg_softc** %5, align 8
  %35 = load %struct.twl_regulator_entry*, %struct.twl_regulator_entry** %6, align 8
  %36 = load i32, i32* @TWL_VREG_GRP, align 4
  %37 = call i32 @twl_vreg_read_1(%struct.twl_vreg_softc* %34, %struct.twl_regulator_entry* %35, i32 %36, i32* %10)
  store i32 %37, i32* %8, align 4
  %38 = load i32, i32* %8, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %33
  br label %98

41:                                               ; preds = %33
  %42 = load i32, i32* %10, align 4
  %43 = load i32, i32* @TWL4030_P1_GRP, align 4
  %44 = and i32 %42, %43
  %45 = load i32*, i32** %7, align 8
  store i32 %44, i32* %45, align 4
  br label %97

46:                                               ; preds = %27
  %47 = load %struct.twl_vreg_softc*, %struct.twl_vreg_softc** %5, align 8
  %48 = getelementptr inbounds %struct.twl_vreg_softc, %struct.twl_vreg_softc* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i64 @twl_is_6030(i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %58, label %52

52:                                               ; preds = %46
  %53 = load %struct.twl_vreg_softc*, %struct.twl_vreg_softc** %5, align 8
  %54 = getelementptr inbounds %struct.twl_vreg_softc, %struct.twl_vreg_softc* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i64 @twl_is_6025(i32 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %94

58:                                               ; preds = %52, %46
  %59 = load %struct.twl_vreg_softc*, %struct.twl_vreg_softc** %5, align 8
  %60 = getelementptr inbounds %struct.twl_vreg_softc, %struct.twl_vreg_softc* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i64 @twl_is_6030(i32 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %80

64:                                               ; preds = %58
  %65 = load %struct.twl_vreg_softc*, %struct.twl_vreg_softc** %5, align 8
  %66 = load %struct.twl_regulator_entry*, %struct.twl_regulator_entry** %6, align 8
  %67 = load i32, i32* @TWL_VREG_GRP, align 4
  %68 = call i32 @twl_vreg_read_1(%struct.twl_vreg_softc* %65, %struct.twl_regulator_entry* %66, i32 %67, i32* %9)
  store i32 %68, i32* %8, align 4
  %69 = load i32, i32* %8, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %64
  br label %98

72:                                               ; preds = %64
  %73 = load i32, i32* %9, align 4
  %74 = load i32, i32* @TWL6030_P1_GRP, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %79, label %77

77:                                               ; preds = %72
  %78 = load i32*, i32** %7, align 8
  store i32 0, i32* %78, align 4
  br label %98

79:                                               ; preds = %72
  br label %80

80:                                               ; preds = %79, %58
  %81 = load %struct.twl_vreg_softc*, %struct.twl_vreg_softc** %5, align 8
  %82 = load %struct.twl_regulator_entry*, %struct.twl_regulator_entry** %6, align 8
  %83 = load i32, i32* @TWL_VREG_STATE, align 4
  %84 = call i32 @twl_vreg_read_1(%struct.twl_vreg_softc* %81, %struct.twl_regulator_entry* %82, i32 %83, i32* %10)
  store i32 %84, i32* %8, align 4
  %85 = load i32, i32* %8, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %80
  br label %98

88:                                               ; preds = %80
  %89 = load i32, i32* %10, align 4
  %90 = and i32 %89, 12
  %91 = icmp eq i32 %90, 4
  %92 = zext i1 %91 to i32
  %93 = load i32*, i32** %7, align 8
  store i32 %92, i32* %93, align 4
  br label %96

94:                                               ; preds = %52
  %95 = load i32, i32* @EINVAL, align 4
  store i32 %95, i32* %8, align 4
  br label %96

96:                                               ; preds = %94, %88
  br label %97

97:                                               ; preds = %96, %41
  br label %98

98:                                               ; preds = %97, %87, %77, %71, %40
  %99 = load i32, i32* %11, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %104, label %101

101:                                              ; preds = %98
  %102 = load %struct.twl_vreg_softc*, %struct.twl_vreg_softc** %5, align 8
  %103 = call i32 @TWL_VREG_LOCK_DOWNGRADE(%struct.twl_vreg_softc* %102)
  br label %104

104:                                              ; preds = %101, %98
  %105 = load i32, i32* %8, align 4
  store i32 %105, i32* %4, align 4
  br label %106

106:                                              ; preds = %104, %14
  %107 = load i32, i32* %4, align 4
  ret i32 %107
}

declare dso_local i32 @TWL_VREG_ASSERT_LOCKED(%struct.twl_vreg_softc*) #1

declare dso_local i32 @sx_xlocked(i32*) #1

declare dso_local i32 @TWL_VREG_LOCK_UPGRADE(%struct.twl_vreg_softc*) #1

declare dso_local i64 @twl_is_4030(i32) #1

declare dso_local i32 @twl_vreg_read_1(%struct.twl_vreg_softc*, %struct.twl_regulator_entry*, i32, i32*) #1

declare dso_local i64 @twl_is_6030(i32) #1

declare dso_local i64 @twl_is_6025(i32) #1

declare dso_local i32 @TWL_VREG_LOCK_DOWNGRADE(%struct.twl_vreg_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
