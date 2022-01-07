; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/ntpd/extr_ntp_control.c_set_trap.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/ntpd/extr_ntp_control.c_set_trap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.recvbuf = type { i32, i32 }

@RES_NOTRAP = common dso_local global i32 0, align 4
@CERR_PERMISSION = common dso_local global i32 0, align 4
@TRAP_TYPE_PRIO = common dso_local global i32 0, align 4
@RES_LPTRAP = common dso_local global i32 0, align 4
@TRAP_TYPE_NONPRIO = common dso_local global i32 0, align 4
@res_version = common dso_local global i64 0, align 8
@CERR_NORESOURCE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.recvbuf*, i32)* @set_trap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_trap(%struct.recvbuf* %0, i32 %1) #0 {
  %3 = alloca %struct.recvbuf*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.recvbuf* %0, %struct.recvbuf** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = load i32, i32* @RES_NOTRAP, align 4
  %8 = and i32 %6, %7
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %2
  %11 = load i32, i32* @CERR_PERMISSION, align 4
  %12 = call i32 @ctl_error(i32 %11)
  br label %37

13:                                               ; preds = %2
  %14 = load i32, i32* @TRAP_TYPE_PRIO, align 4
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* %4, align 4
  %16 = load i32, i32* @RES_LPTRAP, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %13
  %20 = load i32, i32* @TRAP_TYPE_NONPRIO, align 4
  store i32 %20, i32* %5, align 4
  br label %21

21:                                               ; preds = %19, %13
  %22 = load %struct.recvbuf*, %struct.recvbuf** %3, align 8
  %23 = getelementptr inbounds %struct.recvbuf, %struct.recvbuf* %22, i32 0, i32 1
  %24 = load %struct.recvbuf*, %struct.recvbuf** %3, align 8
  %25 = getelementptr inbounds %struct.recvbuf, %struct.recvbuf* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* %5, align 4
  %28 = load i64, i64* @res_version, align 8
  %29 = trunc i64 %28 to i32
  %30 = call i32 @ctlsettrap(i32* %23, i32 %26, i32 %27, i32 %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %35, label %32

32:                                               ; preds = %21
  %33 = load i32, i32* @CERR_NORESOURCE, align 4
  %34 = call i32 @ctl_error(i32 %33)
  br label %35

35:                                               ; preds = %32, %21
  %36 = call i32 @ctl_flushpkt(i32 0)
  br label %37

37:                                               ; preds = %35, %10
  ret void
}

declare dso_local i32 @ctl_error(i32) #1

declare dso_local i32 @ctlsettrap(i32*, i32, i32, i32) #1

declare dso_local i32 @ctl_flushpkt(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
