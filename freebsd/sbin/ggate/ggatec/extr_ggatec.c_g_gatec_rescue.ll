; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/ggate/ggatec/extr_ggatec.c_g_gatec_rescue.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/ggate/ggatec/extr_ggatec.c_g_gatec_rescue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.g_gate_ctl_cancel = type { i64, i32, i32 }

@.str = private unnamed_addr constant [20 x i8] c"Cannot connect: %s.\00", align 1
@errno = common dso_local global i32 0, align 4
@G_GATE_VERSION = common dso_local global i32 0, align 4
@unit = common dso_local global i32 0, align 4
@G_GATE_CMD_CANCEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @g_gatec_rescue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @g_gatec_rescue() #0 {
  %1 = alloca %struct.g_gate_ctl_cancel, align 8
  %2 = call i32 (...) @g_gatec_connect()
  %3 = icmp ne i32 %2, 0
  br i1 %3, label %8, label %4

4:                                                ; preds = %0
  %5 = load i32, i32* @errno, align 4
  %6 = call i32 @strerror(i32 %5)
  %7 = call i32 @g_gate_xlog(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %6)
  br label %8

8:                                                ; preds = %4, %0
  %9 = load i32, i32* @G_GATE_VERSION, align 4
  %10 = getelementptr inbounds %struct.g_gate_ctl_cancel, %struct.g_gate_ctl_cancel* %1, i32 0, i32 2
  store i32 %9, i32* %10, align 4
  %11 = load i32, i32* @unit, align 4
  %12 = getelementptr inbounds %struct.g_gate_ctl_cancel, %struct.g_gate_ctl_cancel* %1, i32 0, i32 1
  store i32 %11, i32* %12, align 8
  %13 = getelementptr inbounds %struct.g_gate_ctl_cancel, %struct.g_gate_ctl_cancel* %1, i32 0, i32 0
  store i64 0, i64* %13, align 8
  %14 = load i32, i32* @G_GATE_CMD_CANCEL, align 4
  %15 = call i32 @g_gate_ioctl(i32 %14, %struct.g_gate_ctl_cancel* %1)
  %16 = call i32 (...) @mydaemon()
  %17 = call i32 (...) @g_gatec_loop()
  ret void
}

declare dso_local i32 @g_gatec_connect(...) #1

declare dso_local i32 @g_gate_xlog(i8*, i32) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i32 @g_gate_ioctl(i32, %struct.g_gate_ctl_cancel*) #1

declare dso_local i32 @mydaemon(...) #1

declare dso_local i32 @g_gatec_loop(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
