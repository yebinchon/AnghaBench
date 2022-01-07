; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_monitor.c_monitor_child_postauth.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_monitor.c_monitor_child_postauth.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }
%struct.monitor = type { i32, i32 }

@SIGHUP = common dso_local global i32 0, align 4
@monitor_child_handler = common dso_local global i32 0, align 4
@SIGTERM = common dso_local global i32 0, align 4
@SIGINT = common dso_local global i32 0, align 4
@mon_dispatch_postauth20 = common dso_local global i32 0, align 4
@mon_dispatch = common dso_local global i32 0, align 4
@MONITOR_REQ_MODULI = common dso_local global i32 0, align 4
@MONITOR_REQ_SIGN = common dso_local global i32 0, align 4
@MONITOR_REQ_TERM = common dso_local global i32 0, align 4
@auth_opts = common dso_local global %struct.TYPE_2__* null, align 8
@MONITOR_REQ_PTY = common dso_local global i32 0, align 4
@MONITOR_REQ_PTYCLEANUP = common dso_local global i32 0, align 4
@SIGXFSZ = common dso_local global i32 0, align 4
@SIG_IGN = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @monitor_child_postauth(%struct.monitor* %0) #0 {
  %2 = alloca %struct.monitor*, align 8
  store %struct.monitor* %0, %struct.monitor** %2, align 8
  %3 = load %struct.monitor*, %struct.monitor** %2, align 8
  %4 = getelementptr inbounds %struct.monitor, %struct.monitor* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 4
  %6 = call i32 @close(i32 %5)
  %7 = load %struct.monitor*, %struct.monitor** %2, align 8
  %8 = getelementptr inbounds %struct.monitor, %struct.monitor* %7, i32 0, i32 0
  store i32 -1, i32* %8, align 4
  %9 = load %struct.monitor*, %struct.monitor** %2, align 8
  %10 = getelementptr inbounds %struct.monitor, %struct.monitor* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @monitor_set_child_handler(i32 %11)
  %13 = load i32, i32* @SIGHUP, align 4
  %14 = call i32 @signal(i32 %13, i32* @monitor_child_handler)
  %15 = load i32, i32* @SIGTERM, align 4
  %16 = call i32 @signal(i32 %15, i32* @monitor_child_handler)
  %17 = load i32, i32* @SIGINT, align 4
  %18 = call i32 @signal(i32 %17, i32* @monitor_child_handler)
  %19 = load i32, i32* @mon_dispatch_postauth20, align 4
  store i32 %19, i32* @mon_dispatch, align 4
  %20 = load i32, i32* @mon_dispatch, align 4
  %21 = load i32, i32* @MONITOR_REQ_MODULI, align 4
  %22 = call i32 @monitor_permit(i32 %20, i32 %21, i32 1)
  %23 = load i32, i32* @mon_dispatch, align 4
  %24 = load i32, i32* @MONITOR_REQ_SIGN, align 4
  %25 = call i32 @monitor_permit(i32 %23, i32 %24, i32 1)
  %26 = load i32, i32* @mon_dispatch, align 4
  %27 = load i32, i32* @MONITOR_REQ_TERM, align 4
  %28 = call i32 @monitor_permit(i32 %26, i32 %27, i32 1)
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** @auth_opts, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %40

33:                                               ; preds = %1
  %34 = load i32, i32* @mon_dispatch, align 4
  %35 = load i32, i32* @MONITOR_REQ_PTY, align 4
  %36 = call i32 @monitor_permit(i32 %34, i32 %35, i32 1)
  %37 = load i32, i32* @mon_dispatch, align 4
  %38 = load i32, i32* @MONITOR_REQ_PTYCLEANUP, align 4
  %39 = call i32 @monitor_permit(i32 %37, i32 %38, i32 1)
  br label %40

40:                                               ; preds = %33, %1
  br label %41

41:                                               ; preds = %41, %40
  %42 = load %struct.monitor*, %struct.monitor** %2, align 8
  %43 = load i32, i32* @mon_dispatch, align 4
  %44 = call i32 @monitor_read(%struct.monitor* %42, i32 %43, i32* null)
  br label %41
}

declare dso_local i32 @close(i32) #1

declare dso_local i32 @monitor_set_child_handler(i32) #1

declare dso_local i32 @signal(i32, i32*) #1

declare dso_local i32 @monitor_permit(i32, i32, i32) #1

declare dso_local i32 @monitor_read(%struct.monitor*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
