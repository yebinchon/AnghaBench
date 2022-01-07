; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/nvidia/tegra124/extr_tegra124_clk_per.c_periph_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/nvidia/tegra124/extr_tegra124_clk_per.c_periph_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clknode = type { i32 }
%struct.periph_sc = type { i32, i32, i32, i32, i32 }

@DCF_HAVE_ENA = common dso_local global i32 0, align 4
@PERLCK_ENA_MASK = common dso_local global i32 0, align 4
@DCF_HAVE_MUX = common dso_local global i32 0, align 4
@PERLCK_MUX_SHIFT = common dso_local global i32 0, align 4
@PERLCK_MUX_MASK = common dso_local global i32 0, align 4
@DCF_HAVE_DIV = common dso_local global i32 0, align 4
@DCF_IS_MASK = common dso_local global i32 0, align 4
@DCF_IS_UART = common dso_local global i32 0, align 4
@PERLCK_UDIV_DIS = common dso_local global i32 0, align 4
@DCF_IS_AUDIO = common dso_local global i32 0, align 4
@PERLCK_AMUX_DIS = common dso_local global i32 0, align 4
@PERLCK_AMUX_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clknode*, i32)* @periph_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @periph_init(%struct.clknode* %0, i32 %1) #0 {
  %3 = alloca %struct.clknode*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.periph_sc*, align 8
  %6 = alloca i32, align 4
  store %struct.clknode* %0, %struct.clknode** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.clknode*, %struct.clknode** %3, align 8
  %8 = call %struct.periph_sc* @clknode_get_softc(%struct.clknode* %7)
  store %struct.periph_sc* %8, %struct.periph_sc** %5, align 8
  %9 = load %struct.periph_sc*, %struct.periph_sc** %5, align 8
  %10 = call i32 @DEVICE_LOCK(%struct.periph_sc* %9)
  %11 = load %struct.periph_sc*, %struct.periph_sc** %5, align 8
  %12 = getelementptr inbounds %struct.periph_sc, %struct.periph_sc* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @DCF_HAVE_ENA, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %25

17:                                               ; preds = %2
  %18 = load %struct.periph_sc*, %struct.periph_sc** %5, align 8
  %19 = load %struct.periph_sc*, %struct.periph_sc** %5, align 8
  %20 = getelementptr inbounds %struct.periph_sc, %struct.periph_sc* %19, i32 0, i32 4
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @PERLCK_ENA_MASK, align 4
  %23 = load i32, i32* @PERLCK_ENA_MASK, align 4
  %24 = call i32 @MD4(%struct.periph_sc* %18, i32 %21, i32 %22, i32 %23)
  br label %25

25:                                               ; preds = %17, %2
  %26 = load %struct.periph_sc*, %struct.periph_sc** %5, align 8
  %27 = load %struct.periph_sc*, %struct.periph_sc** %5, align 8
  %28 = getelementptr inbounds %struct.periph_sc, %struct.periph_sc* %27, i32 0, i32 4
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @RD4(%struct.periph_sc* %26, i32 %29, i32* %6)
  %31 = load %struct.periph_sc*, %struct.periph_sc** %5, align 8
  %32 = call i32 @DEVICE_UNLOCK(%struct.periph_sc* %31)
  %33 = load %struct.periph_sc*, %struct.periph_sc** %5, align 8
  %34 = getelementptr inbounds %struct.periph_sc, %struct.periph_sc* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @DCF_HAVE_MUX, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %47

39:                                               ; preds = %25
  %40 = load i32, i32* %6, align 4
  %41 = load i32, i32* @PERLCK_MUX_SHIFT, align 4
  %42 = ashr i32 %40, %41
  %43 = load i32, i32* @PERLCK_MUX_MASK, align 4
  %44 = and i32 %42, %43
  %45 = load %struct.periph_sc*, %struct.periph_sc** %5, align 8
  %46 = getelementptr inbounds %struct.periph_sc, %struct.periph_sc* %45, i32 0, i32 1
  store i32 %44, i32* %46, align 4
  br label %50

47:                                               ; preds = %25
  %48 = load %struct.periph_sc*, %struct.periph_sc** %5, align 8
  %49 = getelementptr inbounds %struct.periph_sc, %struct.periph_sc* %48, i32 0, i32 1
  store i32 0, i32* %49, align 4
  br label %50

50:                                               ; preds = %47, %39
  %51 = load %struct.periph_sc*, %struct.periph_sc** %5, align 8
  %52 = getelementptr inbounds %struct.periph_sc, %struct.periph_sc* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @DCF_HAVE_DIV, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %66

