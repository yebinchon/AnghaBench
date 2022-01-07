; ModuleID = '/home/carl/AnghaBench/freebsd/sys/crypto/ccp/extr_ccp_hardware.c_ccp_map_pci_bar.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/crypto/ccp/extr_ccp_hardware.c_ccp_map_pci_bar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ccp_softc = type { i32*, i32, i32, i8*, i32*, i8* }

@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@RF_ACTIVE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"unable to allocate pci resource\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"unable to allocate pci resource msix\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @ccp_map_pci_bar to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ccp_map_pci_bar(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.ccp_softc*, align 8
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  %6 = call %struct.ccp_softc* @device_get_softc(i32 %5)
  store %struct.ccp_softc* %6, %struct.ccp_softc** %4, align 8
  %7 = call i8* @PCIR_BAR(i32 2)
  %8 = load %struct.ccp_softc*, %struct.ccp_softc** %4, align 8
  %9 = getelementptr inbounds %struct.ccp_softc, %struct.ccp_softc* %8, i32 0, i32 3
  store i8* %7, i8** %9, align 8
  %10 = load i32, i32* %3, align 4
  %11 = load i32, i32* @SYS_RES_MEMORY, align 4
  %12 = load %struct.ccp_softc*, %struct.ccp_softc** %4, align 8
  %13 = getelementptr inbounds %struct.ccp_softc, %struct.ccp_softc* %12, i32 0, i32 3
  %14 = load i32, i32* @RF_ACTIVE, align 4
  %15 = call i8* @bus_alloc_resource_any(i32 %10, i32 %11, i8** %13, i32 %14)
  %16 = bitcast i8* %15 to i32*
  %17 = load %struct.ccp_softc*, %struct.ccp_softc** %4, align 8
  %18 = getelementptr inbounds %struct.ccp_softc, %struct.ccp_softc* %17, i32 0, i32 0
  store i32* %16, i32** %18, align 8
  %19 = load %struct.ccp_softc*, %struct.ccp_softc** %4, align 8
  %20 = getelementptr inbounds %struct.ccp_softc, %struct.ccp_softc* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = icmp eq i32* %21, null
  br i1 %22, label %23, label %27

23:                                               ; preds = %1
  %24 = load i32, i32* %3, align 4
  %25 = call i32 @device_printf(i32 %24, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %26 = load i32, i32* @ENODEV, align 4
  store i32 %26, i32* %2, align 4
  br label %70

27:                                               ; preds = %1
  %28 = call i8* @PCIR_BAR(i32 5)
  %29 = load %struct.ccp_softc*, %struct.ccp_softc** %4, align 8
  %30 = getelementptr inbounds %struct.ccp_softc, %struct.ccp_softc* %29, i32 0, i32 5
  store i8* %28, i8** %30, align 8
  %31 = load i32, i32* %3, align 4
  %32 = load i32, i32* @SYS_RES_MEMORY, align 4
  %33 = load %struct.ccp_softc*, %struct.ccp_softc** %4, align 8
  %34 = getelementptr inbounds %struct.ccp_softc, %struct.ccp_softc* %33, i32 0, i32 5
  %35 = load i32, i32* @RF_ACTIVE, align 4
  %36 = call i8* @bus_alloc_resource_any(i32 %31, i32 %32, i8** %34, i32 %35)
  %37 = bitcast i8* %36 to i32*
  %38 = load %struct.ccp_softc*, %struct.ccp_softc** %4, align 8
  %39 = getelementptr inbounds %struct.ccp_softc, %struct.ccp_softc* %38, i32 0, i32 4
  store i32* %37, i32** %39, align 8
  %40 = load %struct.ccp_softc*, %struct.ccp_softc** %4, align 8
  %41 = getelementptr inbounds %struct.ccp_softc, %struct.ccp_softc* %40, i32 0, i32 4
  %42 = load i32*, i32** %41, align 8
  %43 = icmp eq i32* %42, null
  br i1 %43, label %44, label %57

44:                                               ; preds = %27
  %45 = load i32, i32* %3, align 4
  %46 = call i32 @device_printf(i32 %45, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  %47 = load i32, i32* %3, align 4
  %48 = load i32, i32* @SYS_RES_MEMORY, align 4
  %49 = load %struct.ccp_softc*, %struct.ccp_softc** %4, align 8
  %50 = getelementptr inbounds %struct.ccp_softc, %struct.ccp_softc* %49, i32 0, i32 3
  %51 = load i8*, i8** %50, align 8
  %52 = load %struct.ccp_softc*, %struct.ccp_softc** %4, align 8
  %53 = getelementptr inbounds %struct.ccp_softc, %struct.ccp_softc* %52, i32 0, i32 0
  %54 = load i32*, i32** %53, align 8
  %55 = call i32 @bus_release_resource(i32 %47, i32 %48, i8* %51, i32* %54)
  %56 = load i32, i32* @ENODEV, align 4
  store i32 %56, i32* %2, align 4
  br label %70

57:                                               ; preds = %27
  %58 = load %struct.ccp_softc*, %struct.ccp_softc** %4, align 8
  %59 = getelementptr inbounds %struct.ccp_softc, %struct.ccp_softc* %58, i32 0, i32 0
  %60 = load i32*, i32** %59, align 8
  %61 = call i32 @rman_get_bustag(i32* %60)
  %62 = load %struct.ccp_softc*, %struct.ccp_softc** %4, align 8
  %63 = getelementptr inbounds %struct.ccp_softc, %struct.ccp_softc* %62, i32 0, i32 2
  store i32 %61, i32* %63, align 4
  %64 = load %struct.ccp_softc*, %struct.ccp_softc** %4, align 8
  %65 = getelementptr inbounds %struct.ccp_softc, %struct.ccp_softc* %64, i32 0, i32 0
  %66 = load i32*, i32** %65, align 8
  %67 = call i32 @rman_get_bushandle(i32* %66)
  %68 = load %struct.ccp_softc*, %struct.ccp_softc** %4, align 8
  %69 = getelementptr inbounds %struct.ccp_softc, %struct.ccp_softc* %68, i32 0, i32 1
  store i32 %67, i32* %69, align 8
  store i32 0, i32* %2, align 4
  br label %70

70:                                               ; preds = %57, %44, %23
  %71 = load i32, i32* %2, align 4
  ret i32 %71
}

declare dso_local %struct.ccp_softc* @device_get_softc(i32) #1

declare dso_local i8* @PCIR_BAR(i32) #1

declare dso_local i8* @bus_alloc_resource_any(i32, i32, i8**, i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @bus_release_resource(i32, i32, i8*, i32*) #1

declare dso_local i32 @rman_get_bustag(i32*) #1

declare dso_local i32 @rman_get_bushandle(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
