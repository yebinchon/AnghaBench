; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm64/cavium/extr_thunder_pcie_pem.c_thunder_pem_release_all.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm64/cavium/extr_thunder_pcie_pem.c_thunder_pem_release_all.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thunder_pem_softc = type { i32*, i32, i32 }

@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @thunder_pem_release_all to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @thunder_pem_release_all(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.thunder_pem_softc*, align 8
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = call %struct.thunder_pem_softc* @device_get_softc(i32 %4)
  store %struct.thunder_pem_softc* %5, %struct.thunder_pem_softc** %3, align 8
  %6 = load %struct.thunder_pem_softc*, %struct.thunder_pem_softc** %3, align 8
  %7 = getelementptr inbounds %struct.thunder_pem_softc, %struct.thunder_pem_softc* %6, i32 0, i32 2
  %8 = call i32 @rman_fini(i32* %7)
  %9 = load %struct.thunder_pem_softc*, %struct.thunder_pem_softc** %3, align 8
  %10 = getelementptr inbounds %struct.thunder_pem_softc, %struct.thunder_pem_softc* %9, i32 0, i32 1
  %11 = call i32 @rman_fini(i32* %10)
  %12 = load %struct.thunder_pem_softc*, %struct.thunder_pem_softc** %3, align 8
  %13 = getelementptr inbounds %struct.thunder_pem_softc, %struct.thunder_pem_softc* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  %15 = icmp ne i32* %14, null
  br i1 %15, label %16, label %23

16:                                               ; preds = %1
  %17 = load i32, i32* %2, align 4
  %18 = load i32, i32* @SYS_RES_MEMORY, align 4
  %19 = load %struct.thunder_pem_softc*, %struct.thunder_pem_softc** %3, align 8
  %20 = getelementptr inbounds %struct.thunder_pem_softc, %struct.thunder_pem_softc* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = call i32 @bus_free_resource(i32 %17, i32 %18, i32* %21)
  br label %23

23:                                               ; preds = %16, %1
  ret void
}

declare dso_local %struct.thunder_pem_softc* @device_get_softc(i32) #1

declare dso_local i32 @rman_fini(i32*) #1

declare dso_local i32 @bus_free_resource(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
