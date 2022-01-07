; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/ntpd/extr_ntp_control.c_control_unspec.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/ntpd/extr_ntp_control.c_control_unspec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8* }
%struct.recvbuf = type { i32 }
%struct.peer = type { i32 }

@res_associd = common dso_local global i64 0, align 8
@CERR_BADASSOC = common dso_local global i32 0, align 4
@rpkt = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.recvbuf*, i32)* @control_unspec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @control_unspec(%struct.recvbuf* %0, i32 %1) #0 {
  %3 = alloca %struct.recvbuf*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.peer*, align 8
  store %struct.recvbuf* %0, %struct.recvbuf** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i64, i64* @res_associd, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %20

8:                                                ; preds = %2
  %9 = load i64, i64* @res_associd, align 8
  %10 = call %struct.peer* @findpeerbyassoc(i64 %9)
  store %struct.peer* %10, %struct.peer** %5, align 8
  %11 = load %struct.peer*, %struct.peer** %5, align 8
  %12 = icmp eq %struct.peer* null, %11
  br i1 %12, label %13, label %16

13:                                               ; preds = %8
  %14 = load i32, i32* @CERR_BADASSOC, align 4
  %15 = call i32 @ctl_error(i32 %14)
  br label %25

16:                                               ; preds = %8
  %17 = load %struct.peer*, %struct.peer** %5, align 8
  %18 = call i32 @ctlpeerstatus(%struct.peer* %17)
  %19 = call i8* @htons(i32 %18)
  store i8* %19, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @rpkt, i32 0, i32 0), align 8
  br label %23

20:                                               ; preds = %2
  %21 = call i32 (...) @ctlsysstatus()
  %22 = call i8* @htons(i32 %21)
  store i8* %22, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @rpkt, i32 0, i32 0), align 8
  br label %23

23:                                               ; preds = %20, %16
  %24 = call i32 @ctl_flushpkt(i32 0)
  br label %25

25:                                               ; preds = %23, %13
  ret void
}

declare dso_local %struct.peer* @findpeerbyassoc(i64) #1

declare dso_local i32 @ctl_error(i32) #1

declare dso_local i8* @htons(i32) #1

declare dso_local i32 @ctlpeerstatus(%struct.peer*) #1

declare dso_local i32 @ctlsysstatus(...) #1

declare dso_local i32 @ctl_flushpkt(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
