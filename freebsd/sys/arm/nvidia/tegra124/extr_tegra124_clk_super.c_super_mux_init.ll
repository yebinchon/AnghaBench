; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/nvidia/tegra124/extr_tegra124_clk_super.c_super_mux_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/nvidia/tegra124/extr_tegra124_clk_super.c_super_mux_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clknode = type { i32 }
%struct.super_mux_sc = type { i32, i32, i32, i32, i32 }

@SUPER_MUX_STATE_RUN = common dso_local global i32 0, align 4
@SUPER_MUX_STATE_IDLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Unexpected super mux state: %u\00", align 1
@SUPER_MUX_MUX_WIDTH = common dso_local global i32 0, align 4
@SMF_HAVE_DIVIDER_2 = common dso_local global i32 0, align 4
@SUPER_MUX_LP_DIV2_BYPASS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clknode*, i32)* @super_mux_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @super_mux_init(%struct.clknode* %0, i32 %1) #0 {
  %3 = alloca %struct.clknode*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.super_mux_sc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.clknode* %0, %struct.clknode** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.clknode*, %struct.clknode** %3, align 8
  %10 = call %struct.super_mux_sc* @clknode_get_softc(%struct.clknode* %9)
  store %struct.super_mux_sc* %10, %struct.super_mux_sc** %5, align 8
  %11 = load %struct.super_mux_sc*, %struct.super_mux_sc** %5, align 8
  %12 = call i32 @DEVICE_LOCK(%struct.super_mux_sc* %11)
  %13 = load %struct.super_mux_sc*, %struct.super_mux_sc** %5, align 8
  %14 = load %struct.super_mux_sc*, %struct.super_mux_sc** %5, align 8
  %15 = getelementptr inbounds %struct.super_mux_sc, %struct.super_mux_sc* %14, i32 0, i32 4
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @RD4(%struct.super_mux_sc* %13, i32 %16, i32* %6)
  %18 = load %struct.super_mux_sc*, %struct.super_mux_sc** %5, align 8
  %19 = call i32 @DEVICE_UNLOCK(%struct.super_mux_sc* %18)
  %20 = load i32, i32* %6, align 4
  %21 = call i32 @super_mux_get_state(i32 %20)
  store i32 %21, i32* %8, align 4
  %22 = load i32, i32* %8, align 4
  %23 = load i32, i32* @SUPER_MUX_STATE_RUN, align 4
  %24 = icmp ne i32 %22, %23
  br i1 %24, label %25, label %32

25:                                               ; preds = %2
  %26 = load i32, i32* %8, align 4
  %27 = load i32, i32* @SUPER_MUX_STATE_IDLE, align 4
  %28 = icmp ne i32 %26, %27
  br i1 %28, label %29, label %32

29:                                               ; preds = %25
  %30 = load i32, i32* %8, align 4
  %31 = call i32 @panic(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %30)
  br label %32

32:                                               ; preds = %29, %25, %2
  %33 = load i32, i32* %8, align 4
  %34 = load i32, i32* @SUPER_MUX_MUX_WIDTH, align 4
  %35 = mul nsw i32 %33, %34
  store i32 %35, i32* %7, align 4
  %36 = load i32, i32* %6, align 4
  %37 = load i32, i32* %7, align 4
  %38 = ashr i32 %36, %37
  %39 = load i32, i32* @SUPER_MUX_MUX_WIDTH, align 4
  %40 = shl i32 1, %39
  %41 = sub nsw i32 %40, 1
  %42 = and i32 %38, %41
  %43 = load %struct.super_mux_sc*, %struct.super_mux_sc** %5, align 8
  %44 = getelementptr inbounds %struct.super_mux_sc, %struct.super_mux_sc* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 4
  %45 = load %struct.super_mux_sc*, %struct.super_mux_sc** %5, align 8
  %46 = getelementptr inbounds %struct.super_mux_sc, %struct.super_mux_sc* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @SMF_HAVE_DIVIDER_2, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %71

51:                                               ; preds = %32
  %52 = load i32, i32* %6, align 4
  %53 = load i32, i32* @SUPER_MUX_LP_DIV2_BYPASS, align 4
  %54 = and i32 %52, %53
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %70

56:                                               ; preds = %51
  %57 = load %struct.super_mux_sc*, %struct.super_mux_sc** %5, align 8
  %58 = getelementptr inbounds %struct.super_mux_sc, %struct.super_mux_sc* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.super_mux_sc*, %struct.super_mux_sc** %5, align 8
  %61 = getelementptr inbounds %struct.super_mux_sc, %struct.super_mux_sc* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  %63 = icmp eq i32 %59, %62
  br i1 %63, label %64, label %70

64:                                               ; preds = %56
  %65 = load %struct.super_mux_sc*, %struct.super_mux_sc** %5, align 8
  %66 = getelementptr inbounds %struct.super_mux_sc, %struct.super_mux_sc* %65, i32 0, i32 3
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.super_mux_sc*, %struct.super_mux_sc** %5, align 8
  %69 = getelementptr inbounds %struct.super_mux_sc, %struct.super_mux_sc* %68, i32 0, i32 0
  store i32 %67, i32* %69, align 4
  br label %70

70:                                               ; preds = %64, %56, %51
  br label %71

71:                                               ; preds = %70, %32
  %72 = load %struct.clknode*, %struct.clknode** %3, align 8
  %73 = load %struct.super_mux_sc*, %struct.super_mux_sc** %5, align 8
  %74 = getelementptr inbounds %struct.super_mux_sc, %struct.super_mux_sc* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @clknode_init_parent_idx(%struct.clknode* %72, i32 %75)
  ret i32 0
}

declare dso_local %struct.super_mux_sc* @clknode_get_softc(%struct.clknode*) #1

declare dso_local i32 @DEVICE_LOCK(%struct.super_mux_sc*) #1

declare dso_local i32 @RD4(%struct.super_mux_sc*, i32, i32*) #1

declare dso_local i32 @DEVICE_UNLOCK(%struct.super_mux_sc*) #1

declare dso_local i32 @super_mux_get_state(i32) #1

declare dso_local i32 @panic(i8*, i32) #1

declare dso_local i32 @clknode_init_parent_idx(%struct.clknode*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
