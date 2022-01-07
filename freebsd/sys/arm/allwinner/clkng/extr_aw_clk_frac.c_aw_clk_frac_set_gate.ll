; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/allwinner/clkng/extr_aw_clk_frac.c_aw_clk_frac_set_gate.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/allwinner/clkng/extr_aw_clk_frac.c_aw_clk_frac_set_gate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clknode = type { i32 }
%struct.aw_clk_frac_sc = type { i32, i32, i32 }

@AW_CLK_HAS_GATE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"%sabling gate\0A\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"En\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"Dis\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clknode*, i32)* @aw_clk_frac_set_gate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aw_clk_frac_set_gate(%struct.clknode* %0, i32 %1) #0 {
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
  %13 = load i32, i32* @AW_CLK_HAS_GATE, align 4
  %14 = and i32 %12, %13
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %56

17:                                               ; preds = %2
  %18 = load i32, i32* %5, align 4
  %19 = icmp ne i32 %18, 0
  %20 = zext i1 %19 to i64
  %21 = select i1 %19, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)
  %22 = call i32 @dprintf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i8* %21)
  %23 = load %struct.clknode*, %struct.clknode** %4, align 8
  %24 = call i32 @DEVICE_LOCK(%struct.clknode* %23)
  %25 = load %struct.clknode*, %struct.clknode** %4, align 8
  %26 = load %struct.aw_clk_frac_sc*, %struct.aw_clk_frac_sc** %6, align 8
  %27 = getelementptr inbounds %struct.aw_clk_frac_sc, %struct.aw_clk_frac_sc* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @READ4(%struct.clknode* %25, i32 %28, i32* %7)
  %30 = load i32, i32* %5, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %39

32:                                               ; preds = %17
  %33 = load %struct.aw_clk_frac_sc*, %struct.aw_clk_frac_sc** %6, align 8
  %34 = getelementptr inbounds %struct.aw_clk_frac_sc, %struct.aw_clk_frac_sc* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = shl i32 1, %35
  %37 = load i32, i32* %7, align 4
  %38 = or i32 %37, %36
  store i32 %38, i32* %7, align 4
  br label %47

39:                                               ; preds = %17
  %40 = load %struct.aw_clk_frac_sc*, %struct.aw_clk_frac_sc** %6, align 8
  %41 = getelementptr inbounds %struct.aw_clk_frac_sc, %struct.aw_clk_frac_sc* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = shl i32 1, %42
  %44 = xor i32 %43, -1
  %45 = load i32, i32* %7, align 4
  %46 = and i32 %45, %44
  store i32 %46, i32* %7, align 4
  br label %47

47:                                               ; preds = %39, %32
  %48 = load %struct.clknode*, %struct.clknode** %4, align 8
  %49 = load %struct.aw_clk_frac_sc*, %struct.aw_clk_frac_sc** %6, align 8
  %50 = getelementptr inbounds %struct.aw_clk_frac_sc, %struct.aw_clk_frac_sc* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* %7, align 4
  %53 = call i32 @WRITE4(%struct.clknode* %48, i32 %51, i32 %52)
  %54 = load %struct.clknode*, %struct.clknode** %4, align 8
  %55 = call i32 @DEVICE_UNLOCK(%struct.clknode* %54)
  store i32 0, i32* %3, align 4
  br label %56

56:                                               ; preds = %47, %16
  %57 = load i32, i32* %3, align 4
  ret i32 %57
}

declare dso_local %struct.aw_clk_frac_sc* @clknode_get_softc(%struct.clknode*) #1

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
