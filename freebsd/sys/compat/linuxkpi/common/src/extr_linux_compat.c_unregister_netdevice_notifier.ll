; ModuleID = '/home/carl/AnghaBench/freebsd/sys/compat/linuxkpi/common/src/extr_linux_compat.c_unregister_netdevice_notifier.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/compat/linuxkpi/common/src/extr_linux_compat.c_unregister_netdevice_notifier.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.notifier_block = type { i32* }

@ifnet_link_event = common dso_local global i32 0, align 4
@NETDEV_UP = common dso_local global i64 0, align 8
@ifnet_arrival_event = common dso_local global i32 0, align 4
@NETDEV_REGISTER = common dso_local global i64 0, align 8
@ifnet_departure_event = common dso_local global i32 0, align 4
@NETDEV_UNREGISTER = common dso_local global i64 0, align 8
@iflladdr_event = common dso_local global i32 0, align 4
@NETDEV_CHANGEADDR = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @unregister_netdevice_notifier(%struct.notifier_block* %0) #0 {
  %2 = alloca %struct.notifier_block*, align 8
  store %struct.notifier_block* %0, %struct.notifier_block** %2, align 8
  %3 = load i32, i32* @ifnet_link_event, align 4
  %4 = load %struct.notifier_block*, %struct.notifier_block** %2, align 8
  %5 = getelementptr inbounds %struct.notifier_block, %struct.notifier_block* %4, i32 0, i32 0
  %6 = load i32*, i32** %5, align 8
  %7 = load i64, i64* @NETDEV_UP, align 8
  %8 = getelementptr inbounds i32, i32* %6, i64 %7
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @EVENTHANDLER_DEREGISTER(i32 %3, i32 %9)
  %11 = load i32, i32* @ifnet_arrival_event, align 4
  %12 = load %struct.notifier_block*, %struct.notifier_block** %2, align 8
  %13 = getelementptr inbounds %struct.notifier_block, %struct.notifier_block* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  %15 = load i64, i64* @NETDEV_REGISTER, align 8
  %16 = getelementptr inbounds i32, i32* %14, i64 %15
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @EVENTHANDLER_DEREGISTER(i32 %11, i32 %17)
  %19 = load i32, i32* @ifnet_departure_event, align 4
  %20 = load %struct.notifier_block*, %struct.notifier_block** %2, align 8
  %21 = getelementptr inbounds %struct.notifier_block, %struct.notifier_block* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = load i64, i64* @NETDEV_UNREGISTER, align 8
  %24 = getelementptr inbounds i32, i32* %22, i64 %23
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @EVENTHANDLER_DEREGISTER(i32 %19, i32 %25)
  %27 = load i32, i32* @iflladdr_event, align 4
  %28 = load %struct.notifier_block*, %struct.notifier_block** %2, align 8
  %29 = getelementptr inbounds %struct.notifier_block, %struct.notifier_block* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = load i64, i64* @NETDEV_CHANGEADDR, align 8
  %32 = getelementptr inbounds i32, i32* %30, i64 %31
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @EVENTHANDLER_DEREGISTER(i32 %27, i32 %33)
  ret i32 0
}

declare dso_local i32 @EVENTHANDLER_DEREGISTER(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
