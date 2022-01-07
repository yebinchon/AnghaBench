; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/allwinner/clkng/extr_aw_clk_mipi.c_aw_clk_mipi_set_gate.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/allwinner/clkng/extr_aw_clk_mipi.c_aw_clk_mipi_set_gate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clknode = type { i32 }
%struct.aw_clk_mipi_sc = type { i32, i32 }

@.str = private unnamed_addr constant [15 x i8] c"%sabling gate\0A\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"En\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"Dis\00", align 1
@LDO1_EN_SHIFT = common dso_local global i32 0, align 4
@LDO2_EN_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clknode*, i32)* @aw_clk_mipi_set_gate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aw_clk_mipi_set_gate(%struct.clknode* %0, i32 %1) #0 {
  %3 = alloca %struct.clknode*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.aw_clk_mipi_sc*, align 8
  %6 = alloca i32, align 4
  store %struct.clknode* %0, %struct.clknode** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.clknode*, %struct.clknode** %3, align 8
  %8 = call %struct.aw_clk_mipi_sc* @clknode_get_softc(%struct.clknode* %7)
  store %struct.aw_clk_mipi_sc* %8, %struct.aw_clk_mipi_sc** %5, align 8
  %9 = load i32, i32* %4, align 4
  %10 = icmp ne i32 %9, 0
  %11 = zext i1 %10 to i64
  %12 = select i1 %10, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)
  %13 = call i32 @dprintf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i8* %12)
  %14 = load %struct.clknode*, %struct.clknode** %3, align 8
  %15 = call i32 @DEVICE_LOCK(%struct.clknode* %14)
  %16 = load %struct.clknode*, %struct.clknode** %3, align 8
  %17 = load %struct.aw_clk_mipi_sc*, %struct.aw_clk_mipi_sc** %5, align 8
  %18 = getelementptr inbounds %struct.aw_clk_mipi_sc, %struct.aw_clk_mipi_sc* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @READ4(%struct.clknode* %16, i32 %19, i32* %6)
  %21 = load i32, i32* %4, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %38

23:                                               ; preds = %2
  %24 = load %struct.aw_clk_mipi_sc*, %struct.aw_clk_mipi_sc** %5, align 8
  %25 = getelementptr inbounds %struct.aw_clk_mipi_sc, %struct.aw_clk_mipi_sc* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = shl i32 1, %26
  %28 = load i32, i32* %6, align 4
  %29 = or i32 %28, %27
  store i32 %29, i32* %6, align 4
  %30 = load i32, i32* @LDO1_EN_SHIFT, align 4
  %31 = shl i32 1, %30
  %32 = load i32, i32* %6, align 4
  %33 = or i32 %32, %31
  store i32 %33, i32* %6, align 4
  %34 = load i32, i32* @LDO2_EN_SHIFT, align 4
  %35 = shl i32 1, %34
  %36 = load i32, i32* %6, align 4
  %37 = or i32 %36, %35
  store i32 %37, i32* %6, align 4
  br label %56

38:                                               ; preds = %2
  %39 = load %struct.aw_clk_mipi_sc*, %struct.aw_clk_mipi_sc** %5, align 8
  %40 = getelementptr inbounds %struct.aw_clk_mipi_sc, %struct.aw_clk_mipi_sc* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = shl i32 1, %41
  %43 = xor i32 %42, -1
  %44 = load i32, i32* %6, align 4
  %45 = and i32 %44, %43
  store i32 %45, i32* %6, align 4
  %46 = load i32, i32* @LDO1_EN_SHIFT, align 4
  %47 = shl i32 1, %46
  %48 = xor i32 %47, -1
  %49 = load i32, i32* %6, align 4
  %50 = and i32 %49, %48
  store i32 %50, i32* %6, align 4
  %51 = load i32, i32* @LDO2_EN_SHIFT, align 4
  %52 = shl i32 1, %51
  %53 = xor i32 %52, -1
  %54 = load i32, i32* %6, align 4
  %55 = and i32 %54, %53
  store i32 %55, i32* %6, align 4
  br label %56

56:                                               ; preds = %38, %23
  %57 = load %struct.clknode*, %struct.clknode** %3, align 8
  %58 = load %struct.aw_clk_mipi_sc*, %struct.aw_clk_mipi_sc** %5, align 8
  %59 = getelementptr inbounds %struct.aw_clk_mipi_sc, %struct.aw_clk_mipi_sc* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* %6, align 4
  %62 = call i32 @WRITE4(%struct.clknode* %57, i32 %60, i32 %61)
  %63 = load %struct.clknode*, %struct.clknode** %3, align 8
  %64 = call i32 @DEVICE_UNLOCK(%struct.clknode* %63)
  ret i32 0
}

declare dso_local %struct.aw_clk_mipi_sc* @clknode_get_softc(%struct.clknode*) #1

declare dso_local i32 @dprintf(i8*, i8*) #1

declare dso_local i32 @DEVICE_LOCK(%struct.clknode*) #1

declare dso_local i32 @READ4(%struct.clknode*, i32, i32*) #1

declare dso_local i32 @WRITE4(%struct.clknode*, i32, i32) #1

declare dso_local i32 @DEVICE_UNLOCK(%struct.clknode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
