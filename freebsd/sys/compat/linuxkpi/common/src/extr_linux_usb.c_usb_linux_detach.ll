; ModuleID = '/home/carl/AnghaBench/freebsd/sys/compat/linuxkpi/common/src/extr_linux_usb.c_usb_linux_detach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/compat/linuxkpi/common/src/extr_linux_usb.c_usb_linux_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_linux_softc = type { i32, i32, %struct.usb_driver*, %struct.TYPE_2__ }
%struct.usb_driver = type { i32 (i32)* }
%struct.TYPE_2__ = type { i32* }

@Giant = common dso_local global i32 0, align 4
@sc_attached_list = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @usb_linux_detach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usb_linux_detach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.usb_linux_softc*, align 8
  %4 = alloca %struct.usb_driver*, align 8
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  %6 = call %struct.usb_linux_softc* @device_get_softc(i32 %5)
  store %struct.usb_linux_softc* %6, %struct.usb_linux_softc** %3, align 8
  store %struct.usb_driver* null, %struct.usb_driver** %4, align 8
  %7 = call i32 @mtx_lock(i32* @Giant)
  %8 = load %struct.usb_linux_softc*, %struct.usb_linux_softc** %3, align 8
  %9 = getelementptr inbounds %struct.usb_linux_softc, %struct.usb_linux_softc* %8, i32 0, i32 3
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32*, i32** %10, align 8
  %12 = icmp ne i32* %11, null
  br i1 %12, label %13, label %25

13:                                               ; preds = %1
  %14 = load %struct.usb_linux_softc*, %struct.usb_linux_softc** %3, align 8
  %15 = load i32, i32* @sc_attached_list, align 4
  %16 = call i32 @LIST_REMOVE(%struct.usb_linux_softc* %14, i32 %15)
  %17 = load %struct.usb_linux_softc*, %struct.usb_linux_softc** %3, align 8
  %18 = getelementptr inbounds %struct.usb_linux_softc, %struct.usb_linux_softc* %17, i32 0, i32 3
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  store i32* null, i32** %19, align 8
  %20 = load %struct.usb_linux_softc*, %struct.usb_linux_softc** %3, align 8
  %21 = getelementptr inbounds %struct.usb_linux_softc, %struct.usb_linux_softc* %20, i32 0, i32 2
  %22 = load %struct.usb_driver*, %struct.usb_driver** %21, align 8
  store %struct.usb_driver* %22, %struct.usb_driver** %4, align 8
  %23 = load %struct.usb_linux_softc*, %struct.usb_linux_softc** %3, align 8
  %24 = getelementptr inbounds %struct.usb_linux_softc, %struct.usb_linux_softc* %23, i32 0, i32 2
  store %struct.usb_driver* null, %struct.usb_driver** %24, align 8
  br label %25

25:                                               ; preds = %13, %1
  %26 = call i32 @mtx_unlock(i32* @Giant)
  %27 = load %struct.usb_driver*, %struct.usb_driver** %4, align 8
  %28 = icmp ne %struct.usb_driver* %27, null
  br i1 %28, label %29, label %42

29:                                               ; preds = %25
  %30 = load %struct.usb_driver*, %struct.usb_driver** %4, align 8
  %31 = getelementptr inbounds %struct.usb_driver, %struct.usb_driver* %30, i32 0, i32 0
  %32 = load i32 (i32)*, i32 (i32)** %31, align 8
  %33 = icmp ne i32 (i32)* %32, null
  br i1 %33, label %34, label %42

34:                                               ; preds = %29
  %35 = load %struct.usb_driver*, %struct.usb_driver** %4, align 8
  %36 = getelementptr inbounds %struct.usb_driver, %struct.usb_driver* %35, i32 0, i32 0
  %37 = load i32 (i32)*, i32 (i32)** %36, align 8
  %38 = load %struct.usb_linux_softc*, %struct.usb_linux_softc** %3, align 8
  %39 = getelementptr inbounds %struct.usb_linux_softc, %struct.usb_linux_softc* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = call i32 %37(i32 %40)
  br label %42

42:                                               ; preds = %34, %29, %25
  %43 = load %struct.usb_linux_softc*, %struct.usb_linux_softc** %3, align 8
  %44 = getelementptr inbounds %struct.usb_linux_softc, %struct.usb_linux_softc* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.usb_linux_softc*, %struct.usb_linux_softc** %3, align 8
  %47 = getelementptr inbounds %struct.usb_linux_softc, %struct.usb_linux_softc* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @usb_linux_cleanup_interface(i32 %45, i32 %48)
  ret i32 0
}

declare dso_local %struct.usb_linux_softc* @device_get_softc(i32) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @LIST_REMOVE(%struct.usb_linux_softc*, i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @usb_linux_cleanup_interface(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
