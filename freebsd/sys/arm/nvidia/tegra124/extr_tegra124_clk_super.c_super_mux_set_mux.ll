; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/nvidia/tegra124/extr_tegra124_clk_super.c_super_mux_set_mux.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/nvidia/tegra124/extr_tegra124_clk_super.c_super_mux_set_mux.c"
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
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clknode*, i32)* @super_mux_set_mux to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @super_mux_set_mux(%struct.clknode* %0, i32 %1) #0 {
  %3 = alloca %struct.clknode*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.super_mux_sc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.clknode* %0, %struct.clknode** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load %struct.clknode*, %struct.clknode** %3, align 8
  %11 = call %struct.super_mux_sc* @clknode_get_softc(%struct.clknode* %10)
  store %struct.super_mux_sc* %11, %struct.super_mux_sc** %5, align 8
  %12 = load %struct.super_mux_sc*, %struct.super_mux_sc** %5, align 8
  %13 = call i32 @DEVICE_LOCK(%struct.super_mux_sc* %12)
  %14 = load %struct.super_mux_sc*, %struct.super_mux_sc** %5, align 8
  %15 = load %struct.super_mux_sc*, %struct.super_mux_sc** %5, align 8
  %16 = getelementptr inbounds %struct.super_mux_sc, %struct.super_mux_sc* %15, i32 0, i32 4
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @RD4(%struct.super_mux_sc* %14, i32 %17, i32* %8)
  %19 = load i32, i32* %8, align 4
  %20 = call i32 @super_mux_get_state(i32 %19)
  store i32 %20, i32* %7, align 4
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* @SUPER_MUX_STATE_RUN, align 4
  %23 = icmp ne i32 %21, %22
  br i1 %23, label %24, label %31

24:                                               ; preds = %2
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* @SUPER_MUX_STATE_IDLE, align 4
  %27 = icmp ne i32 %25, %26
  br i1 %27, label %28, label %31

28:                                               ; preds = %24
  %29 = load i32, i32* %7, align 4
  %30 = call i32 @panic(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %29)
  br label %31

31:                                               ; preds = %28, %24, %2
  %32 = load i32, i32* %7, align 4
  %33 = sub nsw i32 %32, 1
  %34 = load i32, i32* @SUPER_MUX_MUX_WIDTH, align 4
  %35 = mul nsw i32 %33, %34
  store i32 %35, i32* %6, align 4
  %36 = load i32, i32* %4, align 4
  %37 = load %struct.super_mux_sc*, %struct.super_mux_sc** %5, align 8
  %38 = getelementptr inbounds %struct.super_mux_sc, %struct.super_mux_sc* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 4
  %39 = load %struct.super_mux_sc*, %struct.super_mux_sc** %5, align 8
  %40 = getelementptr inbounds %struct.super_mux_sc, %struct.super_mux_sc* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @SMF_HAVE_DIVIDER_2, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %91

45:                                               ; preds = %31
  %46 = load i32, i32* %4, align 4
  %47 = load %struct.super_mux_sc*, %struct.super_mux_sc** %5, align 8
  %48 = getelementptr inbounds %struct.super_mux_sc, %struct.super_mux_sc* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = icmp eq i32 %46, %49
  br i1 %50, label %51, label %70

51:                                               ; preds = %45
  %52 = load %struct.super_mux_sc*, %struct.super_mux_sc** %5, align 8
  %53 = getelementptr inbounds %struct.super_mux_sc, %struct.super_mux_sc* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 4
  store i32 %54, i32* %4, align 4
  %55 = load i32, i32* @SUPER_MUX_LP_DIV2_BYPASS, align 4
  %56 = xor i32 %55, -1
  %57 = load i32, i32* %8, align 4
  %58 = and i32 %57, %56
  store i32 %58, i32* %8, align 4
  %59 = load %struct.super_mux_sc*, %struct.super_mux_sc** %5, align 8
  %60 = load %struct.super_mux_sc*, %struct.super_mux_sc** %5, align 8
  %61 = getelementptr inbounds %struct.super_mux_sc, %struct.super_mux_sc* %60, i32 0, i32 4
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* %8, align 4
  %64 = call i32 @WR4(%struct.super_mux_sc* %59, i32 %62, i32 %63)
  %65 = load %struct.super_mux_sc*, %struct.super_mux_sc** %5, align 8
  %66 = load %struct.super_mux_sc*, %struct.super_mux_sc** %5, align 8
  %67 = getelementptr inbounds %struct.super_mux_sc, %struct.super_mux_sc* %66, i32 0, i32 4
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @RD4(%struct.super_mux_sc* %65, i32 %68, i32* %9)
  br label %90

