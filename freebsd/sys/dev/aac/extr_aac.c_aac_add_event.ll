; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/aac/extr_aac.c_aac_add_event.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/aac/extr_aac.c_aac_add_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aac_softc = type { i32, i32 }
%struct.aac_event = type { i32 }

@AAC_EVENT_MASK = common dso_local global i32 0, align 4
@ev_links = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"aac_add event: unknown event %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @aac_add_event(%struct.aac_softc* %0, %struct.aac_event* %1) #0 {
  %3 = alloca %struct.aac_softc*, align 8
  %4 = alloca %struct.aac_event*, align 8
  store %struct.aac_softc* %0, %struct.aac_softc** %3, align 8
  store %struct.aac_event* %1, %struct.aac_event** %4, align 8
  %5 = load %struct.aac_event*, %struct.aac_event** %4, align 8
  %6 = getelementptr inbounds %struct.aac_event, %struct.aac_event* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* @AAC_EVENT_MASK, align 4
  %9 = and i32 %7, %8
  switch i32 %9, label %16 [
    i32 128, label %10
  ]

10:                                               ; preds = %2
  %11 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %12 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %11, i32 0, i32 1
  %13 = load %struct.aac_event*, %struct.aac_event** %4, align 8
  %14 = load i32, i32* @ev_links, align 4
  %15 = call i32 @TAILQ_INSERT_TAIL(i32* %12, %struct.aac_event* %13, i32 %14)
  br label %24

16:                                               ; preds = %2
  %17 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %18 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.aac_event*, %struct.aac_event** %4, align 8
  %21 = getelementptr inbounds %struct.aac_event, %struct.aac_event* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @device_printf(i32 %19, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %22)
  br label %24

24:                                               ; preds = %16, %10
  ret void
}

declare dso_local i32 @TAILQ_INSERT_TAIL(i32*, %struct.aac_event*, i32) #1

declare dso_local i32 @device_printf(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
