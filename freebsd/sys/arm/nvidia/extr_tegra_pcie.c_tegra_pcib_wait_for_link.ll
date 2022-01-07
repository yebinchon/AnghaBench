; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/nvidia/extr_tegra_pcie.c_tegra_pcib_wait_for_link.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/nvidia/extr_tegra_pcie.c_tegra_pcib_wait_for_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra_pcib_softc = type { i32 }
%struct.tegra_pcib_port = type { i32 }

@RP_PRIV_MISC = common dso_local global i32 0, align 4
@RP_PRIV_MISC_PRSNT_MAP_EP_ABSNT = common dso_local global i32 0, align 4
@RP_PRIV_MISC_PRSNT_MAP_EP_PRSNT = common dso_local global i32 0, align 4
@TEGRA_PCIE_LINKUP_TIMEOUT = common dso_local global i32 0, align 4
@RP_VEND_XP = common dso_local global i32 0, align 4
@RP_VEND_XP_DL_UP = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@RP_LINK_CONTROL_STATUS = common dso_local global i32 0, align 4
@RP_LINK_CONTROL_STATUS_DL_LINK_ACTIVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tegra_pcib_softc*, %struct.tegra_pcib_port*)* @tegra_pcib_wait_for_link to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tegra_pcib_wait_for_link(%struct.tegra_pcib_softc* %0, %struct.tegra_pcib_port* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tegra_pcib_softc*, align 8
  %5 = alloca %struct.tegra_pcib_port*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.tegra_pcib_softc* %0, %struct.tegra_pcib_softc** %4, align 8
  store %struct.tegra_pcib_port* %1, %struct.tegra_pcib_port** %5, align 8
  %8 = load %struct.tegra_pcib_softc*, %struct.tegra_pcib_softc** %4, align 8
  %9 = getelementptr inbounds %struct.tegra_pcib_softc, %struct.tegra_pcib_softc* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.tegra_pcib_port*, %struct.tegra_pcib_port** %5, align 8
  %12 = getelementptr inbounds %struct.tegra_pcib_port, %struct.tegra_pcib_port* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @RP_PRIV_MISC, align 4
  %15 = call i32 @tegra_pcib_read_config(i32 %10, i32 0, i32 %13, i32 0, i32 %14, i32 4)
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* @RP_PRIV_MISC_PRSNT_MAP_EP_ABSNT, align 4
  %17 = xor i32 %16, -1
  %18 = load i32, i32* %6, align 4
  %19 = and i32 %18, %17
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* @RP_PRIV_MISC_PRSNT_MAP_EP_PRSNT, align 4
  %21 = load i32, i32* %6, align 4
  %22 = or i32 %21, %20
  store i32 %22, i32* %6, align 4
  %23 = load %struct.tegra_pcib_softc*, %struct.tegra_pcib_softc** %4, align 8
  %24 = getelementptr inbounds %struct.tegra_pcib_softc, %struct.tegra_pcib_softc* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.tegra_pcib_port*, %struct.tegra_pcib_port** %5, align 8
  %27 = getelementptr inbounds %struct.tegra_pcib_port, %struct.tegra_pcib_port* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @RP_PRIV_MISC, align 4
  %30 = load i32, i32* %6, align 4
  %31 = call i32 @tegra_pcib_write_config(i32 %25, i32 0, i32 %28, i32 0, i32 %29, i32 %30, i32 4)
  %32 = load i32, i32* @TEGRA_PCIE_LINKUP_TIMEOUT, align 4
  store i32 %32, i32* %7, align 4
  br label %33

33:                                               ; preds = %52, %2
  %34 = load i32, i32* %7, align 4
  %35 = icmp sgt i32 %34, 0
  br i1 %35, label %36, label %55

36:                                               ; preds = %33
  %37 = load %struct.tegra_pcib_softc*, %struct.tegra_pcib_softc** %4, align 8
  %38 = getelementptr inbounds %struct.tegra_pcib_softc, %struct.tegra_pcib_softc* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.tegra_pcib_port*, %struct.tegra_pcib_port** %5, align 8
  %41 = getelementptr inbounds %struct.tegra_pcib_port, %struct.tegra_pcib_port* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @RP_VEND_XP, align 4
  %44 = call i32 @tegra_pcib_read_config(i32 %39, i32 0, i32 %42, i32 0, i32 %43, i32 4)
  store i32 %44, i32* %6, align 4
  %45 = load i32, i32* %6, align 4
  %46 = load i32, i32* @RP_VEND_XP_DL_UP, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %36
  br label %55

50:                                               ; preds = %36
  %51 = call i32 @DELAY(i32 1)
  br label %52

52:                                               ; preds = %50
  %53 = load i32, i32* %7, align 4
  %54 = add nsw i32 %53, -1
  store i32 %54, i32* %7, align 4
  br label %33

55:                                               ; preds = %49, %33
  %56 = load i32, i32* %7, align 4
  %57 = icmp sle i32 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %55
  %59 = load i32, i32* @ETIMEDOUT, align 4
  store i32 %59, i32* %3, align 4
  br label %90

60:                                               ; preds = %55
  %61 = load i32, i32* @TEGRA_PCIE_LINKUP_TIMEOUT, align 4
  store i32 %61, i32* %7, align 4
  br label %62

62:                                               ; preds = %81, %60
  %63 = load i32, i32* %7, align 4
  %64 = icmp sgt i32 %63, 0
  br i1 %64, label %65, label %84

65:                                               ; preds = %62
  %66 = load %struct.tegra_pcib_softc*, %struct.tegra_pcib_softc** %4, align 8
  %67 = getelementptr inbounds %struct.tegra_pcib_softc, %struct.tegra_pcib_softc* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.tegra_pcib_port*, %struct.tegra_pcib_port** %5, align 8
  %70 = getelementptr inbounds %struct.tegra_pcib_port, %struct.tegra_pcib_port* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* @RP_LINK_CONTROL_STATUS, align 4
  %73 = call i32 @tegra_pcib_read_config(i32 %68, i32 0, i32 %71, i32 0, i32 %72, i32 4)
  store i32 %73, i32* %6, align 4
  %74 = load i32, i32* %6, align 4
  %75 = load i32, i32* @RP_LINK_CONTROL_STATUS_DL_LINK_ACTIVE, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %65
  br label %84

79:                                               ; preds = %65
  %80 = call i32 @DELAY(i32 1)
  br label %81

81:                                               ; preds = %79
  %82 = load i32, i32* %7, align 4
  %83 = add nsw i32 %82, -1
  store i32 %83, i32* %7, align 4
  br label %62

84:                                               ; preds = %78, %62
  %85 = load i32, i32* %7, align 4
  %86 = icmp sle i32 %85, 0
  br i1 %86, label %87, label %89

87:                                               ; preds = %84
  %88 = load i32, i32* @ETIMEDOUT, align 4
  store i32 %88, i32* %3, align 4
  br label %90

89:                                               ; preds = %84
  store i32 0, i32* %3, align 4
  br label %90

90:                                               ; preds = %89, %87, %58
  %91 = load i32, i32* %3, align 4
  ret i32 %91
}

declare dso_local i32 @tegra_pcib_read_config(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @tegra_pcib_write_config(i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @DELAY(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
