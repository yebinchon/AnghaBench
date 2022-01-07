; ModuleID = '/home/carl/AnghaBench/freebsd/sys/compat/linuxkpi/common/src/extr_linux_compat.c_linux_handle_ifnet_link_event.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/compat/linuxkpi/common/src/extr_linux_compat.c_linux_handle_ifnet_link_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { i32 }
%struct.notifier_block = type { i32 (%struct.notifier_block*, i32, %struct.ifnet.0*)* }
%struct.ifnet.0 = type opaque

@LINK_STATE_UP = common dso_local global i32 0, align 4
@NETDEV_UP = common dso_local global i32 0, align 4
@NETDEV_DOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.ifnet*, i32)* @linux_handle_ifnet_link_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @linux_handle_ifnet_link_event(i8* %0, %struct.ifnet* %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.ifnet*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.notifier_block*, align 8
  store i8* %0, i8** %4, align 8
  store %struct.ifnet* %1, %struct.ifnet** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.notifier_block*
  store %struct.notifier_block* %9, %struct.notifier_block** %7, align 8
  %10 = load i32, i32* %6, align 4
  %11 = load i32, i32* @LINK_STATE_UP, align 4
  %12 = icmp eq i32 %10, %11
  br i1 %12, label %13, label %22

13:                                               ; preds = %3
  %14 = load %struct.notifier_block*, %struct.notifier_block** %7, align 8
  %15 = getelementptr inbounds %struct.notifier_block, %struct.notifier_block* %14, i32 0, i32 0
  %16 = load i32 (%struct.notifier_block*, i32, %struct.ifnet.0*)*, i32 (%struct.notifier_block*, i32, %struct.ifnet.0*)** %15, align 8
  %17 = load %struct.notifier_block*, %struct.notifier_block** %7, align 8
  %18 = load i32, i32* @NETDEV_UP, align 4
  %19 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %20 = bitcast %struct.ifnet* %19 to %struct.ifnet.0*
  %21 = call i32 %16(%struct.notifier_block* %17, i32 %18, %struct.ifnet.0* %20)
  br label %31

22:                                               ; preds = %3
  %23 = load %struct.notifier_block*, %struct.notifier_block** %7, align 8
  %24 = getelementptr inbounds %struct.notifier_block, %struct.notifier_block* %23, i32 0, i32 0
  %25 = load i32 (%struct.notifier_block*, i32, %struct.ifnet.0*)*, i32 (%struct.notifier_block*, i32, %struct.ifnet.0*)** %24, align 8
  %26 = load %struct.notifier_block*, %struct.notifier_block** %7, align 8
  %27 = load i32, i32* @NETDEV_DOWN, align 4
  %28 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %29 = bitcast %struct.ifnet* %28 to %struct.ifnet.0*
  %30 = call i32 %25(%struct.notifier_block* %26, i32 %27, %struct.ifnet.0* %29)
  br label %31

31:                                               ; preds = %22, %13
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
