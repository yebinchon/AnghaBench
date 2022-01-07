; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/mv/extr_mv_pci.c_mv_pcib_init_bridge.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/mv/extr_mv_pci.c_mv_pcib_init_bridge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mv_pcib_softc = type { i32, i32, i32, i32, i32 }

@PCIR_IOBASEL_1 = common dso_local global i32 0, align 4
@PCIR_IOBASEH_1 = common dso_local global i32 0, align 4
@PCIR_IOLIMITL_1 = common dso_local global i32 0, align 4
@PCIR_IOLIMITH_1 = common dso_local global i32 0, align 4
@PCIR_MEMBASE_1 = common dso_local global i32 0, align 4
@PCIR_MEMLIMIT_1 = common dso_local global i32 0, align 4
@PCIR_PMBASEL_1 = common dso_local global i32 0, align 4
@PCIR_PMBASEH_1 = common dso_local global i32 0, align 4
@PCIR_PMLIMITL_1 = common dso_local global i32 0, align 4
@PCIR_PMLIMITH_1 = common dso_local global i32 0, align 4
@PCIR_SECBUS_1 = common dso_local global i32 0, align 4
@PCI_SLOTMAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mv_pcib_softc*, i32, i32, i32)* @mv_pcib_init_bridge to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mv_pcib_init_bridge(%struct.mv_pcib_softc* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.mv_pcib_softc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.mv_pcib_softc* %0, %struct.mv_pcib_softc** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %14 = load %struct.mv_pcib_softc*, %struct.mv_pcib_softc** %5, align 8
  %15 = getelementptr inbounds %struct.mv_pcib_softc, %struct.mv_pcib_softc* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %9, align 4
  %17 = load i32, i32* %9, align 4
  %18 = load %struct.mv_pcib_softc*, %struct.mv_pcib_softc** %5, align 8
  %19 = getelementptr inbounds %struct.mv_pcib_softc, %struct.mv_pcib_softc* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = add nsw i32 %17, %20
  %22 = sub nsw i32 %21, 1
  store i32 %22, i32* %11, align 4
  %23 = load %struct.mv_pcib_softc*, %struct.mv_pcib_softc** %5, align 8
  %24 = getelementptr inbounds %struct.mv_pcib_softc, %struct.mv_pcib_softc* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %10, align 4
  %26 = load i32, i32* %10, align 4
  %27 = load %struct.mv_pcib_softc*, %struct.mv_pcib_softc** %5, align 8
  %28 = getelementptr inbounds %struct.mv_pcib_softc, %struct.mv_pcib_softc* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 4
  %30 = add nsw i32 %26, %29
  %31 = sub nsw i32 %30, 1
  store i32 %31, i32* %12, align 4
  %32 = load %struct.mv_pcib_softc*, %struct.mv_pcib_softc** %5, align 8
  %33 = getelementptr inbounds %struct.mv_pcib_softc, %struct.mv_pcib_softc* %32, i32 0, i32 4
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* %6, align 4
  %36 = load i32, i32* %7, align 4
  %37 = load i32, i32* %8, align 4
  %38 = load i32, i32* @PCIR_IOBASEL_1, align 4
  %39 = load i32, i32* %9, align 4
  %40 = ashr i32 %39, 8
  %41 = call i32 @mv_pcib_write_config(i32 %34, i32 %35, i32 %36, i32 %37, i32 %38, i32 %40, i32 1)
  %42 = load %struct.mv_pcib_softc*, %struct.mv_pcib_softc** %5, align 8
  %43 = getelementptr inbounds %struct.mv_pcib_softc, %struct.mv_pcib_softc* %42, i32 0, i32 4
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* %6, align 4
  %46 = load i32, i32* %7, align 4
  %47 = load i32, i32* %8, align 4
  %48 = load i32, i32* @PCIR_IOBASEH_1, align 4
  %49 = load i32, i32* %9, align 4
  %50 = ashr i32 %49, 16
  %51 = call i32 @mv_pcib_write_config(i32 %44, i32 %45, i32 %46, i32 %47, i32 %48, i32 %50, i32 2)
  %52 = load %struct.mv_pcib_softc*, %struct.mv_pcib_softc** %5, align 8
  %53 = getelementptr inbounds %struct.mv_pcib_softc, %struct.mv_pcib_softc* %52, i32 0, i32 4
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* %6, align 4
  %56 = load i32, i32* %7, align 4
  %57 = load i32, i32* %8, align 4
  %58 = load i32, i32* @PCIR_IOLIMITL_1, align 4
  %59 = load i32, i32* %11, align 4
  %60 = ashr i32 %59, 8
  %61 = call i32 @mv_pcib_write_config(i32 %54, i32 %55, i32 %56, i32 %57, i32 %58, i32 %60, i32 1)
  %62 = load %struct.mv_pcib_softc*, %struct.mv_pcib_softc** %5, align 8
  %63 = getelementptr inbounds %struct.mv_pcib_softc, %struct.mv_pcib_softc* %62, i32 0, i32 4
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* %6, align 4
  %66 = load i32, i32* %7, align 4
  %67 = load i32, i32* %8, align 4
  %68 = load i32, i32* @PCIR_IOLIMITH_1, align 4
  %69 = load i32, i32* %11, align 4
  %70 = ashr i32 %69, 16
  %71 = call i32 @mv_pcib_write_config(i32 %64, i32 %65, i32 %66, i32 %67, i32 %68, i32 %70, i32 2)
  %72 = load %struct.mv_pcib_softc*, %struct.mv_pcib_softc** %5, align 8
  %73 = getelementptr inbounds %struct.mv_pcib_softc, %struct.mv_pcib_softc* %72, i32 0, i32 4
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* %6, align 4
  %76 = load i32, i32* %7, align 4
  %77 = load i32, i32* %8, align 4
  %78 = load i32, i32* @PCIR_MEMBASE_1, align 4
  %79 = load i32, i32* %10, align 4
  %80 = ashr i32 %79, 16
  %81 = call i32 @mv_pcib_write_config(i32 %74, i32 %75, i32 %76, i32 %77, i32 %78, i32 %80, i32 2)
  %82 = load %struct.mv_pcib_softc*, %struct.mv_pcib_softc** %5, align 8
  %83 = getelementptr inbounds %struct.mv_pcib_softc, %struct.mv_pcib_softc* %82, i32 0, i32 4
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* %6, align 4
  %86 = load i32, i32* %7, align 4
  %87 = load i32, i32* %8, align 4
  %88 = load i32, i32* @PCIR_MEMLIMIT_1, align 4
  %89 = load i32, i32* %12, align 4
  %90 = ashr i32 %89, 16
  %91 = call i32 @mv_pcib_write_config(i32 %84, i32 %85, i32 %86, i32 %87, i32 %88, i32 %90, i32 2)
  %92 = load %struct.mv_pcib_softc*, %struct.mv_pcib_softc** %5, align 8
  %93 = getelementptr inbounds %struct.mv_pcib_softc, %struct.mv_pcib_softc* %92, i32 0, i32 4
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* %6, align 4
  %96 = load i32, i32* %7, align 4
  %97 = load i32, i32* %8, align 4
  %98 = load i32, i32* @PCIR_PMBASEL_1, align 4
  %99 = call i32 @mv_pcib_write_config(i32 %94, i32 %95, i32 %96, i32 %97, i32 %98, i32 16, i32 2)
  %100 = load %struct.mv_pcib_softc*, %struct.mv_pcib_softc** %5, align 8
  %101 = getelementptr inbounds %struct.mv_pcib_softc, %struct.mv_pcib_softc* %100, i32 0, i32 4
  %102 = load i32, i32* %101, align 4
  %103 = load i32, i32* %6, align 4
  %104 = load i32, i32* %7, align 4
  %105 = load i32, i32* %8, align 4
  %106 = load i32, i32* @PCIR_PMBASEH_1, align 4
  %107 = call i32 @mv_pcib_write_config(i32 %102, i32 %103, i32 %104, i32 %105, i32 %106, i32 0, i32 4)
  %108 = load %struct.mv_pcib_softc*, %struct.mv_pcib_softc** %5, align 8
  %109 = getelementptr inbounds %struct.mv_pcib_softc, %struct.mv_pcib_softc* %108, i32 0, i32 4
  %110 = load i32, i32* %109, align 4
  %111 = load i32, i32* %6, align 4
  %112 = load i32, i32* %7, align 4
  %113 = load i32, i32* %8, align 4
  %114 = load i32, i32* @PCIR_PMLIMITL_1, align 4
  %115 = call i32 @mv_pcib_write_config(i32 %110, i32 %111, i32 %112, i32 %113, i32 %114, i32 15, i32 2)
  %116 = load %struct.mv_pcib_softc*, %struct.mv_pcib_softc** %5, align 8
  %117 = getelementptr inbounds %struct.mv_pcib_softc, %struct.mv_pcib_softc* %116, i32 0, i32 4
  %118 = load i32, i32* %117, align 4
  %119 = load i32, i32* %6, align 4
  %120 = load i32, i32* %7, align 4
  %121 = load i32, i32* %8, align 4
  %122 = load i32, i32* @PCIR_PMLIMITH_1, align 4
  %123 = call i32 @mv_pcib_write_config(i32 %118, i32 %119, i32 %120, i32 %121, i32 %122, i32 0, i32 4)
  %124 = load %struct.mv_pcib_softc*, %struct.mv_pcib_softc** %5, align 8
  %125 = getelementptr inbounds %struct.mv_pcib_softc, %struct.mv_pcib_softc* %124, i32 0, i32 4
  %126 = load i32, i32* %125, align 4
  %127 = load i32, i32* %6, align 4
  %128 = load i32, i32* %7, align 4
  %129 = load i32, i32* %8, align 4
  %130 = load i32, i32* @PCIR_SECBUS_1, align 4
  %131 = call i32 @mv_pcib_read_config(i32 %126, i32 %127, i32 %128, i32 %129, i32 %130, i32 1)
  store i32 %131, i32* %13, align 4
  %132 = load %struct.mv_pcib_softc*, %struct.mv_pcib_softc** %5, align 8
  %133 = load i32, i32* %13, align 4
  %134 = load i32, i32* @PCI_SLOTMAX, align 4
  %135 = call i32 @mv_pcib_init(%struct.mv_pcib_softc* %132, i32 %133, i32 %134)
  ret void
}

declare dso_local i32 @mv_pcib_write_config(i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @mv_pcib_read_config(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @mv_pcib_init(%struct.mv_pcib_softc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
