; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/ntpd/extr_ntp_control.c_ctlsysstatus.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/ntpd/extr_ntp_control.c_ctlsysstatus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i64 }

@CTL_SST_TS_UNSPEC = common dso_local global i64 0, align 8
@sys_peer = common dso_local global %struct.TYPE_2__* null, align 8
@CTL_SST_TS_NTP = common dso_local global i64 0, align 8
@sys_leap = common dso_local global i32 0, align 4
@ctl_sys_num_events = common dso_local global i32 0, align 4
@ctl_sys_last_event = common dso_local global i32 0, align 4
@clocktypes = common dso_local global i64* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ctlsysstatus() #0 {
  %1 = alloca i64, align 8
  %2 = load i64, i64* @CTL_SST_TS_UNSPEC, align 8
  store i64 %2, i64* %1, align 8
  %3 = load %struct.TYPE_2__*, %struct.TYPE_2__** @sys_peer, align 8
  %4 = icmp ne %struct.TYPE_2__* %3, null
  br i1 %4, label %5, label %7

5:                                                ; preds = %0
  %6 = load i64, i64* @CTL_SST_TS_NTP, align 8
  store i64 %6, i64* %1, align 8
  br label %7

7:                                                ; preds = %5, %0
  %8 = load i32, i32* @sys_leap, align 4
  %9 = load i64, i64* %1, align 8
  %10 = load i32, i32* @ctl_sys_num_events, align 4
  %11 = load i32, i32* @ctl_sys_last_event, align 4
  %12 = call i32 @CTL_SYS_STATUS(i32 %8, i64 %9, i32 %10, i32 %11)
  ret i32 %12
}

declare dso_local i32 @CTL_SYS_STATUS(i32, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
