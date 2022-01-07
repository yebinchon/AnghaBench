; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/ti/twl/extr_twl_vreg.c_twl_vreg_read_regulator_voltage.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/ti/twl/extr_twl_vreg.c_twl_vreg_read_regulator_voltage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.twl_vreg_softc = type { i32, i32 }
%struct.twl_regulator_entry = type { i32*, i32, i32, i32 }

@TWL_VREG_VSEL = common dso_local global i32 0, align 4
@UNDF = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@twl_vreg_debug = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"%s : reading voltage is %dmV (vsel: 0x%x)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.twl_vreg_softc*, %struct.twl_regulator_entry*, i32*)* @twl_vreg_read_regulator_voltage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @twl_vreg_read_regulator_voltage(%struct.twl_vreg_softc* %0, %struct.twl_regulator_entry* %1, i32* %2) #0 {
  %4 = alloca %struct.twl_vreg_softc*, align 8
  %5 = alloca %struct.twl_regulator_entry*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.twl_vreg_softc* %0, %struct.twl_vreg_softc** %4, align 8
  store %struct.twl_regulator_entry* %1, %struct.twl_regulator_entry** %5, align 8
  store i32* %2, i32** %6, align 8
  store i32 0, i32* %8, align 4
  %11 = load %struct.twl_vreg_softc*, %struct.twl_vreg_softc** %4, align 8
  %12 = call i32 @TWL_VREG_ASSERT_LOCKED(%struct.twl_vreg_softc* %11)
  %13 = load %struct.twl_vreg_softc*, %struct.twl_vreg_softc** %4, align 8
  %14 = getelementptr inbounds %struct.twl_vreg_softc, %struct.twl_vreg_softc* %13, i32 0, i32 1
  %15 = call i32 @sx_xlocked(i32* %14)
  store i32 %15, i32* %9, align 4
  %16 = load i32, i32* %9, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %3
  %19 = load %struct.twl_vreg_softc*, %struct.twl_vreg_softc** %4, align 8
  %20 = call i32 @TWL_VREG_LOCK_UPGRADE(%struct.twl_vreg_softc* %19)
  br label %21

21:                                               ; preds = %18, %3
  %22 = load %struct.twl_vreg_softc*, %struct.twl_vreg_softc** %4, align 8
  %23 = load %struct.twl_regulator_entry*, %struct.twl_regulator_entry** %5, align 8
  %24 = call i32 @twl_vreg_is_regulator_enabled(%struct.twl_vreg_softc* %22, %struct.twl_regulator_entry* %23, i32* %8)
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* %7, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %21
  br label %83

28:                                               ; preds = %21
  %29 = load i32*, i32** %6, align 8
  store i32 0, i32* %29, align 4
  %30 = load i32, i32* %8, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %28
  br label %83

33:                                               ; preds = %28
  %34 = load %struct.twl_regulator_entry*, %struct.twl_regulator_entry** %5, align 8
  %35 = getelementptr inbounds %struct.twl_regulator_entry, %struct.twl_regulator_entry* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = icmp eq i32* %36, null
  br i1 %37, label %43, label %38

38:                                               ; preds = %33
  %39 = load %struct.twl_regulator_entry*, %struct.twl_regulator_entry** %5, align 8
  %40 = getelementptr inbounds %struct.twl_regulator_entry, %struct.twl_regulator_entry* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %48, label %43

43:                                               ; preds = %38, %33
  %44 = load %struct.twl_regulator_entry*, %struct.twl_regulator_entry** %5, align 8
  %45 = getelementptr inbounds %struct.twl_regulator_entry, %struct.twl_regulator_entry* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = load i32*, i32** %6, align 8
  store i32 %46, i32* %47, align 4
  br label %83

48:                                               ; preds = %38
  %49 = load %struct.twl_vreg_softc*, %struct.twl_vreg_softc** %4, align 8
  %50 = load %struct.twl_regulator_entry*, %struct.twl_regulator_entry** %5, align 8
  %51 = load i32, i32* @TWL_VREG_VSEL, align 4
  %52 = call i32 @twl_vreg_read_1(%struct.twl_vreg_softc* %49, %struct.twl_regulator_entry* %50, i32 %51, i32* %10)
  store i32 %52, i32* %7, align 4
  %53 = load i32, i32* %7, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %48
  br label %83

