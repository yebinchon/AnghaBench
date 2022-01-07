; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_pcap-bt-monitor-linux.c_bt_monitor_findalldevs.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_pcap-bt-monitor-linux.c_bt_monitor_findalldevs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@INTERFACE_NAME = common dso_local global i32 0, align 4
@PCAP_IF_WIRELESS = common dso_local global i32 0, align 4
@PCAP_IF_CONNECTION_STATUS_NOT_APPLICABLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"Bluetooth Linux Monitor\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bt_monitor_findalldevs(i32* %0, i8* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i8* %1, i8** %4, align 8
  store i32 0, i32* %5, align 4
  %6 = load i32*, i32** %3, align 8
  %7 = load i32, i32* @INTERFACE_NAME, align 4
  %8 = load i32, i32* @PCAP_IF_WIRELESS, align 4
  %9 = load i32, i32* @PCAP_IF_CONNECTION_STATUS_NOT_APPLICABLE, align 4
  %10 = or i32 %8, %9
  %11 = load i8*, i8** %4, align 8
  %12 = call i32* @add_dev(i32* %6, i32 %7, i32 %10, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i8* %11)
  %13 = icmp eq i32* %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  store i32 -1, i32* %5, align 4
  br label %15

15:                                               ; preds = %14, %2
  %16 = load i32, i32* %5, align 4
  ret i32 %16
}

declare dso_local i32* @add_dev(i32*, i32, i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
