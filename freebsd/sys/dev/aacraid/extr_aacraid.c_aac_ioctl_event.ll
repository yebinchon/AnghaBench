; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/aacraid/extr_aacraid.c_aac_ioctl_event.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/aacraid/extr_aacraid.c_aac_ioctl_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aac_softc = type { i32 }
%struct.aac_event = type { i32 }
%struct.aac_command = type { i32 }

@MA_OWNED = common dso_local global i32 0, align 4
@M_AACRAIDBUF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.aac_softc*, %struct.aac_event*, i8*)* @aac_ioctl_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @aac_ioctl_event(%struct.aac_softc* %0, %struct.aac_event* %1, i8* %2) #0 {
  %4 = alloca %struct.aac_softc*, align 8
  %5 = alloca %struct.aac_event*, align 8
  %6 = alloca i8*, align 8
  store %struct.aac_softc* %0, %struct.aac_softc** %4, align 8
  store %struct.aac_event* %1, %struct.aac_event** %5, align 8
  store i8* %2, i8** %6, align 8
  %7 = load %struct.aac_event*, %struct.aac_event** %5, align 8
  %8 = getelementptr inbounds %struct.aac_event, %struct.aac_event* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  switch i32 %9, label %30 [
    i32 128, label %10
  ]

10:                                               ; preds = %3
  %11 = load %struct.aac_softc*, %struct.aac_softc** %4, align 8
  %12 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %11, i32 0, i32 0
  %13 = load i32, i32* @MA_OWNED, align 4
  %14 = call i32 @mtx_assert(i32* %12, i32 %13)
  %15 = load %struct.aac_softc*, %struct.aac_softc** %4, align 8
  %16 = load i8*, i8** %6, align 8
  %17 = bitcast i8* %16 to %struct.aac_command**
  %18 = call i32 @aacraid_alloc_command(%struct.aac_softc* %15, %struct.aac_command** %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %10
  %21 = load %struct.aac_softc*, %struct.aac_softc** %4, align 8
  %22 = load %struct.aac_event*, %struct.aac_event** %5, align 8
  %23 = call i32 @aacraid_add_event(%struct.aac_softc* %21, %struct.aac_event* %22)
  br label %31

24:                                               ; preds = %10
  %25 = load %struct.aac_event*, %struct.aac_event** %5, align 8
  %26 = load i32, i32* @M_AACRAIDBUF, align 4
  %27 = call i32 @free(%struct.aac_event* %25, i32 %26)
  %28 = load i8*, i8** %6, align 8
  %29 = call i32 @wakeup(i8* %28)
  br label %31

30:                                               ; preds = %3
  br label %31

31:                                               ; preds = %20, %30, %24
  ret void
}

declare dso_local i32 @mtx_assert(i32*, i32) #1

declare dso_local i32 @aacraid_alloc_command(%struct.aac_softc*, %struct.aac_command**) #1

declare dso_local i32 @aacraid_add_event(%struct.aac_softc*, %struct.aac_event*) #1

declare dso_local i32 @free(%struct.aac_event*, i32) #1

declare dso_local i32 @wakeup(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
