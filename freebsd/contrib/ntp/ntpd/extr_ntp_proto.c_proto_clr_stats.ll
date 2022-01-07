; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/ntpd/extr_ntp_proto.c_proto_clr_stats.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/ntpd/extr_ntp_proto.c_proto_clr_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@current_time = common dso_local global i32 0, align 4
@sys_stattime = common dso_local global i32 0, align 4
@sys_received = common dso_local global i64 0, align 8
@sys_processed = common dso_local global i64 0, align 8
@sys_newversion = common dso_local global i64 0, align 8
@sys_oldversion = common dso_local global i64 0, align 8
@sys_declined = common dso_local global i64 0, align 8
@sys_restricted = common dso_local global i64 0, align 8
@sys_badlength = common dso_local global i64 0, align 8
@sys_badauth = common dso_local global i64 0, align 8
@sys_limitrejected = common dso_local global i64 0, align 8
@sys_kodsent = common dso_local global i64 0, align 8
@sys_lamport = common dso_local global i64 0, align 8
@sys_tsrounding = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @proto_clr_stats() #0 {
  %1 = load i32, i32* @current_time, align 4
  store i32 %1, i32* @sys_stattime, align 4
  store i64 0, i64* @sys_received, align 8
  store i64 0, i64* @sys_processed, align 8
  store i64 0, i64* @sys_newversion, align 8
  store i64 0, i64* @sys_oldversion, align 8
  store i64 0, i64* @sys_declined, align 8
  store i64 0, i64* @sys_restricted, align 8
  store i64 0, i64* @sys_badlength, align 8
  store i64 0, i64* @sys_badauth, align 8
  store i64 0, i64* @sys_limitrejected, align 8
  store i64 0, i64* @sys_kodsent, align 8
  store i64 0, i64* @sys_lamport, align 8
  store i64 0, i64* @sys_tsrounding, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