57:                                               ; preds = %50
  %58 = load i32, i32* %6, align 4
  %59 = load %struct.periph_sc*, %struct.periph_sc** %5, align 8
  %60 = getelementptr inbounds %struct.periph_sc, %struct.periph_sc* %59, i32 0, i32 3
  %61 = load i32, i32* %60, align 4
  %62 = and i32 %58, %61
  %63 = add nsw i32 %62, 2
  %64 = load %struct.periph_sc*, %struct.periph_sc** %5, align 8
  %65 = getelementptr inbounds %struct.periph_sc, %struct.periph_sc* %64, i32 0, i32 2
  store i32 %63, i32* %65, align 4
  br label %69

66:                                               ; preds = %50
  %67 = load %struct.periph_sc*, %struct.periph_sc** %5, align 8
  %68 = getelementptr inbounds %struct.periph_sc, %struct.periph_sc* %67, i32 0, i32 2
  store i32 1, i32* %68, align 4
  br label %69

69:                                               ; preds = %66, %57
  %70 = load %struct.periph_sc*, %struct.periph_sc** %5, align 8
  %71 = getelementptr inbounds %struct.periph_sc, %struct.periph_sc* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* @DCF_IS_MASK, align 4
  %74 = and i32 %72, %73
  %75 = load i32, i32* @DCF_IS_UART, align 4
  %76 = icmp eq i32 %74, %75
  br i1 %76, label %77, label %86

77:                                               ; preds = %69
  %78 = load i32, i32* %6, align 4
  %79 = load i32, i32* @PERLCK_UDIV_DIS, align 4
  %80 = and i32 %78, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %85, label %82

82:                                               ; preds = %77
  %83 = load %struct.periph_sc*, %struct.periph_sc** %5, align 8
  %84 = getelementptr inbounds %struct.periph_sc, %struct.periph_sc* %83, i32 0, i32 2
  store i32 2, i32* %84, align 4
  br label %85

85:                                               ; preds = %82, %77
  br label %86

86:                                               ; preds = %85, %69
  %87 = load %struct.periph_sc*, %struct.periph_sc** %5, align 8
  %88 = getelementptr inbounds %struct.periph_sc, %struct.periph_sc* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* @DCF_IS_MASK, align 4
  %91 = and i32 %89, %90
  %92 = load i32, i32* @DCF_IS_AUDIO, align 4
  %93 = icmp eq i32 %91, %92
  br i1 %93, label %94, label %114

94:                                               ; preds = %86
  %95 = load i32, i32* %6, align 4
  %96 = load i32, i32* @PERLCK_AMUX_DIS, align 4
  %97 = and i32 %95, %96
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %113, label %99

99:                                               ; preds = %94
  %100 = load %struct.periph_sc*, %struct.periph_sc** %5, align 8
  %101 = getelementptr inbounds %struct.periph_sc, %struct.periph_sc* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = icmp eq i32 %102, 7
  br i1 %103, label %104, label %113

104:                                              ; preds = %99
  %105 = load i32, i32* %6, align 4
  %106 = load i32, i32* @PERLCK_AMUX_SHIFT, align 4
  %107 = ashr i32 %105, %106
  %108 = load i32, i32* @PERLCK_MUX_MASK, align 4
  %109 = and i32 %107, %108
  %110 = add nsw i32 8, %109
  %111 = load %struct.periph_sc*, %struct.periph_sc** %5, align 8
  %112 = getelementptr inbounds %struct.periph_sc, %struct.periph_sc* %111, i32 0, i32 1
  store i32 %110, i32* %112, align 4
  br label %113

113:                                              ; preds = %104, %99, %94
  br label %114

114:                                              ; preds = %113, %86
  %115 = load %struct.clknode*, %struct.clknode** %3, align 8
  %116 = load %struct.periph_sc*, %struct.periph_sc** %5, align 8
  %117 = getelementptr inbounds %struct.periph_sc, %struct.periph_sc* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = call i32 @clknode_init_parent_idx(%struct.clknode* %115, i32 %118)
  ret i32 0
}

declare dso_local %struct.periph_sc* @clknode_get_softc(%struct.clknode*) #1

declare dso_local i32 @DEVICE_LOCK(%struct.periph_sc*) #1

declare dso_local i32 @MD4(%struct.periph_sc*, i32, i32, i32) #1

declare dso_local i32 @RD4(%struct.periph_sc*, i32, i32*) #1

declare dso_local i32 @DEVICE_UNLOCK(%struct.periph_sc*) #1

declare dso_local i32 @clknode_init_parent_idx(%struct.clknode*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
