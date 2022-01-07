; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/ti/cpsw/extr_if_cpsw.c_cpsw_free_slot.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/ti/cpsw/extr_if_cpsw.c_cpsw_free_slot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpsw_softc = type { i32 }
%struct.cpsw_slot = type { i32*, i32* }

@.str = private unnamed_addr constant [21 x i8] c"Mapping still active\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cpsw_softc*, %struct.cpsw_slot*)* @cpsw_free_slot to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cpsw_free_slot(%struct.cpsw_softc* %0, %struct.cpsw_slot* %1) #0 {
  %3 = alloca %struct.cpsw_softc*, align 8
  %4 = alloca %struct.cpsw_slot*, align 8
  %5 = alloca i32, align 4
  store %struct.cpsw_softc* %0, %struct.cpsw_softc** %3, align 8
  store %struct.cpsw_slot* %1, %struct.cpsw_slot** %4, align 8
  %6 = load %struct.cpsw_slot*, %struct.cpsw_slot** %4, align 8
  %7 = getelementptr inbounds %struct.cpsw_slot, %struct.cpsw_slot* %6, i32 0, i32 1
  %8 = load i32*, i32** %7, align 8
  %9 = icmp ne i32* %8, null
  br i1 %9, label %10, label %37

10:                                               ; preds = %2
  %11 = load %struct.cpsw_slot*, %struct.cpsw_slot** %4, align 8
  %12 = getelementptr inbounds %struct.cpsw_slot, %struct.cpsw_slot* %11, i32 0, i32 0
  %13 = load i32*, i32** %12, align 8
  %14 = icmp ne i32* %13, null
  br i1 %14, label %15, label %23

15:                                               ; preds = %10
  %16 = load %struct.cpsw_softc*, %struct.cpsw_softc** %3, align 8
  %17 = getelementptr inbounds %struct.cpsw_softc, %struct.cpsw_softc* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.cpsw_slot*, %struct.cpsw_slot** %4, align 8
  %20 = getelementptr inbounds %struct.cpsw_slot, %struct.cpsw_slot* %19, i32 0, i32 1
  %21 = load i32*, i32** %20, align 8
  %22 = call i32 @bus_dmamap_unload(i32 %18, i32* %21)
  br label %23

23:                                               ; preds = %15, %10
  %24 = load %struct.cpsw_softc*, %struct.cpsw_softc** %3, align 8
  %25 = getelementptr inbounds %struct.cpsw_softc, %struct.cpsw_softc* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.cpsw_slot*, %struct.cpsw_slot** %4, align 8
  %28 = getelementptr inbounds %struct.cpsw_slot, %struct.cpsw_slot* %27, i32 0, i32 1
  %29 = load i32*, i32** %28, align 8
  %30 = call i32 @bus_dmamap_destroy(i32 %26, i32* %29)
  store i32 %30, i32* %5, align 4
  %31 = load i32, i32* %5, align 4
  %32 = icmp eq i32 %31, 0
  %33 = zext i1 %32 to i32
  %34 = call i32 @KASSERT(i32 %33, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %35 = load %struct.cpsw_slot*, %struct.cpsw_slot** %4, align 8
  %36 = getelementptr inbounds %struct.cpsw_slot, %struct.cpsw_slot* %35, i32 0, i32 1
  store i32* null, i32** %36, align 8
  br label %37

37:                                               ; preds = %23, %2
  %38 = load %struct.cpsw_slot*, %struct.cpsw_slot** %4, align 8
  %39 = getelementptr inbounds %struct.cpsw_slot, %struct.cpsw_slot* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = icmp ne i32* %40, null
  br i1 %41, label %42, label %49

42:                                               ; preds = %37
  %43 = load %struct.cpsw_slot*, %struct.cpsw_slot** %4, align 8
  %44 = getelementptr inbounds %struct.cpsw_slot, %struct.cpsw_slot* %43, i32 0, i32 0
  %45 = load i32*, i32** %44, align 8
  %46 = call i32 @m_freem(i32* %45)
  %47 = load %struct.cpsw_slot*, %struct.cpsw_slot** %4, align 8
  %48 = getelementptr inbounds %struct.cpsw_slot, %struct.cpsw_slot* %47, i32 0, i32 0
  store i32* null, i32** %48, align 8
  br label %49

49:                                               ; preds = %42, %37
  ret void
}

declare dso_local i32 @bus_dmamap_unload(i32, i32*) #1

declare dso_local i32 @bus_dmamap_destroy(i32, i32*) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @m_freem(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
