; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/freescale/vybrid/extr_vf_sai.c_sai_configure_clock.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/freescale/vybrid/extr_vf_sai.c_sai_configure_clock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sc_info = type { %struct.sai_rate* }
%struct.sai_rate = type { i32, i32, i32, i32 }

@I2S_TCR2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sc_info*)* @sai_configure_clock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sai_configure_clock(%struct.sc_info* %0) #0 {
  %2 = alloca %struct.sc_info*, align 8
  %3 = alloca %struct.sai_rate*, align 8
  %4 = alloca i32, align 4
  store %struct.sc_info* %0, %struct.sc_info** %2, align 8
  %5 = load %struct.sc_info*, %struct.sc_info** %2, align 8
  %6 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %5, i32 0, i32 0
  %7 = load %struct.sai_rate*, %struct.sai_rate** %6, align 8
  store %struct.sai_rate* %7, %struct.sai_rate** %3, align 8
  %8 = load %struct.sc_info*, %struct.sc_info** %2, align 8
  %9 = load i32, i32* @I2S_TCR2, align 4
  %10 = call i32 @READ4(%struct.sc_info* %8, i32 %9)
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* %4, align 4
  %12 = and i32 %11, -256
  store i32 %12, i32* %4, align 4
  %13 = load %struct.sai_rate*, %struct.sai_rate** %3, align 8
  %14 = getelementptr inbounds %struct.sai_rate, %struct.sai_rate* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = shl i32 %15, 0
  %17 = load i32, i32* %4, align 4
  %18 = or i32 %17, %16
  store i32 %18, i32* %4, align 4
  %19 = load %struct.sc_info*, %struct.sc_info** %2, align 8
  %20 = load i32, i32* @I2S_TCR2, align 4
  %21 = load i32, i32* %4, align 4
  %22 = call i32 @WRITE4(%struct.sc_info* %19, i32 %20, i32 %21)
  %23 = load %struct.sai_rate*, %struct.sai_rate** %3, align 8
  %24 = getelementptr inbounds %struct.sai_rate, %struct.sai_rate* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.sai_rate*, %struct.sai_rate** %3, align 8
  %27 = getelementptr inbounds %struct.sai_rate, %struct.sai_rate* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.sai_rate*, %struct.sai_rate** %3, align 8
  %30 = getelementptr inbounds %struct.sai_rate, %struct.sai_rate* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @pll4_configure_output(i32 %25, i32 %28, i32 %31)
  ret void
}

declare dso_local i32 @READ4(%struct.sc_info*, i32) #1

declare dso_local i32 @WRITE4(%struct.sc_info*, i32, i32) #1

declare dso_local i32 @pll4_configure_output(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
