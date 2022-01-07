; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_pcap-dos.c_close_driver.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_pcap-dos.c_close_driver.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 (%struct.device*)* }

@active_dev = common dso_local global %struct.device* null, align 8
@rx_pool = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @close_driver to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @close_driver() #0 {
  %1 = alloca %struct.device*, align 8
  %2 = load %struct.device*, %struct.device** @active_dev, align 8
  store %struct.device* %2, %struct.device** %1, align 8
  %3 = load %struct.device*, %struct.device** %1, align 8
  %4 = icmp ne %struct.device* %3, null
  br i1 %4, label %5, label %17

5:                                                ; preds = %0
  %6 = load %struct.device*, %struct.device** %1, align 8
  %7 = getelementptr inbounds %struct.device, %struct.device* %6, i32 0, i32 0
  %8 = load i32 (%struct.device*)*, i32 (%struct.device*)** %7, align 8
  %9 = icmp ne i32 (%struct.device*)* %8, null
  br i1 %9, label %10, label %17

10:                                               ; preds = %5
  %11 = load %struct.device*, %struct.device** %1, align 8
  %12 = getelementptr inbounds %struct.device, %struct.device* %11, i32 0, i32 0
  %13 = load i32 (%struct.device*)*, i32 (%struct.device*)** %12, align 8
  %14 = load %struct.device*, %struct.device** %1, align 8
  %15 = call i32 %13(%struct.device* %14)
  %16 = call i32 (...) @FLUSHK()
  br label %17

17:                                               ; preds = %10, %5, %0
  store %struct.device* null, %struct.device** @active_dev, align 8
  ret void
}

declare dso_local i32 @FLUSHK(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
