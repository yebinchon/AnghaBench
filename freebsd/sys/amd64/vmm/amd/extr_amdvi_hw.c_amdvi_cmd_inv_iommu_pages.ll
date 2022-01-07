; ModuleID = '/home/carl/AnghaBench/freebsd/sys/amd64/vmm/amd/extr_amdvi_hw.c_amdvi_cmd_inv_iommu_pages.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/amd64/vmm/amd/extr_amdvi_hw.c_amdvi_cmd_inv_iommu_pages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdvi_softc = type { i32 }
%struct.amdvi_cmd = type { i32, i32, i32 }

@.str = private unnamed_addr constant [12 x i8] c"Cmd is NULL\00", align 1
@AMDVI_INVD_PAGE_OPCODE = common dso_local global i32 0, align 4
@AMDVI_INVD_PAGE_PDE = common dso_local global i32 0, align 4
@AMDVI_INVD_PAGE_S = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.amdvi_softc*, i32, i32, i32, i32, i32)* @amdvi_cmd_inv_iommu_pages to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @amdvi_cmd_inv_iommu_pages(%struct.amdvi_softc* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.amdvi_softc*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.amdvi_cmd*, align 8
  store %struct.amdvi_softc* %0, %struct.amdvi_softc** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %14 = load %struct.amdvi_softc*, %struct.amdvi_softc** %7, align 8
  %15 = call %struct.amdvi_cmd* @amdvi_get_cmd_tail(%struct.amdvi_softc* %14)
  store %struct.amdvi_cmd* %15, %struct.amdvi_cmd** %13, align 8
  %16 = load %struct.amdvi_cmd*, %struct.amdvi_cmd** %13, align 8
  %17 = icmp ne %struct.amdvi_cmd* %16, null
  %18 = zext i1 %17 to i32
  %19 = call i32 @KASSERT(i32 %18, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %20 = load i32, i32* @AMDVI_INVD_PAGE_OPCODE, align 4
  %21 = load %struct.amdvi_cmd*, %struct.amdvi_cmd** %13, align 8
  %22 = getelementptr inbounds %struct.amdvi_cmd, %struct.amdvi_cmd* %21, i32 0, i32 2
  store i32 %20, i32* %22, align 4
  %23 = load i32, i32* %8, align 4
  %24 = load %struct.amdvi_cmd*, %struct.amdvi_cmd** %13, align 8
  %25 = getelementptr inbounds %struct.amdvi_cmd, %struct.amdvi_cmd* %24, i32 0, i32 1
  store i32 %23, i32* %25, align 4
  %26 = load i32, i32* %9, align 4
  %27 = load %struct.amdvi_cmd*, %struct.amdvi_cmd** %13, align 8
  %28 = getelementptr inbounds %struct.amdvi_cmd, %struct.amdvi_cmd* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 4
  %29 = load i32, i32* %11, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %6
  %32 = load i32, i32* @AMDVI_INVD_PAGE_PDE, align 4
  br label %34

33:                                               ; preds = %6
  br label %34

34:                                               ; preds = %33, %31
  %35 = phi i32 [ %32, %31 ], [ 0, %33 ]
  %36 = load %struct.amdvi_cmd*, %struct.amdvi_cmd** %13, align 8
  %37 = getelementptr inbounds %struct.amdvi_cmd, %struct.amdvi_cmd* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = or i32 %38, %35
  store i32 %39, i32* %37, align 4
  %40 = load i32, i32* %12, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %34
  %43 = load i32, i32* @AMDVI_INVD_PAGE_S, align 4
  br label %45

44:                                               ; preds = %34
  br label %45

45:                                               ; preds = %44, %42
  %46 = phi i32 [ %43, %42 ], [ 0, %44 ]
  %47 = load %struct.amdvi_cmd*, %struct.amdvi_cmd** %13, align 8
  %48 = getelementptr inbounds %struct.amdvi_cmd, %struct.amdvi_cmd* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = or i32 %49, %46
  store i32 %50, i32* %48, align 4
  %51 = load %struct.amdvi_softc*, %struct.amdvi_softc** %7, align 8
  %52 = call i32 @amdvi_update_cmd_tail(%struct.amdvi_softc* %51)
  ret void
}

declare dso_local %struct.amdvi_cmd* @amdvi_get_cmd_tail(%struct.amdvi_softc*) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @amdvi_update_cmd_tail(%struct.amdvi_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
