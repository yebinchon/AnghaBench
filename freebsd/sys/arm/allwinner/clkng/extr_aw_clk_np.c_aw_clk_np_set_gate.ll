; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/allwinner/clkng/extr_aw_clk_np.c_aw_clk_np_set_gate.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/allwinner/clkng/extr_aw_clk_np.c_aw_clk_np_set_gate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clknode = type { i32 }
%struct.aw_clk_np_sc = type { i32, i32, i32 }

@AW_CLK_HAS_GATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clknode*, i32)* @aw_clk_np_set_gate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aw_clk_np_set_gate(%struct.clknode* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.clknode*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.aw_clk_np_sc*, align 8
  %7 = alloca i32, align 4
  store %struct.clknode* %0, %struct.clknode** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.clknode*, %struct.clknode** %4, align 8
  %9 = call %struct.aw_clk_np_sc* @clknode_get_softc(%struct.clknode* %8)
  store %struct.aw_clk_np_sc* %9, %struct.aw_clk_np_sc** %6, align 8
  %10 = load %struct.aw_clk_np_sc*, %struct.aw_clk_np_sc** %6, align 8
  %11 = getelementptr inbounds %struct.aw_clk_np_sc, %struct.aw_clk_np_sc* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @AW_CLK_HAS_GATE, align 4
  %14 = and i32 %12, %13
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %51

17:                                               ; preds = %2
  %18 = load %struct.clknode*, %struct.clknode** %4, align 8
  %19 = call i32 @DEVICE_LOCK(%struct.clknode* %18)
  %20 = load %struct.clknode*, %struct.clknode** %4, align 8
  %21 = load %struct.aw_clk_np_sc*, %struct.aw_clk_np_sc** %6, align 8
  %22 = getelementptr inbounds %struct.aw_clk_np_sc, %struct.aw_clk_np_sc* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @READ4(%struct.clknode* %20, i32 %23, i32* %7)
  %25 = load i32, i32* %5, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %34

27:                                               ; preds = %17
  %28 = load %struct.aw_clk_np_sc*, %struct.aw_clk_np_sc** %6, align 8
  %29 = getelementptr inbounds %struct.aw_clk_np_sc, %struct.aw_clk_np_sc* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = shl i32 1, %30
  %32 = load i32, i32* %7, align 4
  %33 = or i32 %32, %31
  store i32 %33, i32* %7, align 4
  br label %42

34:                                               ; preds = %17
  %35 = load %struct.aw_clk_np_sc*, %struct.aw_clk_np_sc** %6, align 8
  %36 = getelementptr inbounds %struct.aw_clk_np_sc, %struct.aw_clk_np_sc* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = shl i32 1, %37
  %39 = xor i32 %38, -1
  %40 = load i32, i32* %7, align 4
  %41 = and i32 %40, %39
  store i32 %41, i32* %7, align 4
  br label %42

42:                                               ; preds = %34, %27
  %43 = load %struct.clknode*, %struct.clknode** %4, align 8
  %44 = load %struct.aw_clk_np_sc*, %struct.aw_clk_np_sc** %6, align 8
  %45 = getelementptr inbounds %struct.aw_clk_np_sc, %struct.aw_clk_np_sc* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* %7, align 4
  %48 = call i32 @WRITE4(%struct.clknode* %43, i32 %46, i32 %47)
  %49 = load %struct.clknode*, %struct.clknode** %4, align 8
  %50 = call i32 @DEVICE_UNLOCK(%struct.clknode* %49)
  store i32 0, i32* %3, align 4
  br label %51

51:                                               ; preds = %42, %16
  %52 = load i32, i32* %3, align 4
  ret i32 %52
}

declare dso_local %struct.aw_clk_np_sc* @clknode_get_softc(%struct.clknode*) #1

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
