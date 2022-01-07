; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/nvidia/extr_tegra_pcie.c_tegra_pcib_read_config.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/nvidia/extr_tegra_pcie.c_tegra_pcib_read_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra_pcib_softc = type { i32, i32, %struct.TYPE_2__** }
%struct.TYPE_2__ = type { i64, i32 }

@TEGRA_PCIB_MAX_PORTS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i64, i64, i64, i64, i32)* @tegra_pcib_read_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tegra_pcib_read_config(i32 %0, i64 %1, i64 %2, i64 %3, i64 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.tegra_pcib_softc*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store i32 %0, i32* %8, align 4
  store i64 %1, i64* %9, align 8
  store i64 %2, i64* %10, align 8
  store i64 %3, i64* %11, align 8
  store i64 %4, i64* %12, align 8
  store i32 %5, i32* %13, align 4
  %20 = load i32, i32* %8, align 4
  %21 = call %struct.tegra_pcib_softc* @device_get_softc(i32 %20)
  store %struct.tegra_pcib_softc* %21, %struct.tegra_pcib_softc** %14, align 8
  %22 = load i64, i64* %9, align 8
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %77

24:                                               ; preds = %6
  %25 = load i64, i64* %11, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %24
  store i32 -1, i32* %7, align 4
  br label %123

28:                                               ; preds = %24
  store i32 0, i32* %19, align 4
  br label %29

29:                                               ; preds = %68, %28
  %30 = load i32, i32* %19, align 4
  %31 = load i32, i32* @TEGRA_PCIB_MAX_PORTS, align 4
  %32 = icmp slt i32 %30, %31
  br i1 %32, label %33, label %71

33:                                               ; preds = %29
  %34 = load %struct.tegra_pcib_softc*, %struct.tegra_pcib_softc** %14, align 8
  %35 = getelementptr inbounds %struct.tegra_pcib_softc, %struct.tegra_pcib_softc* %34, i32 0, i32 2
  %36 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %35, align 8
  %37 = load i32, i32* %19, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %36, i64 %38
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = icmp ne %struct.TYPE_2__* %40, null
  br i1 %41, label %42, label %67

42:                                               ; preds = %33
  %43 = load %struct.tegra_pcib_softc*, %struct.tegra_pcib_softc** %14, align 8
  %44 = getelementptr inbounds %struct.tegra_pcib_softc, %struct.tegra_pcib_softc* %43, i32 0, i32 2
  %45 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %44, align 8
  %46 = load i32, i32* %19, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %45, i64 %47
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* %10, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %67

54:                                               ; preds = %42
  %55 = load %struct.tegra_pcib_softc*, %struct.tegra_pcib_softc** %14, align 8
  %56 = getelementptr inbounds %struct.tegra_pcib_softc, %struct.tegra_pcib_softc* %55, i32 0, i32 2
  %57 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %56, align 8
  %58 = load i32, i32* %19, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %57, i64 %59
  %61 = load %struct.TYPE_2__*, %struct.TYPE_2__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  store i32 %63, i32* %15, align 4
  %64 = load i64, i64* %12, align 8
  %65 = and i64 %64, 4095
  %66 = trunc i64 %65 to i32
  store i32 %66, i32* %16, align 4
  br label %71

67:                                               ; preds = %42, %33
  br label %68

68:                                               ; preds = %67
  %69 = load i32, i32* %19, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %19, align 4
  br label %29

71:                                               ; preds = %54, %29
  %72 = load i32, i32* %19, align 4
  %73 = load i32, i32* @TEGRA_PCIB_MAX_PORTS, align 4
  %74 = icmp sge i32 %72, %73
  br i1 %74, label %75, label %76

75:                                               ; preds = %71
  store i32 -1, i32* %7, align 4
  br label %123

76:                                               ; preds = %71
  br label %93

77:                                               ; preds = %6
  %78 = load %struct.tegra_pcib_softc*, %struct.tegra_pcib_softc** %14, align 8
  %79 = load i64, i64* %9, align 8
  %80 = load i64, i64* %10, align 8
  %81 = load i64, i64* %11, align 8
  %82 = load i64, i64* %12, align 8
  %83 = call i32 @tegra_pcbib_map_cfg(%struct.tegra_pcib_softc* %78, i64 %79, i64 %80, i64 %81, i64 %82)
  store i32 %83, i32* %18, align 4
  %84 = load i32, i32* %18, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %77
  store i32 -1, i32* %7, align 4
  br label %123

87:                                               ; preds = %77
  %88 = load %struct.tegra_pcib_softc*, %struct.tegra_pcib_softc** %14, align 8
  %89 = getelementptr inbounds %struct.tegra_pcib_softc, %struct.tegra_pcib_softc* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  store i32 %90, i32* %15, align 4
  %91 = load i64, i64* %12, align 8
  %92 = call i32 @PCI_CFG_BASE_REG(i64 %91)
  store i32 %92, i32* %16, align 4
  br label %93

93:                                               ; preds = %87, %76
  %94 = load %struct.tegra_pcib_softc*, %struct.tegra_pcib_softc** %14, align 8
  %95 = getelementptr inbounds %struct.tegra_pcib_softc, %struct.tegra_pcib_softc* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = load i32, i32* %15, align 4
  %98 = load i32, i32* %16, align 4
  %99 = and i32 %98, -4
  %100 = call i32 @bus_space_read_4(i32 %96, i32 %97, i32 %99)
  store i32 %100, i32* %17, align 4
  %101 = load i32, i32* %13, align 4
  switch i32 %101, label %121 [
    i32 4, label %102
    i32 2, label %103
    i32 1, label %113
  ]

102:                                              ; preds = %93
  br label %121

103:                                              ; preds = %93
  %104 = load i32, i32* %16, align 4
  %105 = and i32 %104, 3
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %110

107:                                              ; preds = %103
  %108 = load i32, i32* %17, align 4
  %109 = ashr i32 %108, 16
  store i32 %109, i32* %17, align 4
  br label %110

110:                                              ; preds = %107, %103
  %111 = load i32, i32* %17, align 4
  %112 = and i32 %111, 65535
  store i32 %112, i32* %17, align 4
  br label %121

113:                                              ; preds = %93
  %114 = load i32, i32* %16, align 4
  %115 = and i32 %114, 3
  %116 = shl i32 %115, 3
  %117 = load i32, i32* %17, align 4
  %118 = ashr i32 %117, %116
  store i32 %118, i32* %17, align 4
  %119 = load i32, i32* %17, align 4
  %120 = and i32 %119, 255
  store i32 %120, i32* %17, align 4
  br label %121

121:                                              ; preds = %93, %113, %110, %102
  %122 = load i32, i32* %17, align 4
  store i32 %122, i32* %7, align 4
  br label %123

123:                                              ; preds = %121, %86, %75, %27
  %124 = load i32, i32* %7, align 4
  ret i32 %124
}

declare dso_local %struct.tegra_pcib_softc* @device_get_softc(i32) #1

declare dso_local i32 @tegra_pcbib_map_cfg(%struct.tegra_pcib_softc*, i64, i64, i64, i64) #1

declare dso_local i32 @PCI_CFG_BASE_REG(i64) #1

declare dso_local i32 @bus_space_read_4(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
