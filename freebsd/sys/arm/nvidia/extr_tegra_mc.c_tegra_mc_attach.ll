; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/nvidia/extr_tegra_mc.c_tegra_mc_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/nvidia/extr_tegra_mc.c_tegra_mc_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra_mc_softc = type { i32*, i32*, i32*, i32*, i32 }

@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@RF_ACTIVE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"Cannot map registers.\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@SYS_RES_IRQ = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"Cannot allocate interrupt.\0A\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"mc\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"Cannot get mc clock: %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"Cannot enable clock: %d\0A\00", align 1
@INTR_TYPE_MISC = common dso_local global i32 0, align 4
@INTR_MPSAFE = common dso_local global i32 0, align 4
@tegra_mc_intr = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [25 x i8] c"Cannot setup interrupt.\0A\00", align 1
@MC_INTMASK = common dso_local global i32 0, align 4
@MC_INT_INT_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @tegra_mc_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tegra_mc_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.tegra_mc_softc*, align 8
  store i32 %0, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = call %struct.tegra_mc_softc* @device_get_softc(i32 %7)
  store %struct.tegra_mc_softc* %8, %struct.tegra_mc_softc** %6, align 8
  %9 = load i32, i32* %3, align 4
  %10 = load %struct.tegra_mc_softc*, %struct.tegra_mc_softc** %6, align 8
  %11 = getelementptr inbounds %struct.tegra_mc_softc, %struct.tegra_mc_softc* %10, i32 0, i32 4
  store i32 %9, i32* %11, align 8
  %12 = load %struct.tegra_mc_softc*, %struct.tegra_mc_softc** %6, align 8
  %13 = call i32 @LOCK_INIT(%struct.tegra_mc_softc* %12)
  store i32 0, i32* %5, align 4
  %14 = load i32, i32* %3, align 4
  %15 = load i32, i32* @SYS_RES_MEMORY, align 4
  %16 = load i32, i32* @RF_ACTIVE, align 4
  %17 = call i8* @bus_alloc_resource_any(i32 %14, i32 %15, i32* %5, i32 %16)
  %18 = bitcast i8* %17 to i32*
  %19 = load %struct.tegra_mc_softc*, %struct.tegra_mc_softc** %6, align 8
  %20 = getelementptr inbounds %struct.tegra_mc_softc, %struct.tegra_mc_softc* %19, i32 0, i32 0
  store i32* %18, i32** %20, align 8
  %21 = load %struct.tegra_mc_softc*, %struct.tegra_mc_softc** %6, align 8
  %22 = getelementptr inbounds %struct.tegra_mc_softc, %struct.tegra_mc_softc* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = icmp eq i32* %23, null
  br i1 %24, label %25, label %29

