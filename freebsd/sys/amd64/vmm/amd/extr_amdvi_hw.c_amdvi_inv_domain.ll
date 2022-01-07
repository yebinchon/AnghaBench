; ModuleID = '/home/carl/AnghaBench/freebsd/sys/amd64/vmm/amd/extr_amdvi_hw.c_amdvi_inv_domain.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/amd64/vmm/amd/extr_amdvi_hw.c_amdvi_inv_domain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdvi_softc = type { i32 }
%struct.amdvi_cmd = type { i32 }

@.str = private unnamed_addr constant [12 x i8] c"Cmd is NULL\00", align 1
@AMDVI_INVD_PAGE_ALL_ADDR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.amdvi_softc*, i32)* @amdvi_inv_domain to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @amdvi_inv_domain(%struct.amdvi_softc* %0, i32 %1) #0 {
  %3 = alloca %struct.amdvi_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.amdvi_cmd*, align 8
  store %struct.amdvi_softc* %0, %struct.amdvi_softc** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.amdvi_softc*, %struct.amdvi_softc** %3, align 8
  %7 = call %struct.amdvi_cmd* @amdvi_get_cmd_tail(%struct.amdvi_softc* %6)
  store %struct.amdvi_cmd* %7, %struct.amdvi_cmd** %5, align 8
  %8 = load %struct.amdvi_cmd*, %struct.amdvi_cmd** %5, align 8
  %9 = icmp ne %struct.amdvi_cmd* %8, null
  %10 = zext i1 %9 to i32
  %11 = call i32 @KASSERT(i32 %10, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %12 = load %struct.amdvi_softc*, %struct.amdvi_softc** %3, align 8
  %13 = load i32, i32* %4, align 4
  %14 = load i32, i32* @AMDVI_INVD_PAGE_ALL_ADDR, align 4
  %15 = call i32 @amdvi_cmd_inv_iommu_pages(%struct.amdvi_softc* %12, i32 %13, i32 %14, i32 0, i32 1, i32 1)
  ret void
}

declare dso_local %struct.amdvi_cmd* @amdvi_get_cmd_tail(%struct.amdvi_softc*) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @amdvi_cmd_inv_iommu_pages(%struct.amdvi_softc*, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
