; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/mv/extr_mv_pci.c_mv_pcib_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/mv/extr_mv_pci.c_mv_pcib_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mv_pcib_softc = type { i32 }

@PCIR_HDRTYPE = common dso_local global i32 0, align 4
@PCIM_HDRTYPE = common dso_local global i64 0, align 8
@PCI_MAXHDRTYPE = common dso_local global i64 0, align 8
@PCIM_MFDEV = common dso_local global i64 0, align 8
@PCI_FUNCMAX = common dso_local global i32 0, align 4
@PCIR_COMMAND = common dso_local global i32 0, align 4
@PCIM_CMD_MEMEN = common dso_local global i64 0, align 8
@PCIM_CMD_PORTEN = common dso_local global i64 0, align 8
@PCIM_CMD_BUSMASTEREN = common dso_local global i64 0, align 8
@PCIR_CLASS = common dso_local global i32 0, align 4
@PCIR_SUBCLASS = common dso_local global i32 0, align 4
@PCIC_BRIDGE = common dso_local global i64 0, align 8
@PCIS_BRIDGE_PCI = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mv_pcib_softc*, i32, i32)* @mv_pcib_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mv_pcib_init(%struct.mv_pcib_softc* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mv_pcib_softc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  store %struct.mv_pcib_softc* %0, %struct.mv_pcib_softc** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %16

16:                                               ; preds = %135, %3
  %17 = load i32, i32* %8, align 4
  %18 = load i32, i32* %7, align 4
  %19 = icmp sle i32 %17, %18
  br i1 %19, label %20, label %138

20:                                               ; preds = %16
  store i32 0, i32* %10, align 4
  store i32 0, i32* %9, align 4
  br label %21

21:                                               ; preds = %131, %20
  %22 = load i32, i32* %9, align 4
  %23 = load i32, i32* %10, align 4
  %24 = icmp sle i32 %22, %23
  br i1 %24, label %25, label %134

25:                                               ; preds = %21
  %26 = load %struct.mv_pcib_softc*, %struct.mv_pcib_softc** %5, align 8
  %27 = getelementptr inbounds %struct.mv_pcib_softc, %struct.mv_pcib_softc* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* %8, align 4
  %31 = load i32, i32* %9, align 4
  %32 = load i32, i32* @PCIR_HDRTYPE, align 4
  %33 = call i64 @mv_pcib_read_config(i32 %28, i32 %29, i32 %30, i32 %31, i32 %32, i32 1)
  store i64 %33, i64* %12, align 8
  %34 = load i64, i64* %12, align 8
  %35 = load i64, i64* @PCIM_HDRTYPE, align 8
  %36 = and i64 %34, %35
  %37 = load i64, i64* @PCI_MAXHDRTYPE, align 8
  %38 = icmp sgt i64 %36, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %25
  br label %131

40:                                               ; preds = %25
  %41 = load i32, i32* %9, align 4
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %50

43:                                               ; preds = %40
  %44 = load i64, i64* %12, align 8
  %45 = load i64, i64* @PCIM_MFDEV, align 8
  %46 = and i64 %44, %45
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %43
  %49 = load i32, i32* @PCI_FUNCMAX, align 4
  store i32 %49, i32* %10, align 4
  br label %50

50:                                               ; preds = %48, %43, %40
  %51 = load %struct.mv_pcib_softc*, %struct.mv_pcib_softc** %5, align 8
  %52 = getelementptr inbounds %struct.mv_pcib_softc, %struct.mv_pcib_softc* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* %6, align 4
  %55 = load i32, i32* %8, align 4
  %56 = load i32, i32* %9, align 4
  %57 = load i32, i32* @PCIR_COMMAND, align 4
  %58 = call i64 @mv_pcib_read_config(i32 %53, i32 %54, i32 %55, i32 %56, i32 %57, i32 1)
  store i64 %58, i64* %13, align 8
  %59 = load i64, i64* @PCIM_CMD_MEMEN, align 8
  %60 = load i64, i64* @PCIM_CMD_PORTEN, align 8
  %61 = or i64 %59, %60
  %62 = xor i64 %61, -1
  %63 = load i64, i64* %13, align 8
  %64 = and i64 %63, %62
  store i64 %64, i64* %13, align 8
  %65 = load %struct.mv_pcib_softc*, %struct.mv_pcib_softc** %5, align 8
  %66 = getelementptr inbounds %struct.mv_pcib_softc, %struct.mv_pcib_softc* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* %6, align 4
  %69 = load i32, i32* %8, align 4
  %70 = load i32, i32* %9, align 4
  %71 = load i32, i32* @PCIR_COMMAND, align 4
  %72 = load i64, i64* %13, align 8
  %73 = call i32 @mv_pcib_write_config(i32 %67, i32 %68, i32 %69, i32 %70, i32 %71, i64 %72, i32 1)
  %74 = load %struct.mv_pcib_softc*, %struct.mv_pcib_softc** %5, align 8
  %75 = load i32, i32* %6, align 4
  %76 = load i32, i32* %8, align 4
  %77 = load i32, i32* %9, align 4
  %78 = load i64, i64* %12, align 8
  %79 = call i32 @mv_pcib_init_all_bars(%struct.mv_pcib_softc* %74, i32 %75, i32 %76, i32 %77, i64 %78)
  store i32 %79, i32* %11, align 4
  %80 = load i32, i32* %11, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %50
  %83 = load i32, i32* %11, align 4
  store i32 %83, i32* %4, align 4
  br label %141

84:                                               ; preds = %50
  %85 = load i64, i64* @PCIM_CMD_BUSMASTEREN, align 8
  %86 = load i64, i64* @PCIM_CMD_MEMEN, align 8
  %87 = or i64 %85, %86
  %88 = load i64, i64* @PCIM_CMD_PORTEN, align 8
  %89 = or i64 %87, %88
  %90 = load i64, i64* %13, align 8
  %91 = or i64 %90, %89
  store i64 %91, i64* %13, align 8
  %92 = load %struct.mv_pcib_softc*, %struct.mv_pcib_softc** %5, align 8
  %93 = getelementptr inbounds %struct.mv_pcib_softc, %struct.mv_pcib_softc* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* %6, align 4
  %96 = load i32, i32* %8, align 4
  %97 = load i32, i32* %9, align 4
  %98 = load i32, i32* @PCIR_COMMAND, align 4
  %99 = load i64, i64* %13, align 8
  %100 = call i32 @mv_pcib_write_config(i32 %94, i32 %95, i32 %96, i32 %97, i32 %98, i64 %99, i32 1)
  %101 = load %struct.mv_pcib_softc*, %struct.mv_pcib_softc** %5, align 8
  %102 = getelementptr inbounds %struct.mv_pcib_softc, %struct.mv_pcib_softc* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = load i32, i32* %6, align 4
  %105 = load i32, i32* %8, align 4
  %106 = load i32, i32* %9, align 4
  %107 = load i32, i32* @PCIR_CLASS, align 4
  %108 = call i64 @mv_pcib_read_config(i32 %103, i32 %104, i32 %105, i32 %106, i32 %107, i32 1)
  store i64 %108, i64* %14, align 8
  %109 = load %struct.mv_pcib_softc*, %struct.mv_pcib_softc** %5, align 8
  %110 = getelementptr inbounds %struct.mv_pcib_softc, %struct.mv_pcib_softc* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = load i32, i32* %6, align 4
  %113 = load i32, i32* %8, align 4
  %114 = load i32, i32* %9, align 4
  %115 = load i32, i32* @PCIR_SUBCLASS, align 4
  %116 = call i64 @mv_pcib_read_config(i32 %111, i32 %112, i32 %113, i32 %114, i32 %115, i32 1)
  store i64 %116, i64* %15, align 8
  %117 = load i64, i64* %14, align 8
  %118 = load i64, i64* @PCIC_BRIDGE, align 8
  %119 = icmp ne i64 %117, %118
  br i1 %119, label %124, label %120

120:                                              ; preds = %84
  %121 = load i64, i64* %15, align 8
  %122 = load i64, i64* @PCIS_BRIDGE_PCI, align 8
  %123 = icmp ne i64 %121, %122
  br i1 %123, label %124, label %125

124:                                              ; preds = %120, %84
  br label %131

125:                                              ; preds = %120
  %126 = load %struct.mv_pcib_softc*, %struct.mv_pcib_softc** %5, align 8
  %127 = load i32, i32* %6, align 4
  %128 = load i32, i32* %8, align 4
  %129 = load i32, i32* %9, align 4
  %130 = call i32 @mv_pcib_init_bridge(%struct.mv_pcib_softc* %126, i32 %127, i32 %128, i32 %129)
  br label %131

131:                                              ; preds = %125, %124, %39
  %132 = load i32, i32* %9, align 4
  %133 = add nsw i32 %132, 1
  store i32 %133, i32* %9, align 4
  br label %21

134:                                              ; preds = %21
  br label %135

135:                                              ; preds = %134
  %136 = load i32, i32* %8, align 4
  %137 = add nsw i32 %136, 1
  store i32 %137, i32* %8, align 4
  br label %16

138:                                              ; preds = %16
  %139 = load %struct.mv_pcib_softc*, %struct.mv_pcib_softc** %5, align 8
  %140 = call i32 @pcib_write_irq_mask(%struct.mv_pcib_softc* %139, i32 251658240)
  store i32 0, i32* %4, align 4
  br label %141

141:                                              ; preds = %138, %82
  %142 = load i32, i32* %4, align 4
  ret i32 %142
}

declare dso_local i64 @mv_pcib_read_config(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @mv_pcib_write_config(i32, i32, i32, i32, i32, i64, i32) #1

declare dso_local i32 @mv_pcib_init_all_bars(%struct.mv_pcib_softc*, i32, i32, i32, i64) #1

declare dso_local i32 @mv_pcib_init_bridge(%struct.mv_pcib_softc*, i32, i32, i32) #1

declare dso_local i32 @pcib_write_irq_mask(%struct.mv_pcib_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
