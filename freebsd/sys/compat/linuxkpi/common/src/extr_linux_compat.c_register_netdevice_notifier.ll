; ModuleID = '/home/carl/AnghaBench/freebsd/sys/compat/linuxkpi/common/src/extr_linux_compat.c_register_netdevice_notifier.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/compat/linuxkpi/common/src/extr_linux_compat.c_register_netdevice_notifier.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.notifier_block = type { i8** }

@ifnet_link_event = common dso_local global i32 0, align 4
@linux_handle_ifnet_link_event = common dso_local global i32 0, align 4
@NETDEV_UP = common dso_local global i64 0, align 8
@ifnet_arrival_event = common dso_local global i32 0, align 4
@linux_handle_ifnet_arrival_event = common dso_local global i32 0, align 4
@NETDEV_REGISTER = common dso_local global i64 0, align 8
@ifnet_departure_event = common dso_local global i32 0, align 4
@linux_handle_ifnet_departure_event = common dso_local global i32 0, align 4
@NETDEV_UNREGISTER = common dso_local global i64 0, align 8
@iflladdr_event = common dso_local global i32 0, align 4
@linux_handle_iflladdr_event = common dso_local global i32 0, align 4
@NETDEV_CHANGEADDR = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @register_netdevice_notifier(%struct.notifier_block* %0) #0 {
  %2 = alloca %struct.notifier_block*, align 8
  store %struct.notifier_block* %0, %struct.notifier_block** %2, align 8
  %3 = load i32, i32* @ifnet_link_event, align 4
  %4 = load i32, i32* @linux_handle_ifnet_link_event, align 4
  %5 = load %struct.notifier_block*, %struct.notifier_block** %2, align 8
  %6 = call i8* @EVENTHANDLER_REGISTER(i32 %3, i32 %4, %struct.notifier_block* %5, i32 0)
  %7 = load %struct.notifier_block*, %struct.notifier_block** %2, align 8
  %8 = getelementptr inbounds %struct.notifier_block, %struct.notifier_block* %7, i32 0, i32 0
  %9 = load i8**, i8*** %8, align 8
  %10 = load i64, i64* @NETDEV_UP, align 8
  %11 = getelementptr inbounds i8*, i8** %9, i64 %10
  store i8* %6, i8** %11, align 8
  %12 = load i32, i32* @ifnet_arrival_event, align 4
  %13 = load i32, i32* @linux_handle_ifnet_arrival_event, align 4
  %14 = load %struct.notifier_block*, %struct.notifier_block** %2, align 8
  %15 = call i8* @EVENTHANDLER_REGISTER(i32 %12, i32 %13, %struct.notifier_block* %14, i32 0)
  %16 = load %struct.notifier_block*, %struct.notifier_block** %2, align 8
  %17 = getelementptr inbounds %struct.notifier_block, %struct.notifier_block* %16, i32 0, i32 0
  %18 = load i8**, i8*** %17, align 8
  %19 = load i64, i64* @NETDEV_REGISTER, align 8
  %20 = getelementptr inbounds i8*, i8** %18, i64 %19
  store i8* %15, i8** %20, align 8
  %21 = load i32, i32* @ifnet_departure_event, align 4
  %22 = load i32, i32* @linux_handle_ifnet_departure_event, align 4
  %23 = load %struct.notifier_block*, %struct.notifier_block** %2, align 8
  %24 = call i8* @EVENTHANDLER_REGISTER(i32 %21, i32 %22, %struct.notifier_block* %23, i32 0)
  %25 = load %struct.notifier_block*, %struct.notifier_block** %2, align 8
  %26 = getelementptr inbounds %struct.notifier_block, %struct.notifier_block* %25, i32 0, i32 0
  %27 = load i8**, i8*** %26, align 8
  %28 = load i64, i64* @NETDEV_UNREGISTER, align 8
  %29 = getelementptr inbounds i8*, i8** %27, i64 %28
  store i8* %24, i8** %29, align 8
  %30 = load i32, i32* @iflladdr_event, align 4
  %31 = load i32, i32* @linux_handle_iflladdr_event, align 4
  %32 = load %struct.notifier_block*, %struct.notifier_block** %2, align 8
  %33 = call i8* @EVENTHANDLER_REGISTER(i32 %30, i32 %31, %struct.notifier_block* %32, i32 0)
  %34 = load %struct.notifier_block*, %struct.notifier_block** %2, align 8
  %35 = getelementptr inbounds %struct.notifier_block, %struct.notifier_block* %34, i32 0, i32 0
  %36 = load i8**, i8*** %35, align 8
  %37 = load i64, i64* @NETDEV_CHANGEADDR, align 8
  %38 = getelementptr inbounds i8*, i8** %36, i64 %37
  store i8* %33, i8** %38, align 8
  ret i32 0
}

declare dso_local i8* @EVENTHANDLER_REGISTER(i32, i32, %struct.notifier_block*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
