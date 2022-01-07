; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/nvidia/extr_tegra_pcie.c_tegra_pcib_write_config.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/nvidia/extr_tegra_pcie.c_tegra_pcib_write_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra_pcib_softc = type { i32, i32, %struct.TYPE_2__** }
%struct.TYPE_2__ = type { i64, i32 }

@TEGRA_PCIB_MAX_PORTS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i64, i64, i64, i64, i32, i32)* @tegra_pcib_write_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tegra_pcib_write_config(i32 %0, i64 %1, i64 %2, i64 %3, i64 %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.tegra_pcib_softc*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store i32 %0, i32* %8, align 4
  store i64 %1, i64* %9, align 8
  store i64 %2, i64* %10, align 8
  store i64 %3, i64* %11, align 8
  store i64 %4, i64* %12, align 8
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  %21 = load i32, i32* %8, align 4
  %22 = call %struct.tegra_pcib_softc* @device_get_softc(i32 %21)
  store %struct.tegra_pcib_softc* %22, %struct.tegra_pcib_softc** %15, align 8
  %23 = load i64, i64* %9, align 8
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %78

25:                                               ; preds = %7
  %26 = load i64, i64* %11, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %25
  br label %166

29:                                               ; preds = %25
  store i32 0, i32* %20, align 4
  br label %30

30:                                               ; preds = %69, %29
  %31 = load i32, i32* %20, align 4
  %32 = load i32, i32* @TEGRA_PCIB_MAX_PORTS, align 4
  %33 = icmp slt i32 %31, %32
  br i1 %33, label %34, label %72

34:                                               ; preds = %30
  %35 = load %struct.tegra_pcib_softc*, %struct.tegra_pcib_softc** %15, align 8
  %36 = getelementptr inbounds %struct.tegra_pcib_softc, %struct.tegra_pcib_softc* %35, i32 0, i32 2
  %37 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %36, align 8
  %38 = load i32, i32* %20, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %37, i64 %39
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = icmp ne %struct.TYPE_2__* %41, null
  br i1 %42, label %43, label %68

43:                                               ; preds = %34
  %44 = load %struct.tegra_pcib_softc*, %struct.tegra_pcib_softc** %15, align 8
  %45 = getelementptr inbounds %struct.tegra_pcib_softc, %struct.tegra_pcib_softc* %44, i32 0, i32 2
  %46 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %45, align 8
  %47 = load i32, i32* %20, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %46, i64 %48
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* %10, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %68

55:                                               ; preds = %43
  %56 = load %struct.tegra_pcib_softc*, %struct.tegra_pcib_softc** %15, align 8
  %57 = getelementptr inbounds %struct.tegra_pcib_softc, %struct.tegra_pcib_softc* %56, i32 0, i32 2
  %58 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %57, align 8
  %59 = load i32, i32* %20, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %58, i64 %60
  %62 = load %struct.TYPE_2__*, %struct.TYPE_2__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 8
  store i32 %64, i32* %16, align 4
  %65 = load i64, i64* %12, align 8
  %66 = and i64 %65, 4095
  %67 = trunc i64 %66 to i32
  store i32 %67, i32* %17, align 4
  br label %72

68:                                               ; preds = %43, %34
  br label %69

69:                                               ; preds = %68
  %70 = load i32, i32* %20, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %20, align 4
  br label %30

72:                                               ; preds = %55, %30
  %73 = load i32, i32* %20, align 4
  %74 = load i32, i32* @TEGRA_PCIB_MAX_PORTS, align 4
  %75 = icmp sge i32 %73, %74
  br i1 %75, label %76, label %77

76:                                               ; preds = %72
  br label %166

77:                                               ; preds = %72
  br label %94

78:                                               ; preds = %7
  %79 = load %struct.tegra_pcib_softc*, %struct.tegra_pcib_softc** %15, align 8
  %80 = load i64, i64* %9, align 8
  %81 = load i64, i64* %10, align 8
  %82 = load i64, i64* %11, align 8
  %83 = load i64, i64* %12, align 8
  %84 = call i32 @tegra_pcbib_map_cfg(%struct.tegra_pcib_softc* %79, i64 %80, i64 %81, i64 %82, i64 %83)
  store i32 %84, i32* %19, align 4
  %85 = load i32, i32* %19, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %78
  br label %166

88:                                               ; preds = %78
  %89 = load %struct.tegra_pcib_softc*, %struct.tegra_pcib_softc** %15, align 8
  %90 = getelementptr inbounds %struct.tegra_pcib_softc, %struct.tegra_pcib_softc* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  store i32 %91, i32* %16, align 4
  %92 = load i64, i64* %12, align 8
  %93 = call i32 @PCI_CFG_BASE_REG(i64 %92)
  store i32 %93, i32* %17, align 4
  br label %94

94:                                               ; preds = %88, %77
  %95 = load i32, i32* %14, align 4
  switch i32 %95, label %166 [
    i32 4, label %96
    i32 2, label %104
    i32 1, label %135
  ]

96:                                               ; preds = %94
  %97 = load %struct.tegra_pcib_softc*, %struct.tegra_pcib_softc** %15, align 8
  %98 = getelementptr inbounds %struct.tegra_pcib_softc, %struct.tegra_pcib_softc* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = load i32, i32* %16, align 4
  %101 = load i32, i32* %17, align 4
  %102 = load i32, i32* %13, align 4
  %103 = call i32 @bus_space_write_4(i32 %99, i32 %100, i32 %101, i32 %102)
  br label %166

104:                                              ; preds = %94
  %105 = load %struct.tegra_pcib_softc*, %struct.tegra_pcib_softc** %15, align 8
  %106 = getelementptr inbounds %struct.tegra_pcib_softc, %struct.tegra_pcib_softc* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = load i32, i32* %16, align 4
  %109 = load i32, i32* %17, align 4
  %110 = and i32 %109, -4
  %111 = call i32 @bus_space_read_4(i32 %107, i32 %108, i32 %110)
  store i32 %111, i32* %18, align 4
  %112 = load i32, i32* %17, align 4
  %113 = and i32 %112, 3
  %114 = shl i32 %113, 3
  %115 = shl i32 65535, %114
  %116 = xor i32 %115, -1
  %117 = load i32, i32* %18, align 4
  %118 = and i32 %117, %116
  store i32 %118, i32* %18, align 4
  %119 = load i32, i32* %13, align 4
  %120 = and i32 %119, 65535
  %121 = load i32, i32* %17, align 4
  %122 = and i32 %121, 3
  %123 = shl i32 %122, 3
  %124 = shl i32 %120, %123
  %125 = load i32, i32* %18, align 4
  %126 = or i32 %125, %124
  store i32 %126, i32* %18, align 4
  %127 = load %struct.tegra_pcib_softc*, %struct.tegra_pcib_softc** %15, align 8
  %128 = getelementptr inbounds %struct.tegra_pcib_softc, %struct.tegra_pcib_softc* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = load i32, i32* %16, align 4
  %131 = load i32, i32* %17, align 4
  %132 = and i32 %131, -4
  %133 = load i32, i32* %18, align 4
  %134 = call i32 @bus_space_write_4(i32 %129, i32 %130, i32 %132, i32 %133)
  br label %166

135:                                              ; preds = %94
  %136 = load %struct.tegra_pcib_softc*, %struct.tegra_pcib_softc** %15, align 8
  %137 = getelementptr inbounds %struct.tegra_pcib_softc, %struct.tegra_pcib_softc* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = load i32, i32* %16, align 4
  %140 = load i32, i32* %17, align 4
  %141 = and i32 %140, -4
  %142 = call i32 @bus_space_read_4(i32 %138, i32 %139, i32 %141)
  store i32 %142, i32* %18, align 4
  %143 = load i32, i32* %17, align 4
  %144 = and i32 %143, 3
  %145 = shl i32 %144, 3
  %146 = shl i32 255, %145
  %147 = xor i32 %146, -1
  %148 = load i32, i32* %18, align 4
  %149 = and i32 %148, %147
  store i32 %149, i32* %18, align 4
  %150 = load i32, i32* %13, align 4
  %151 = and i32 %150, 255
  %152 = load i32, i32* %17, align 4
  %153 = and i32 %152, 3
  %154 = shl i32 %153, 3
  %155 = shl i32 %151, %154
  %156 = load i32, i32* %18, align 4
  %157 = or i32 %156, %155
  store i32 %157, i32* %18, align 4
  %158 = load %struct.tegra_pcib_softc*, %struct.tegra_pcib_softc** %15, align 8
  %159 = getelementptr inbounds %struct.tegra_pcib_softc, %struct.tegra_pcib_softc* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 8
  %161 = load i32, i32* %16, align 4
  %162 = load i32, i32* %17, align 4
  %163 = and i32 %162, -4
  %164 = load i32, i32* %18, align 4
  %165 = call i32 @bus_space_write_4(i32 %160, i32 %161, i32 %163, i32 %164)
  br label %166

166:                                              ; preds = %28, %76, %87, %94, %135, %104, %96
  ret void
}

declare dso_local %struct.tegra_pcib_softc* @device_get_softc(i32) #1

declare dso_local i32 @tegra_pcbib_map_cfg(%struct.tegra_pcib_softc*, i64, i64, i64, i64) #1

declare dso_local i32 @PCI_CFG_BASE_REG(i64) #1

declare dso_local i32 @bus_space_write_4(i32, i32, i32, i32) #1

declare dso_local i32 @bus_space_read_4(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