25:                                               ; preds = %1
  %26 = load i32, i32* %3, align 4
  %27 = call i32 (i32, i8*, ...) @device_printf(i32 %26, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %28 = load i32, i32* @ENXIO, align 4
  store i32 %28, i32* %4, align 4
  br label %94

29:                                               ; preds = %1
  store i32 0, i32* %5, align 4
  %30 = load i32, i32* %3, align 4
  %31 = load i32, i32* @SYS_RES_IRQ, align 4
  %32 = load i32, i32* @RF_ACTIVE, align 4
  %33 = call i8* @bus_alloc_resource_any(i32 %30, i32 %31, i32* %5, i32 %32)
  %34 = bitcast i8* %33 to i32*
  %35 = load %struct.tegra_mc_softc*, %struct.tegra_mc_softc** %6, align 8
  %36 = getelementptr inbounds %struct.tegra_mc_softc, %struct.tegra_mc_softc* %35, i32 0, i32 1
  store i32* %34, i32** %36, align 8
  %37 = load %struct.tegra_mc_softc*, %struct.tegra_mc_softc** %6, align 8
  %38 = getelementptr inbounds %struct.tegra_mc_softc, %struct.tegra_mc_softc* %37, i32 0, i32 1
  %39 = load i32*, i32** %38, align 8
  %40 = icmp eq i32* %39, null
  br i1 %40, label %41, label %45

41:                                               ; preds = %29
  %42 = load i32, i32* %3, align 4
  %43 = call i32 (i32, i8*, ...) @device_printf(i32 %42, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %44 = load i32, i32* @ENXIO, align 4
  store i32 %44, i32* %4, align 4
  br label %94

45:                                               ; preds = %29
  %46 = load i32, i32* %3, align 4
  %47 = load %struct.tegra_mc_softc*, %struct.tegra_mc_softc** %6, align 8
  %48 = getelementptr inbounds %struct.tegra_mc_softc, %struct.tegra_mc_softc* %47, i32 0, i32 3
  %49 = call i32 @clk_get_by_ofw_name(i32 %46, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32** %48)
  store i32 %49, i32* %4, align 4
  %50 = load i32, i32* %4, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %45
  %53 = load i32, i32* %3, align 4
  %54 = load i32, i32* %4, align 4
  %55 = call i32 (i32, i8*, ...) @device_printf(i32 %53, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i32 %54)
  br label %94

56:                                               ; preds = %45
  %57 = load %struct.tegra_mc_softc*, %struct.tegra_mc_softc** %6, align 8
  %58 = getelementptr inbounds %struct.tegra_mc_softc, %struct.tegra_mc_softc* %57, i32 0, i32 3
  %59 = load i32*, i32** %58, align 8
  %60 = call i32 @clk_enable(i32* %59)
  store i32 %60, i32* %4, align 4
  %61 = load i32, i32* %4, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %67

63:                                               ; preds = %56
  %64 = load i32, i32* %3, align 4
  %65 = load i32, i32* %4, align 4
  %66 = call i32 (i32, i8*, ...) @device_printf(i32 %64, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0), i32 %65)
  br label %94

67:                                               ; preds = %56
  %68 = load %struct.tegra_mc_softc*, %struct.tegra_mc_softc** %6, align 8
  %69 = call i32 @tegra_mc_init_hw(%struct.tegra_mc_softc* %68)
  %70 = load i32, i32* %3, align 4
  %71 = load %struct.tegra_mc_softc*, %struct.tegra_mc_softc** %6, align 8
  %72 = getelementptr inbounds %struct.tegra_mc_softc, %struct.tegra_mc_softc* %71, i32 0, i32 1
  %73 = load i32*, i32** %72, align 8
  %74 = load i32, i32* @INTR_TYPE_MISC, align 4
  %75 = load i32, i32* @INTR_MPSAFE, align 4
  %76 = or i32 %74, %75
  %77 = load i32, i32* @tegra_mc_intr, align 4
  %78 = load %struct.tegra_mc_softc*, %struct.tegra_mc_softc** %6, align 8
  %79 = load %struct.tegra_mc_softc*, %struct.tegra_mc_softc** %6, align 8
  %80 = getelementptr inbounds %struct.tegra_mc_softc, %struct.tegra_mc_softc* %79, i32 0, i32 2
  %81 = call i32 @bus_setup_intr(i32 %70, i32* %73, i32 %76, i32* null, i32 %77, %struct.tegra_mc_softc* %78, i32** %80)
  store i32 %81, i32* %4, align 4
  %82 = load i32, i32* %4, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %87

84:                                               ; preds = %67
  %85 = load i32, i32* %3, align 4
  %86 = call i32 (i32, i8*, ...) @device_printf(i32 %85, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0))
  br label %94

87:                                               ; preds = %67
  %88 = load %struct.tegra_mc_softc*, %struct.tegra_mc_softc** %6, align 8
  %89 = load i32, i32* @MC_INTMASK, align 4
  %90 = load i32, i32* @MC_INT_INT_MASK, align 4
  %91 = call i32 @WR4(%struct.tegra_mc_softc* %88, i32 %89, i32 %90)
  %92 = load i32, i32* %3, align 4
  %93 = call i32 @bus_generic_attach(i32 %92)
  store i32 %93, i32* %2, align 4
  br label %146

94:                                               ; preds = %84, %63, %52, %41, %25
  %95 = load %struct.tegra_mc_softc*, %struct.tegra_mc_softc** %6, align 8
  %96 = getelementptr inbounds %struct.tegra_mc_softc, %struct.tegra_mc_softc* %95, i32 0, i32 3
  %97 = load i32*, i32** %96, align 8
  %98 = icmp ne i32* %97, null
  br i1 %98, label %99, label %104

99:                                               ; preds = %94
  %100 = load %struct.tegra_mc_softc*, %struct.tegra_mc_softc** %6, align 8
  %101 = getelementptr inbounds %struct.tegra_mc_softc, %struct.tegra_mc_softc* %100, i32 0, i32 3
  %102 = load i32*, i32** %101, align 8
  %103 = call i32 @clk_release(i32* %102)
  br label %104

104:                                              ; preds = %99, %94
  %105 = load %struct.tegra_mc_softc*, %struct.tegra_mc_softc** %6, align 8
  %106 = getelementptr inbounds %struct.tegra_mc_softc, %struct.tegra_mc_softc* %105, i32 0, i32 2
  %107 = load i32*, i32** %106, align 8
  %108 = icmp ne i32* %107, null
  br i1 %108, label %109, label %118

