; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/allwinner/clkng/extr_aw_clk_frac.c_aw_clk_frac_set_mux.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/allwinner/clkng/extr_aw_clk_frac.c_aw_clk_frac_set_mux.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clknode = type { i32 }
%struct.aw_clk_frac_sc = type { i32, i32, i32, i32 }

@AW_CLK_HAS_MUX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"Set mux to %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clknode*, i32)* @aw_clk_frac_set_mux to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aw_clk_frac_set_mux(%struct.clknode* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.clknode*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.aw_clk_frac_sc*, align 8
  %7 = alloca i32, align 4
  store %struct.clknode* %0, %struct.clknode** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.clknode*, %struct.clknode** %4, align 8
  %9 = call %struct.aw_clk_frac_sc* @clknode_get_softc(%struct.clknode* %8)
  store %struct.aw_clk_frac_sc* %9, %struct.aw_clk_frac_sc** %6, align 8
  %10 = load %struct.aw_clk_frac_sc*, %struct.aw_clk_frac_sc** %6, align 8
  %11 = getelementptr inbounds %struct.aw_clk_frac_sc, %struct.aw_clk_frac_sc* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @AW_CLK_HAS_MUX, align 4
  %14 = and i32 %12, %13
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %48

17:                                               ; preds = %2
  %18 = load i32, i32* %5, align 4
  %19 = call i32 @dprintf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %18)
  %20 = load %struct.clknode*, %struct.clknode** %4, align 8
  %21 = call i32 @DEVICE_LOCK(%struct.clknode* %20)
  %22 = load %struct.clknode*, %struct.clknode** %4, align 8
  %23 = load %struct.aw_clk_frac_sc*, %struct.aw_clk_frac_sc** %6, align 8
  %24 = getelementptr inbounds %struct.aw_clk_frac_sc, %struct.aw_clk_frac_sc* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @READ4(%struct.clknode* %22, i32 %25, i32* %7)
  %27 = load %struct.aw_clk_frac_sc*, %struct.aw_clk_frac_sc** %6, align 8
  %28 = getelementptr inbounds %struct.aw_clk_frac_sc, %struct.aw_clk_frac_sc* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = xor i32 %29, -1
  %31 = load i32, i32* %7, align 4
  %32 = and i32 %31, %30
  store i32 %32, i32* %7, align 4
  %33 = load i32, i32* %5, align 4
  %34 = load %struct.aw_clk_frac_sc*, %struct.aw_clk_frac_sc** %6, align 8
  %35 = getelementptr inbounds %struct.aw_clk_frac_sc, %struct.aw_clk_frac_sc* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = shl i32 %33, %36
  %38 = load i32, i32* %7, align 4
  %39 = or i32 %38, %37
  store i32 %39, i32* %7, align 4
  %40 = load %struct.clknode*, %struct.clknode** %4, align 8
  %41 = load %struct.aw_clk_frac_sc*, %struct.aw_clk_frac_sc** %6, align 8
  %42 = getelementptr inbounds %struct.aw_clk_frac_sc, %struct.aw_clk_frac_sc* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* %7, align 4
  %45 = call i32 @WRITE4(%struct.clknode* %40, i32 %43, i32 %44)
  %46 = load %struct.clknode*, %struct.clknode** %4, align 8
  %47 = call i32 @DEVICE_UNLOCK(%struct.clknode* %46)
  store i32 0, i32* %3, align 4
  br label %48

48:                                               ; preds = %17, %16
  %49 = load i32, i32* %3, align 4
  ret i32 %49
}

declare dso_local %struct.aw_clk_frac_sc* @clknode_get_softc(%struct.clknode*) #1

declare dso_local i32 @dprintf(i8*, i32) #1

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
