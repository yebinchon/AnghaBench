; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/mv/extr_mv_pci.c_mv_pcib_enable.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/mv/extr_mv_pci.c_mv_pcib_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mv_pcib_softc = type { i64, i64, i32, i32 }

@CPU_CONTROL = common dso_local global i32 0, align 4
@PCIE_LINK_TIMEOUT = common dso_local global i32 0, align 4
@PCIE_REG_STATUS = common dso_local global i32 0, align 4
@PCIE_STATUS_LINK_DOWN = common dso_local global i32 0, align 4
@MV_MODE_ROOT = common dso_local global i64 0, align 8
@PCIR_COMMAND = common dso_local global i32 0, align 4
@PCIM_CMD_SERRESPEN = common dso_local global i32 0, align 4
@PCIM_CMD_BUSMASTEREN = common dso_local global i32 0, align 4
@PCIM_CMD_MEMEN = common dso_local global i32 0, align 4
@PCIM_CMD_PORTEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mv_pcib_softc*, i32)* @mv_pcib_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mv_pcib_enable(%struct.mv_pcib_softc* %0, i32 %1) #0 {
  %3 = alloca %struct.mv_pcib_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.mv_pcib_softc* %0, %struct.mv_pcib_softc** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.mv_pcib_softc*, %struct.mv_pcib_softc** %3, align 8
  %8 = getelementptr inbounds %struct.mv_pcib_softc, %struct.mv_pcib_softc* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  br label %66

12:                                               ; preds = %2
  %13 = load %struct.mv_pcib_softc*, %struct.mv_pcib_softc** %3, align 8
  %14 = getelementptr inbounds %struct.mv_pcib_softc, %struct.mv_pcib_softc* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %17, label %65

17:                                               ; preds = %12
  %18 = load i32, i32* @CPU_CONTROL, align 4
  %19 = call i32 @read_cpu_ctrl(i32 %18)
  %20 = load i32, i32* %4, align 4
  %21 = call i32 @CPU_CONTROL_PCIE_DISABLE(i32 %20)
  %22 = and i32 %19, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %65

24:                                               ; preds = %17
  %25 = load i32, i32* @CPU_CONTROL, align 4
  %26 = load i32, i32* @CPU_CONTROL, align 4
  %27 = call i32 @read_cpu_ctrl(i32 %26)
  %28 = load i32, i32* %4, align 4
  %29 = call i32 @CPU_CONTROL_PCIE_DISABLE(i32 %28)
  %30 = xor i32 %29, -1
  %31 = and i32 %27, %30
  %32 = call i32 @write_cpu_ctrl(i32 %25, i32 %31)
  %33 = load i32, i32* @PCIE_LINK_TIMEOUT, align 4
  store i32 %33, i32* %6, align 4
  %34 = load %struct.mv_pcib_softc*, %struct.mv_pcib_softc** %3, align 8
  %35 = getelementptr inbounds %struct.mv_pcib_softc, %struct.mv_pcib_softc* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.mv_pcib_softc*, %struct.mv_pcib_softc** %3, align 8
  %38 = getelementptr inbounds %struct.mv_pcib_softc, %struct.mv_pcib_softc* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* @PCIE_REG_STATUS, align 4
  %41 = call i32 @bus_space_read_4(i32 %36, i32 %39, i32 %40)
  store i32 %41, i32* %5, align 4
  br label %42

42:                                               ; preds = %52, %24
  %43 = load i32, i32* %5, align 4
  %44 = load i32, i32* @PCIE_STATUS_LINK_DOWN, align 4
  %45 = and i32 %43, %44
  %46 = icmp eq i32 %45, 1
  br i1 %46, label %47, label %50

47:                                               ; preds = %42
  %48 = load i32, i32* %6, align 4
  %49 = icmp sgt i32 %48, 0
  br label %50

50:                                               ; preds = %47, %42
  %51 = phi i1 [ false, %42 ], [ %49, %47 ]
  br i1 %51, label %52, label %64

52:                                               ; preds = %50
  %53 = call i32 @DELAY(i32 1000)
  %54 = load i32, i32* %6, align 4
  %55 = sub nsw i32 %54, 1000
  store i32 %55, i32* %6, align 4
  %56 = load %struct.mv_pcib_softc*, %struct.mv_pcib_softc** %3, align 8
  %57 = getelementptr inbounds %struct.mv_pcib_softc, %struct.mv_pcib_softc* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.mv_pcib_softc*, %struct.mv_pcib_softc** %3, align 8
  %60 = getelementptr inbounds %struct.mv_pcib_softc, %struct.mv_pcib_softc* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* @PCIE_REG_STATUS, align 4
  %63 = call i32 @bus_space_read_4(i32 %58, i32 %61, i32 %62)
  store i32 %63, i32* %5, align 4
  br label %42

64:                                               ; preds = %50
  br label %65

65:                                               ; preds = %64, %17, %12
  br label %66

66:                                               ; preds = %65, %11
  %67 = load %struct.mv_pcib_softc*, %struct.mv_pcib_softc** %3, align 8
  %68 = getelementptr inbounds %struct.mv_pcib_softc, %struct.mv_pcib_softc* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @MV_MODE_ROOT, align 8
  %71 = icmp eq i64 %69, %70
  br i1 %71, label %72, label %99

72:                                               ; preds = %66
  %73 = load %struct.mv_pcib_softc*, %struct.mv_pcib_softc** %3, align 8
  %74 = getelementptr inbounds %struct.mv_pcib_softc, %struct.mv_pcib_softc* %73, i32 0, i32 3
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.mv_pcib_softc*, %struct.mv_pcib_softc** %3, align 8
  %77 = getelementptr inbounds %struct.mv_pcib_softc, %struct.mv_pcib_softc* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 8
  %79 = load i32, i32* @PCIR_COMMAND, align 4
  %80 = call i32 @bus_space_read_4(i32 %75, i32 %78, i32 %79)
  store i32 %80, i32* %5, align 4
  %81 = load i32, i32* @PCIM_CMD_SERRESPEN, align 4
  %82 = load i32, i32* @PCIM_CMD_BUSMASTEREN, align 4
  %83 = or i32 %81, %82
  %84 = load i32, i32* @PCIM_CMD_MEMEN, align 4
  %85 = or i32 %83, %84
  %86 = load i32, i32* @PCIM_CMD_PORTEN, align 4
  %87 = or i32 %85, %86
  %88 = load i32, i32* %5, align 4
  %89 = or i32 %88, %87
  store i32 %89, i32* %5, align 4
  %90 = load %struct.mv_pcib_softc*, %struct.mv_pcib_softc** %3, align 8
  %91 = getelementptr inbounds %struct.mv_pcib_softc, %struct.mv_pcib_softc* %90, i32 0, i32 3
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.mv_pcib_softc*, %struct.mv_pcib_softc** %3, align 8
  %94 = getelementptr inbounds %struct.mv_pcib_softc, %struct.mv_pcib_softc* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 8
  %96 = load i32, i32* @PCIR_COMMAND, align 4
  %97 = load i32, i32* %5, align 4
  %98 = call i32 @bus_space_write_4(i32 %92, i32 %95, i32 %96, i32 %97)
  br label %99

99:                                               ; preds = %72, %66
  ret void
}

declare dso_local i32 @read_cpu_ctrl(i32) #1

declare dso_local i32 @CPU_CONTROL_PCIE_DISABLE(i32) #1

declare dso_local i32 @write_cpu_ctrl(i32, i32) #1

declare dso_local i32 @bus_space_read_4(i32, i32, i32) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @bus_space_write_4(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
