; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/nvidia/tegra124/extr_tegra124_clk_per.c_periph_set_mux.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/nvidia/tegra124/extr_tegra124_clk_per.c_periph_set_mux.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clknode = type { i32 }
%struct.periph_sc = type { i32, i32, i32 }

@DCF_HAVE_MUX = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@PERLCK_MUX_MASK = common dso_local global i32 0, align 4
@PERLCK_MUX_SHIFT = common dso_local global i32 0, align 4
@DCF_IS_MASK = common dso_local global i32 0, align 4
@DCF_IS_AUDIO = common dso_local global i32 0, align 4
@PERLCK_AMUX_DIS = common dso_local global i32 0, align 4
@PERLCK_AMUX_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clknode*, i32)* @periph_set_mux to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @periph_set_mux(%struct.clknode* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.clknode*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.periph_sc*, align 8
  %7 = alloca i32, align 4
  store %struct.clknode* %0, %struct.clknode** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.clknode*, %struct.clknode** %4, align 8
  %9 = call %struct.periph_sc* @clknode_get_softc(%struct.clknode* %8)
  store %struct.periph_sc* %9, %struct.periph_sc** %6, align 8
  %10 = load %struct.periph_sc*, %struct.periph_sc** %6, align 8
  %11 = getelementptr inbounds %struct.periph_sc, %struct.periph_sc* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @DCF_HAVE_MUX, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %18, label %16

16:                                               ; preds = %2
  %17 = load i32, i32* @ENXIO, align 4
  store i32 %17, i32* %3, align 4
  br label %88

18:                                               ; preds = %2
  %19 = load i32, i32* %5, align 4
  %20 = load %struct.periph_sc*, %struct.periph_sc** %6, align 8
  %21 = getelementptr inbounds %struct.periph_sc, %struct.periph_sc* %20, i32 0, i32 1
  store i32 %19, i32* %21, align 4
  %22 = load %struct.periph_sc*, %struct.periph_sc** %6, align 8
  %23 = call i32 @DEVICE_LOCK(%struct.periph_sc* %22)
  %24 = load %struct.periph_sc*, %struct.periph_sc** %6, align 8
  %25 = load %struct.periph_sc*, %struct.periph_sc** %6, align 8
  %26 = getelementptr inbounds %struct.periph_sc, %struct.periph_sc* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @RD4(%struct.periph_sc* %24, i32 %27, i32* %7)
  %29 = load i32, i32* @PERLCK_MUX_MASK, align 4
  %30 = load i32, i32* @PERLCK_MUX_SHIFT, align 4
  %31 = shl i32 %29, %30
  %32 = xor i32 %31, -1
  %33 = load i32, i32* %7, align 4
  %34 = and i32 %33, %32
  store i32 %34, i32* %7, align 4
  %35 = load %struct.periph_sc*, %struct.periph_sc** %6, align 8
  %36 = getelementptr inbounds %struct.periph_sc, %struct.periph_sc* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @DCF_IS_MASK, align 4
  %39 = and i32 %37, %38
  %40 = load i32, i32* @DCF_IS_AUDIO, align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %42, label %73

42:                                               ; preds = %18
  %43 = load i32, i32* @PERLCK_AMUX_DIS, align 4
  %44 = xor i32 %43, -1
  %45 = load i32, i32* %7, align 4
  %46 = and i32 %45, %44
  store i32 %46, i32* %7, align 4
  %47 = load i32, i32* @PERLCK_MUX_MASK, align 4
  %48 = load i32, i32* @PERLCK_AMUX_SHIFT, align 4
  %49 = shl i32 %47, %48
  %50 = xor i32 %49, -1
  %51 = load i32, i32* %7, align 4
  %52 = and i32 %51, %50
  store i32 %52, i32* %7, align 4
  %53 = load i32, i32* %5, align 4
  %54 = icmp sle i32 %53, 7
  br i1 %54, label %55, label %61

55:                                               ; preds = %42
  %56 = load i32, i32* %5, align 4
  %57 = load i32, i32* @PERLCK_MUX_SHIFT, align 4
  %58 = shl i32 %56, %57
  %59 = load i32, i32* %7, align 4
  %60 = or i32 %59, %58
  store i32 %60, i32* %7, align 4
  br label %72

61:                                               ; preds = %42
  %62 = load i32, i32* @PERLCK_MUX_SHIFT, align 4
  %63 = shl i32 7, %62
  %64 = load i32, i32* %7, align 4
  %65 = or i32 %64, %63
  store i32 %65, i32* %7, align 4
  %66 = load i32, i32* %5, align 4
  %67 = sub nsw i32 %66, 8
  %68 = load i32, i32* @PERLCK_AMUX_SHIFT, align 4
  %69 = shl i32 %67, %68
  %70 = load i32, i32* %7, align 4
  %71 = or i32 %70, %69
  store i32 %71, i32* %7, align 4
  br label %72

72:                                               ; preds = %61, %55
  br label %79

73:                                               ; preds = %18
  %74 = load i32, i32* %5, align 4
  %75 = load i32, i32* @PERLCK_MUX_SHIFT, align 4
  %76 = shl i32 %74, %75
  %77 = load i32, i32* %7, align 4
  %78 = or i32 %77, %76
  store i32 %78, i32* %7, align 4
  br label %79

79:                                               ; preds = %73, %72
  %80 = load %struct.periph_sc*, %struct.periph_sc** %6, align 8
  %81 = load %struct.periph_sc*, %struct.periph_sc** %6, align 8
  %82 = getelementptr inbounds %struct.periph_sc, %struct.periph_sc* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* %7, align 4
  %85 = call i32 @WR4(%struct.periph_sc* %80, i32 %83, i32 %84)
  %86 = load %struct.periph_sc*, %struct.periph_sc** %6, align 8
  %87 = call i32 @DEVICE_UNLOCK(%struct.periph_sc* %86)
  store i32 0, i32* %3, align 4
  br label %88

88:                                               ; preds = %79, %16
  %89 = load i32, i32* %3, align 4
  ret i32 %89
}

declare dso_local %struct.periph_sc* @clknode_get_softc(%struct.clknode*) #1

declare dso_local i32 @DEVICE_LOCK(%struct.periph_sc*) #1

declare dso_local i32 @RD4(%struct.periph_sc*, i32, i32*) #1

declare dso_local i32 @WR4(%struct.periph_sc*, i32, i32) #1

declare dso_local i32 @DEVICE_UNLOCK(%struct.periph_sc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