56:                                               ; preds = %48
  %57 = load %struct.twl_regulator_entry*, %struct.twl_regulator_entry** %5, align 8
  %58 = getelementptr inbounds %struct.twl_regulator_entry, %struct.twl_regulator_entry* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = sub nsw i32 %59, 1
  %61 = load i32, i32* %10, align 4
  %62 = and i32 %61, %60
  store i32 %62, i32* %10, align 4
  %63 = load %struct.twl_regulator_entry*, %struct.twl_regulator_entry** %5, align 8
  %64 = getelementptr inbounds %struct.twl_regulator_entry, %struct.twl_regulator_entry* %63, i32 0, i32 0
  %65 = load i32*, i32** %64, align 8
  %66 = load i32, i32* %10, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %65, i64 %67
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* @UNDF, align 4
  %71 = icmp eq i32 %69, %70
  br i1 %71, label %72, label %74

72:                                               ; preds = %56
  %73 = load i32, i32* @EINVAL, align 4
  store i32 %73, i32* %7, align 4
  br label %83

74:                                               ; preds = %56
  %75 = load %struct.twl_regulator_entry*, %struct.twl_regulator_entry** %5, align 8
  %76 = getelementptr inbounds %struct.twl_regulator_entry, %struct.twl_regulator_entry* %75, i32 0, i32 0
  %77 = load i32*, i32** %76, align 8
  %78 = load i32, i32* %10, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i32, i32* %77, i64 %79
  %81 = load i32, i32* %80, align 4
  %82 = load i32*, i32** %6, align 8
  store i32 %81, i32* %82, align 4
  br label %83

83:                                               ; preds = %74, %72, %55, %43, %32, %27
  %84 = load i32, i32* %9, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %89, label %86

86:                                               ; preds = %83
  %87 = load %struct.twl_vreg_softc*, %struct.twl_vreg_softc** %4, align 8
  %88 = call i32 @TWL_VREG_LOCK_DOWNGRADE(%struct.twl_vreg_softc* %87)
  br label %89

89:                                               ; preds = %86, %83
  %90 = load i32, i32* @twl_vreg_debug, align 4
  %91 = icmp sgt i32 %90, 1
  br i1 %91, label %92, label %106

92:                                               ; preds = %89
  %93 = load i32, i32* %7, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %106, label %95

95:                                               ; preds = %92
  %96 = load %struct.twl_vreg_softc*, %struct.twl_vreg_softc** %4, align 8
  %97 = getelementptr inbounds %struct.twl_vreg_softc, %struct.twl_vreg_softc* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.twl_regulator_entry*, %struct.twl_regulator_entry** %5, align 8
  %100 = getelementptr inbounds %struct.twl_regulator_entry, %struct.twl_regulator_entry* %99, i32 0, i32 3
  %101 = load i32, i32* %100, align 8
  %102 = load i32*, i32** %6, align 8
  %103 = load i32, i32* %102, align 4
  %104 = load i32, i32* %10, align 4
  %105 = call i32 @device_printf(i32 %98, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %101, i32 %103, i32 %104)
  br label %106

106:                                              ; preds = %95, %92, %89
  %107 = load i32, i32* %7, align 4
  ret i32 %107
}

declare dso_local i32 @TWL_VREG_ASSERT_LOCKED(%struct.twl_vreg_softc*) #1

declare dso_local i32 @sx_xlocked(i32*) #1

declare dso_local i32 @TWL_VREG_LOCK_UPGRADE(%struct.twl_vreg_softc*) #1

declare dso_local i32 @twl_vreg_is_regulator_enabled(%struct.twl_vreg_softc*, %struct.twl_regulator_entry*, i32*) #1

declare dso_local i32 @twl_vreg_read_1(%struct.twl_vreg_softc*, %struct.twl_regulator_entry*, i32, i32*) #1

declare dso_local i32 @TWL_VREG_LOCK_DOWNGRADE(%struct.twl_vreg_softc*) #1

declare dso_local i32 @device_printf(i32, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
