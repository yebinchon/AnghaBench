; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/ntpd/extr_ntp_control.c_read_clockstatus.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/ntpd/extr_ntp_control.c_read_clockstatus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ctl_var = type { i32, i64, i32 }
%struct.peer = type { i32, i32, %struct.peer* }
%struct.TYPE_2__ = type { i32 }
%struct.recvbuf = type { i32 }

@CERR_BADASSOC = common dso_local global i32 0, align 4
@CC_MAXCODE = common dso_local global i32 0, align 4
@CERR_BADVALUE = common dso_local global i32 0, align 4
@CERR_UNKNOWNVAR = common dso_local global i32 0, align 4
@DEF = common dso_local global i32 0, align 4
@EOV = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@FLAG_REFCLOCK = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@clock_var = common dso_local global %struct.ctl_var* null, align 8
@def_clock_var = common dso_local global i32* null, align 8
@peer_list = common dso_local global %struct.peer* null, align 8
@res_associd = common dso_local global i64 0, align 8
@rpkt = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@sys_peer = common dso_local global %struct.peer* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.recvbuf*, i32)* @read_clockstatus to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @read_clockstatus(%struct.recvbuf* %0, i32 %1) #0 {
  %3 = alloca %struct.recvbuf*, align 8
  %4 = alloca i32, align 4
  store %struct.recvbuf* %0, %struct.recvbuf** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* @CERR_BADASSOC, align 4
  %6 = call i32 @ctl_error(i32 %5)
  ret void
}

declare dso_local i32 @ctl_error(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
