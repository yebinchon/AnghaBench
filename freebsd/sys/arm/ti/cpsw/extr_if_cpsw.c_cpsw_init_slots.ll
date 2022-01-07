; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/ti/cpsw/extr_if_cpsw.c_cpsw_init_slots.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/ti/cpsw/extr_if_cpsw.c_cpsw_init_slots.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpsw_softc = type { i32, %struct.cpsw_slot* }
%struct.cpsw_slot = type { i32 }

@next = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cpsw_softc*)* @cpsw_init_slots to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cpsw_init_slots(%struct.cpsw_softc* %0) #0 {
  %2 = alloca %struct.cpsw_softc*, align 8
  %3 = alloca %struct.cpsw_slot*, align 8
  %4 = alloca i32, align 4
  store %struct.cpsw_softc* %0, %struct.cpsw_softc** %2, align 8
  %5 = load %struct.cpsw_softc*, %struct.cpsw_softc** %2, align 8
  %6 = getelementptr inbounds %struct.cpsw_softc, %struct.cpsw_softc* %5, i32 0, i32 0
  %7 = call i32 @STAILQ_INIT(i32* %6)
  store i32 0, i32* %4, align 4
  br label %8

8:                                                ; preds = %31, %1
  %9 = load i32, i32* %4, align 4
  %10 = load %struct.cpsw_softc*, %struct.cpsw_softc** %2, align 8
  %11 = getelementptr inbounds %struct.cpsw_softc, %struct.cpsw_softc* %10, i32 0, i32 1
  %12 = load %struct.cpsw_slot*, %struct.cpsw_slot** %11, align 8
  %13 = call i32 @nitems(%struct.cpsw_slot* %12)
  %14 = icmp slt i32 %9, %13
  br i1 %14, label %15, label %34

15:                                               ; preds = %8
  %16 = load %struct.cpsw_softc*, %struct.cpsw_softc** %2, align 8
  %17 = getelementptr inbounds %struct.cpsw_softc, %struct.cpsw_softc* %16, i32 0, i32 1
  %18 = load %struct.cpsw_slot*, %struct.cpsw_slot** %17, align 8
  %19 = load i32, i32* %4, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.cpsw_slot, %struct.cpsw_slot* %18, i64 %20
  store %struct.cpsw_slot* %21, %struct.cpsw_slot** %3, align 8
  %22 = load i32, i32* %4, align 4
  %23 = call i32 @cpsw_cpdma_bd_offset(i32 %22)
  %24 = load %struct.cpsw_slot*, %struct.cpsw_slot** %3, align 8
  %25 = getelementptr inbounds %struct.cpsw_slot, %struct.cpsw_slot* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 4
  %26 = load %struct.cpsw_softc*, %struct.cpsw_softc** %2, align 8
  %27 = getelementptr inbounds %struct.cpsw_softc, %struct.cpsw_softc* %26, i32 0, i32 0
  %28 = load %struct.cpsw_slot*, %struct.cpsw_slot** %3, align 8
  %29 = load i32, i32* @next, align 4
  %30 = call i32 @STAILQ_INSERT_TAIL(i32* %27, %struct.cpsw_slot* %28, i32 %29)
  br label %31

31:                                               ; preds = %15
  %32 = load i32, i32* %4, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %4, align 4
  br label %8

34:                                               ; preds = %8
  ret void
}

declare dso_local i32 @STAILQ_INIT(i32*) #1

declare dso_local i32 @nitems(%struct.cpsw_slot*) #1

declare dso_local i32 @cpsw_cpdma_bd_offset(i32) #1

declare dso_local i32 @STAILQ_INSERT_TAIL(i32*, %struct.cpsw_slot*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
