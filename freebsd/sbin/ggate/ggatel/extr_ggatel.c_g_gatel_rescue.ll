; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/ggate/ggatel/extr_ggatel.c_g_gatel_rescue.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/ggate/ggatel/extr_ggatel.c_g_gatel_rescue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.g_gate_ctl_cancel = type { i64, i32, i32 }

@path = common dso_local global i32 0, align 4
@flags = common dso_local global i32 0, align 4
@EXIT_FAILURE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"Cannot open %s\00", align 1
@G_GATE_VERSION = common dso_local global i32 0, align 4
@unit = common dso_local global i32 0, align 4
@G_GATE_CMD_CANCEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @g_gatel_rescue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @g_gatel_rescue() #0 {
  %1 = alloca %struct.g_gate_ctl_cancel, align 8
  %2 = alloca i32, align 4
  %3 = load i32, i32* @path, align 4
  %4 = load i32, i32* @flags, align 4
  %5 = call i32 @g_gate_openflags(i32 %4)
  %6 = call i32 @open(i32 %3, i32 %5)
  store i32 %6, i32* %2, align 4
  %7 = load i32, i32* %2, align 4
  %8 = icmp eq i32 %7, -1
  br i1 %8, label %9, label %13

9:                                                ; preds = %0
  %10 = load i32, i32* @EXIT_FAILURE, align 4
  %11 = load i32, i32* @path, align 4
  %12 = call i32 @err(i32 %10, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %11)
  br label %13

13:                                               ; preds = %9, %0
  %14 = load i32, i32* @G_GATE_VERSION, align 4
  %15 = getelementptr inbounds %struct.g_gate_ctl_cancel, %struct.g_gate_ctl_cancel* %1, i32 0, i32 2
  store i32 %14, i32* %15, align 4
  %16 = load i32, i32* @unit, align 4
  %17 = getelementptr inbounds %struct.g_gate_ctl_cancel, %struct.g_gate_ctl_cancel* %1, i32 0, i32 1
  store i32 %16, i32* %17, align 8
  %18 = getelementptr inbounds %struct.g_gate_ctl_cancel, %struct.g_gate_ctl_cancel* %1, i32 0, i32 0
  store i64 0, i64* %18, align 8
  %19 = load i32, i32* @G_GATE_CMD_CANCEL, align 4
  %20 = call i32 @g_gate_ioctl(i32 %19, %struct.g_gate_ctl_cancel* %1)
  %21 = load i32, i32* %2, align 4
  %22 = call i32 @g_gatel_serve(i32 %21)
  ret void
}

declare dso_local i32 @open(i32, i32) #1

declare dso_local i32 @g_gate_openflags(i32) #1

declare dso_local i32 @err(i32, i8*, i32) #1

declare dso_local i32 @g_gate_ioctl(i32, %struct.g_gate_ctl_cancel*) #1

declare dso_local i32 @g_gatel_serve(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
