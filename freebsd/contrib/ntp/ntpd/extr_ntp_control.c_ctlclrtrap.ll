; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/ntpd/extr_ntp_control.c_ctlclrtrap.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/ntpd/extr_ntp_control.c_ctlclrtrap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.interface = type { i32 }
%struct.ctl_trap = type { i32 }

@TRAP_CONFIGURED = common dso_local global i32 0, align 4
@TRAP_TYPE_CONFIG = common dso_local global i32 0, align 4
@num_ctl_traps = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ctlclrtrap(i32* %0, %struct.interface* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.interface*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ctl_trap*, align 8
  store i32* %0, i32** %5, align 8
  store %struct.interface* %1, %struct.interface** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load i32*, i32** %5, align 8
  %10 = load %struct.interface*, %struct.interface** %6, align 8
  %11 = call %struct.ctl_trap* @ctlfindtrap(i32* %9, %struct.interface* %10)
  store %struct.ctl_trap* %11, %struct.ctl_trap** %8, align 8
  %12 = icmp eq %struct.ctl_trap* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %31

14:                                               ; preds = %3
  %15 = load %struct.ctl_trap*, %struct.ctl_trap** %8, align 8
  %16 = getelementptr inbounds %struct.ctl_trap, %struct.ctl_trap* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @TRAP_CONFIGURED, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %14
  %22 = load i32, i32* %7, align 4
  %23 = load i32, i32* @TRAP_TYPE_CONFIG, align 4
  %24 = icmp ne i32 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %21
  store i32 0, i32* %4, align 4
  br label %31

26:                                               ; preds = %21, %14
  %27 = load %struct.ctl_trap*, %struct.ctl_trap** %8, align 8
  %28 = getelementptr inbounds %struct.ctl_trap, %struct.ctl_trap* %27, i32 0, i32 0
  store i32 0, i32* %28, align 4
  %29 = load i32, i32* @num_ctl_traps, align 4
  %30 = add nsw i32 %29, -1
  store i32 %30, i32* @num_ctl_traps, align 4
  store i32 1, i32* %4, align 4
  br label %31

31:                                               ; preds = %26, %25, %13
  %32 = load i32, i32* %4, align 4
  ret i32 %32
}

declare dso_local %struct.ctl_trap* @ctlfindtrap(i32*, %struct.interface*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
