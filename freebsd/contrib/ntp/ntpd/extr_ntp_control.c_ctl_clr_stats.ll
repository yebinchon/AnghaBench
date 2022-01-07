; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/ntpd/extr_ntp_control.c_ctl_clr_stats.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/ntpd/extr_ntp_control.c_ctl_clr_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@current_time = common dso_local global i32 0, align 4
@ctltimereset = common dso_local global i32 0, align 4
@numctlreq = common dso_local global i64 0, align 8
@numctlbadpkts = common dso_local global i64 0, align 8
@numctlresponses = common dso_local global i64 0, align 8
@numctlfrags = common dso_local global i64 0, align 8
@numctlerrors = common dso_local global i64 0, align 8
@numctltooshort = common dso_local global i64 0, align 8
@numctlinputresp = common dso_local global i64 0, align 8
@numctlinputfrag = common dso_local global i64 0, align 8
@numctlinputerr = common dso_local global i64 0, align 8
@numctlbadoffset = common dso_local global i64 0, align 8
@numctlbadversion = common dso_local global i64 0, align 8
@numctldatatooshort = common dso_local global i64 0, align 8
@numctlbadop = common dso_local global i64 0, align 8
@numasyncmsgs = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ctl_clr_stats() #0 {
  %1 = load i32, i32* @current_time, align 4
  store i32 %1, i32* @ctltimereset, align 4
  store i64 0, i64* @numctlreq, align 8
  store i64 0, i64* @numctlbadpkts, align 8
  store i64 0, i64* @numctlresponses, align 8
  store i64 0, i64* @numctlfrags, align 8
  store i64 0, i64* @numctlerrors, align 8
  store i64 0, i64* @numctlfrags, align 8
  store i64 0, i64* @numctltooshort, align 8
  store i64 0, i64* @numctlinputresp, align 8
  store i64 0, i64* @numctlinputfrag, align 8
  store i64 0, i64* @numctlinputerr, align 8
  store i64 0, i64* @numctlbadoffset, align 8
  store i64 0, i64* @numctlbadversion, align 8
  store i64 0, i64* @numctldatatooshort, align 8
  store i64 0, i64* @numctlbadop, align 8
  store i64 0, i64* @numasyncmsgs, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
