; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm64/arm64/extr_gicv3_its.c_its_cmd_sync.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm64/arm64/extr_gicv3_its.c_its_cmd_sync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gicv3_its_softc = type { i32 }
%struct.its_cmd = type { i32 }

@ITS_FLAGS_CMDQ_FLUSH = common dso_local global i32 0, align 4
@ishst = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gicv3_its_softc*, %struct.its_cmd*)* @its_cmd_sync to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @its_cmd_sync(%struct.gicv3_its_softc* %0, %struct.its_cmd* %1) #0 {
  %3 = alloca %struct.gicv3_its_softc*, align 8
  %4 = alloca %struct.its_cmd*, align 8
  store %struct.gicv3_its_softc* %0, %struct.gicv3_its_softc** %3, align 8
  store %struct.its_cmd* %1, %struct.its_cmd** %4, align 8
  %5 = load %struct.gicv3_its_softc*, %struct.gicv3_its_softc** %3, align 8
  %6 = getelementptr inbounds %struct.gicv3_its_softc, %struct.gicv3_its_softc* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* @ITS_FLAGS_CMDQ_FLUSH, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %2
  %12 = load %struct.its_cmd*, %struct.its_cmd** %4, align 8
  %13 = ptrtoint %struct.its_cmd* %12 to i32
  %14 = call i32 @cpu_dcache_wb_range(i32 %13, i32 4)
  br label %18

15:                                               ; preds = %2
  %16 = load i32, i32* @ishst, align 4
  %17 = call i32 @dsb(i32 %16)
  br label %18

18:                                               ; preds = %15, %11
  ret void
}

declare dso_local i32 @cpu_dcache_wb_range(i32, i32) #1

declare dso_local i32 @dsb(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
