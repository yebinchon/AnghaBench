; ModuleID = '/home/carl/AnghaBench/freebsd/sys/compat/linuxkpi/common/src/extr_linux_compat.c_linux_handle_ifnet_arrival_event.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/compat/linuxkpi/common/src/extr_linux_compat.c_linux_handle_ifnet_arrival_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { i32 }
%struct.notifier_block = type { i32 (%struct.notifier_block*, i32, %struct.ifnet.0*)* }
%struct.ifnet.0 = type opaque

@NETDEV_REGISTER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.ifnet*)* @linux_handle_ifnet_arrival_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @linux_handle_ifnet_arrival_event(i8* %0, %struct.ifnet* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.ifnet*, align 8
  %5 = alloca %struct.notifier_block*, align 8
  store i8* %0, i8** %3, align 8
  store %struct.ifnet* %1, %struct.ifnet** %4, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = bitcast i8* %6 to %struct.notifier_block*
  store %struct.notifier_block* %7, %struct.notifier_block** %5, align 8
  %8 = load %struct.notifier_block*, %struct.notifier_block** %5, align 8
  %9 = getelementptr inbounds %struct.notifier_block, %struct.notifier_block* %8, i32 0, i32 0
  %10 = load i32 (%struct.notifier_block*, i32, %struct.ifnet.0*)*, i32 (%struct.notifier_block*, i32, %struct.ifnet.0*)** %9, align 8
  %11 = load %struct.notifier_block*, %struct.notifier_block** %5, align 8
  %12 = load i32, i32* @NETDEV_REGISTER, align 4
  %13 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %14 = bitcast %struct.ifnet* %13 to %struct.ifnet.0*
  %15 = call i32 %10(%struct.notifier_block* %11, i32 %12, %struct.ifnet.0* %14)
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
