; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/ggate/ggatec/extr_ggatec.c_g_gatec_loop.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/ggate/ggatec/extr_ggatec.c_g_gatec_loop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.g_gate_ctl_cancel = type { i64, i32, i32 }

@SIGUSR1 = common dso_local global i32 0, align 4
@signop = common dso_local global i32 0, align 4
@LOG_NOTICE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"Disconnected [%s %s]. Connecting...\00", align 1
@host = common dso_local global i32 0, align 4
@path = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"Connecting [%s %s]...\00", align 1
@G_GATE_VERSION = common dso_local global i32 0, align 4
@unit = common dso_local global i32 0, align 4
@G_GATE_CMD_CANCEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @g_gatec_loop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @g_gatec_loop() #0 {
  %1 = alloca %struct.g_gate_ctl_cancel, align 8
  %2 = load i32, i32* @SIGUSR1, align 4
  %3 = load i32, i32* @signop, align 4
  %4 = call i32 @signal(i32 %2, i32 %3)
  br label %5

5:                                                ; preds = %21, %0
  %6 = call i32 (...) @g_gatec_start()
  %7 = load i32, i32* @LOG_NOTICE, align 4
  %8 = load i32, i32* @host, align 4
  %9 = load i32, i32* @path, align 4
  %10 = call i32 @g_gate_log(i32 %7, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %8, i32 %9)
  br label %11

11:                                               ; preds = %15, %5
  %12 = call i32 (...) @g_gatec_connect()
  %13 = icmp ne i32 %12, 0
  %14 = xor i1 %13, true
  br i1 %14, label %15, label %21

15:                                               ; preds = %11
  %16 = call i32 @sleep(i32 2)
  %17 = load i32, i32* @LOG_NOTICE, align 4
  %18 = load i32, i32* @host, align 4
  %19 = load i32, i32* @path, align 4
  %20 = call i32 @g_gate_log(i32 %17, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %18, i32 %19)
  br label %11

21:                                               ; preds = %11
  %22 = load i32, i32* @G_GATE_VERSION, align 4
  %23 = getelementptr inbounds %struct.g_gate_ctl_cancel, %struct.g_gate_ctl_cancel* %1, i32 0, i32 2
  store i32 %22, i32* %23, align 4
  %24 = load i32, i32* @unit, align 4
  %25 = getelementptr inbounds %struct.g_gate_ctl_cancel, %struct.g_gate_ctl_cancel* %1, i32 0, i32 1
  store i32 %24, i32* %25, align 8
  %26 = getelementptr inbounds %struct.g_gate_ctl_cancel, %struct.g_gate_ctl_cancel* %1, i32 0, i32 0
  store i64 0, i64* %26, align 8
  %27 = load i32, i32* @G_GATE_CMD_CANCEL, align 4
  %28 = call i32 @g_gate_ioctl(i32 %27, %struct.g_gate_ctl_cancel* %1)
  br label %5
}

declare dso_local i32 @signal(i32, i32) #1

declare dso_local i32 @g_gatec_start(...) #1

declare dso_local i32 @g_gate_log(i32, i8*, i32, i32) #1

declare dso_local i32 @g_gatec_connect(...) #1

declare dso_local i32 @sleep(i32) #1

declare dso_local i32 @g_gate_ioctl(i32, %struct.g_gate_ctl_cancel*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
