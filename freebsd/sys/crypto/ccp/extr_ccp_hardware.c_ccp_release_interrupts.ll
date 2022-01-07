; ModuleID = '/home/carl/AnghaBench/freebsd/sys/crypto/ccp/extr_ccp_hardware.c_ccp_release_interrupts.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/crypto/ccp/extr_ccp_hardware.c_ccp_release_interrupts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ccp_softc = type { i32, i32, i32**, i32** }

@SYS_RES_IRQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ccp_softc*)* @ccp_release_interrupts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ccp_release_interrupts(%struct.ccp_softc* %0) #0 {
  %2 = alloca %struct.ccp_softc*, align 8
  %3 = alloca i32, align 4
  store %struct.ccp_softc* %0, %struct.ccp_softc** %2, align 8
  store i32 0, i32* %3, align 4
  br label %4

4:                                                ; preds = %69, %1
  %5 = load i32, i32* %3, align 4
  %6 = load %struct.ccp_softc*, %struct.ccp_softc** %2, align 8
  %7 = getelementptr inbounds %struct.ccp_softc, %struct.ccp_softc* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = icmp ult i32 %5, %8
  br i1 %9, label %10, label %72

10:                                               ; preds = %4
  %11 = load %struct.ccp_softc*, %struct.ccp_softc** %2, align 8
  %12 = getelementptr inbounds %struct.ccp_softc, %struct.ccp_softc* %11, i32 0, i32 3
  %13 = load i32**, i32*** %12, align 8
  %14 = load i32, i32* %3, align 4
  %15 = zext i32 %14 to i64
  %16 = getelementptr inbounds i32*, i32** %13, i64 %15
  %17 = load i32*, i32** %16, align 8
  %18 = icmp ne i32* %17, null
  br i1 %18, label %19, label %38

19:                                               ; preds = %10
  %20 = load %struct.ccp_softc*, %struct.ccp_softc** %2, align 8
  %21 = getelementptr inbounds %struct.ccp_softc, %struct.ccp_softc* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.ccp_softc*, %struct.ccp_softc** %2, align 8
  %24 = getelementptr inbounds %struct.ccp_softc, %struct.ccp_softc* %23, i32 0, i32 2
  %25 = load i32**, i32*** %24, align 8
  %26 = load i32, i32* %3, align 4
  %27 = zext i32 %26 to i64
  %28 = getelementptr inbounds i32*, i32** %25, i64 %27
  %29 = load i32*, i32** %28, align 8
  %30 = load %struct.ccp_softc*, %struct.ccp_softc** %2, align 8
  %31 = getelementptr inbounds %struct.ccp_softc, %struct.ccp_softc* %30, i32 0, i32 3
  %32 = load i32**, i32*** %31, align 8
  %33 = load i32, i32* %3, align 4
  %34 = zext i32 %33 to i64
  %35 = getelementptr inbounds i32*, i32** %32, i64 %34
  %36 = load i32*, i32** %35, align 8
  %37 = call i32 @bus_teardown_intr(i32 %22, i32* %29, i32* %36)
  br label %38

38:                                               ; preds = %19, %10
  %39 = load %struct.ccp_softc*, %struct.ccp_softc** %2, align 8
  %40 = getelementptr inbounds %struct.ccp_softc, %struct.ccp_softc* %39, i32 0, i32 2
  %41 = load i32**, i32*** %40, align 8
  %42 = load i32, i32* %3, align 4
  %43 = zext i32 %42 to i64
  %44 = getelementptr inbounds i32*, i32** %41, i64 %43
  %45 = load i32*, i32** %44, align 8
  %46 = icmp ne i32* %45, null
  br i1 %46, label %47, label %68

47:                                               ; preds = %38
  %48 = load %struct.ccp_softc*, %struct.ccp_softc** %2, align 8
  %49 = getelementptr inbounds %struct.ccp_softc, %struct.ccp_softc* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @SYS_RES_IRQ, align 4
  %52 = load %struct.ccp_softc*, %struct.ccp_softc** %2, align 8
  %53 = getelementptr inbounds %struct.ccp_softc, %struct.ccp_softc* %52, i32 0, i32 2
  %54 = load i32**, i32*** %53, align 8
  %55 = load i32, i32* %3, align 4
  %56 = zext i32 %55 to i64
  %57 = getelementptr inbounds i32*, i32** %54, i64 %56
  %58 = load i32*, i32** %57, align 8
  %59 = call i32 @rman_get_rid(i32* %58)
  %60 = load %struct.ccp_softc*, %struct.ccp_softc** %2, align 8
  %61 = getelementptr inbounds %struct.ccp_softc, %struct.ccp_softc* %60, i32 0, i32 2
  %62 = load i32**, i32*** %61, align 8
  %63 = load i32, i32* %3, align 4
  %64 = zext i32 %63 to i64
  %65 = getelementptr inbounds i32*, i32** %62, i64 %64
  %66 = load i32*, i32** %65, align 8
  %67 = call i32 @bus_release_resource(i32 %50, i32 %51, i32 %59, i32* %66)
  br label %68

68:                                               ; preds = %47, %38
  br label %69

69:                                               ; preds = %68
  %70 = load i32, i32* %3, align 4
  %71 = add i32 %70, 1
  store i32 %71, i32* %3, align 4
  br label %4

72:                                               ; preds = %4
  %73 = load %struct.ccp_softc*, %struct.ccp_softc** %2, align 8
  %74 = getelementptr inbounds %struct.ccp_softc, %struct.ccp_softc* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @pci_release_msi(i32 %75)
  ret void
}

declare dso_local i32 @bus_teardown_intr(i32, i32*, i32*) #1

declare dso_local i32 @bus_release_resource(i32, i32, i32, i32*) #1

declare dso_local i32 @rman_get_rid(i32*) #1

declare dso_local i32 @pci_release_msi(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