109:                                              ; preds = %104
  %110 = load i32, i32* %3, align 4
  %111 = load %struct.tegra_mc_softc*, %struct.tegra_mc_softc** %6, align 8
  %112 = getelementptr inbounds %struct.tegra_mc_softc, %struct.tegra_mc_softc* %111, i32 0, i32 1
  %113 = load i32*, i32** %112, align 8
  %114 = load %struct.tegra_mc_softc*, %struct.tegra_mc_softc** %6, align 8
  %115 = getelementptr inbounds %struct.tegra_mc_softc, %struct.tegra_mc_softc* %114, i32 0, i32 2
  %116 = load i32*, i32** %115, align 8
  %117 = call i32 @bus_teardown_intr(i32 %110, i32* %113, i32* %116)
  br label %118

118:                                              ; preds = %109, %104
  %119 = load %struct.tegra_mc_softc*, %struct.tegra_mc_softc** %6, align 8
  %120 = getelementptr inbounds %struct.tegra_mc_softc, %struct.tegra_mc_softc* %119, i32 0, i32 1
  %121 = load i32*, i32** %120, align 8
  %122 = icmp ne i32* %121, null
  br i1 %122, label %123, label %130

123:                                              ; preds = %118
  %124 = load i32, i32* %3, align 4
  %125 = load i32, i32* @SYS_RES_IRQ, align 4
  %126 = load %struct.tegra_mc_softc*, %struct.tegra_mc_softc** %6, align 8
  %127 = getelementptr inbounds %struct.tegra_mc_softc, %struct.tegra_mc_softc* %126, i32 0, i32 1
  %128 = load i32*, i32** %127, align 8
  %129 = call i32 @bus_release_resource(i32 %124, i32 %125, i32 0, i32* %128)
  br label %130

130:                                              ; preds = %123, %118
  %131 = load %struct.tegra_mc_softc*, %struct.tegra_mc_softc** %6, align 8
  %132 = getelementptr inbounds %struct.tegra_mc_softc, %struct.tegra_mc_softc* %131, i32 0, i32 0
  %133 = load i32*, i32** %132, align 8
  %134 = icmp ne i32* %133, null
  br i1 %134, label %135, label %142

135:                                              ; preds = %130
  %136 = load i32, i32* %3, align 4
  %137 = load i32, i32* @SYS_RES_MEMORY, align 4
  %138 = load %struct.tegra_mc_softc*, %struct.tegra_mc_softc** %6, align 8
  %139 = getelementptr inbounds %struct.tegra_mc_softc, %struct.tegra_mc_softc* %138, i32 0, i32 0
  %140 = load i32*, i32** %139, align 8
  %141 = call i32 @bus_release_resource(i32 %136, i32 %137, i32 0, i32* %140)
  br label %142

142:                                              ; preds = %135, %130
  %143 = load %struct.tegra_mc_softc*, %struct.tegra_mc_softc** %6, align 8
  %144 = call i32 @LOCK_DESTROY(%struct.tegra_mc_softc* %143)
  %145 = load i32, i32* %4, align 4
  store i32 %145, i32* %2, align 4
  br label %146

146:                                              ; preds = %142, %87
  %147 = load i32, i32* %2, align 4
  ret i32 %147
}

declare dso_local %struct.tegra_mc_softc* @device_get_softc(i32) #1

declare dso_local i32 @LOCK_INIT(%struct.tegra_mc_softc*) #1

declare dso_local i8* @bus_alloc_resource_any(i32, i32, i32*, i32) #1

declare dso_local i32 @device_printf(i32, i8*, ...) #1

declare dso_local i32 @clk_get_by_ofw_name(i32, i32, i8*, i32**) #1

declare dso_local i32 @clk_enable(i32*) #1

declare dso_local i32 @tegra_mc_init_hw(%struct.tegra_mc_softc*) #1

declare dso_local i32 @bus_setup_intr(i32, i32*, i32, i32*, i32, %struct.tegra_mc_softc*, i32**) #1

declare dso_local i32 @WR4(%struct.tegra_mc_softc*, i32, i32) #1

declare dso_local i32 @bus_generic_attach(i32) #1

declare dso_local i32 @clk_release(i32*) #1

declare dso_local i32 @bus_teardown_intr(i32, i32*, i32*) #1

declare dso_local i32 @bus_release_resource(i32, i32, i32, i32*) #1

declare dso_local i32 @LOCK_DESTROY(%struct.tegra_mc_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