70:                                               ; preds = %45
  %71 = load i32, i32* %4, align 4
  %72 = load %struct.super_mux_sc*, %struct.super_mux_sc** %5, align 8
  %73 = getelementptr inbounds %struct.super_mux_sc, %struct.super_mux_sc* %72, i32 0, i32 3
  %74 = load i32, i32* %73, align 4
  %75 = icmp eq i32 %71, %74
  br i1 %75, label %76, label %89

76:                                               ; preds = %70
  %77 = load i32, i32* @SUPER_MUX_LP_DIV2_BYPASS, align 4
  store i32 %77, i32* %8, align 4
  %78 = load %struct.super_mux_sc*, %struct.super_mux_sc** %5, align 8
  %79 = load %struct.super_mux_sc*, %struct.super_mux_sc** %5, align 8
  %80 = getelementptr inbounds %struct.super_mux_sc, %struct.super_mux_sc* %79, i32 0, i32 4
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* %8, align 4
  %83 = call i32 @WR4(%struct.super_mux_sc* %78, i32 %81, i32 %82)
  %84 = load %struct.super_mux_sc*, %struct.super_mux_sc** %5, align 8
  %85 = load %struct.super_mux_sc*, %struct.super_mux_sc** %5, align 8
  %86 = getelementptr inbounds %struct.super_mux_sc, %struct.super_mux_sc* %85, i32 0, i32 4
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @RD4(%struct.super_mux_sc* %84, i32 %87, i32* %9)
  br label %89

89:                                               ; preds = %76, %70
  br label %90

90:                                               ; preds = %89, %51
  br label %91

91:                                               ; preds = %90, %31
  %92 = load i32, i32* @SUPER_MUX_MUX_WIDTH, align 4
  %93 = shl i32 1, %92
  %94 = sub nsw i32 %93, 1
  %95 = load i32, i32* %6, align 4
  %96 = shl i32 %94, %95
  %97 = xor i32 %96, -1
  %98 = load i32, i32* %8, align 4
  %99 = and i32 %98, %97
  store i32 %99, i32* %8, align 4
  %100 = load i32, i32* %4, align 4
  %101 = load i32, i32* %6, align 4
  %102 = shl i32 %100, %101
  %103 = load i32, i32* %8, align 4
  %104 = or i32 %103, %102
  store i32 %104, i32* %8, align 4
  %105 = load %struct.super_mux_sc*, %struct.super_mux_sc** %5, align 8
  %106 = load %struct.super_mux_sc*, %struct.super_mux_sc** %5, align 8
  %107 = getelementptr inbounds %struct.super_mux_sc, %struct.super_mux_sc* %106, i32 0, i32 4
  %108 = load i32, i32* %107, align 4
  %109 = load i32, i32* %8, align 4
  %110 = call i32 @WR4(%struct.super_mux_sc* %105, i32 %108, i32 %109)
  %111 = load %struct.super_mux_sc*, %struct.super_mux_sc** %5, align 8
  %112 = load %struct.super_mux_sc*, %struct.super_mux_sc** %5, align 8
  %113 = getelementptr inbounds %struct.super_mux_sc, %struct.super_mux_sc* %112, i32 0, i32 4
  %114 = load i32, i32* %113, align 4
  %115 = call i32 @RD4(%struct.super_mux_sc* %111, i32 %114, i32* %9)
  %116 = load %struct.super_mux_sc*, %struct.super_mux_sc** %5, align 8
  %117 = call i32 @DEVICE_UNLOCK(%struct.super_mux_sc* %116)
  ret i32 0
}

declare dso_local %struct.super_mux_sc* @clknode_get_softc(%struct.clknode*) #1

declare dso_local i32 @DEVICE_LOCK(%struct.super_mux_sc*) #1

declare dso_local i32 @RD4(%struct.super_mux_sc*, i32, i32*) #1

declare dso_local i32 @super_mux_get_state(i32) #1

declare dso_local i32 @panic(i8*, i32) #1

declare dso_local i32 @WR4(%struct.super_mux_sc*, i32, i32) #1

declare dso_local i32 @DEVICE_UNLOCK(%struct.super_mux_sc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
