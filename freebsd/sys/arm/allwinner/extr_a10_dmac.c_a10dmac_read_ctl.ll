; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/allwinner/extr_a10_dmac.c_a10dmac_read_ctl.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/allwinner/extr_a10_dmac.c_a10dmac_read_ctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.a10dmac_channel = type { i64 }

@CH_NDMA = common dso_local global i64 0, align 8
@AWIN_NDMA_CTL_REG = common dso_local global i32 0, align 4
@AWIN_DDMA_CTL_REG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.a10dmac_channel*)* @a10dmac_read_ctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @a10dmac_read_ctl(%struct.a10dmac_channel* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.a10dmac_channel*, align 8
  store %struct.a10dmac_channel* %0, %struct.a10dmac_channel** %3, align 8
  %4 = load %struct.a10dmac_channel*, %struct.a10dmac_channel** %3, align 8
  %5 = getelementptr inbounds %struct.a10dmac_channel, %struct.a10dmac_channel* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @CH_NDMA, align 8
  %8 = icmp eq i64 %6, %7
  br i1 %8, label %9, label %13

9:                                                ; preds = %1
  %10 = load %struct.a10dmac_channel*, %struct.a10dmac_channel** %3, align 8
  %11 = load i32, i32* @AWIN_NDMA_CTL_REG, align 4
  %12 = call i32 @DMACH_READ(%struct.a10dmac_channel* %10, i32 %11)
  store i32 %12, i32* %2, align 4
  br label %17

13:                                               ; preds = %1
  %14 = load %struct.a10dmac_channel*, %struct.a10dmac_channel** %3, align 8
  %15 = load i32, i32* @AWIN_DDMA_CTL_REG, align 4
  %16 = call i32 @DMACH_READ(%struct.a10dmac_channel* %14, i32 %15)
  store i32 %16, i32* %2, align 4
  br label %17

17:                                               ; preds = %13, %9
  %18 = load i32, i32* %2, align 4
  ret i32 %18
}

declare dso_local i32 @DMACH_READ(%struct.a10dmac_channel*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
