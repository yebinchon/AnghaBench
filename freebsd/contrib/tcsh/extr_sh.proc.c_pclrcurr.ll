; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_sh.proc.c_pclrcurr.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_sh.proc.c_pclrcurr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.process = type { i32 }

@pcurrent = common dso_local global %struct.process* null, align 8
@pprevious = common dso_local global %struct.process* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.process*)* @pclrcurr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pclrcurr(%struct.process* %0) #0 {
  %2 = alloca %struct.process*, align 8
  store %struct.process* %0, %struct.process** %2, align 8
  %3 = load %struct.process*, %struct.process** %2, align 8
  %4 = load %struct.process*, %struct.process** @pcurrent, align 8
  %5 = icmp eq %struct.process* %3, %4
  br i1 %5, label %6, label %19

6:                                                ; preds = %1
  %7 = load %struct.process*, %struct.process** @pprevious, align 8
  %8 = icmp ne %struct.process* %7, null
  br i1 %8, label %9, label %13

9:                                                ; preds = %6
  %10 = load %struct.process*, %struct.process** @pprevious, align 8
  store %struct.process* %10, %struct.process** @pcurrent, align 8
  %11 = load %struct.process*, %struct.process** %2, align 8
  %12 = call %struct.process* @pgetcurr(%struct.process* %11)
  store %struct.process* %12, %struct.process** @pprevious, align 8
  br label %18

13:                                               ; preds = %6
  %14 = load %struct.process*, %struct.process** %2, align 8
  %15 = call %struct.process* @pgetcurr(%struct.process* %14)
  store %struct.process* %15, %struct.process** @pcurrent, align 8
  %16 = load %struct.process*, %struct.process** %2, align 8
  %17 = call %struct.process* @pgetcurr(%struct.process* %16)
  store %struct.process* %17, %struct.process** @pprevious, align 8
  br label %18

18:                                               ; preds = %13, %9
  br label %27

19:                                               ; preds = %1
  %20 = load %struct.process*, %struct.process** %2, align 8
  %21 = load %struct.process*, %struct.process** @pprevious, align 8
  %22 = icmp eq %struct.process* %20, %21
  br i1 %22, label %23, label %26

23:                                               ; preds = %19
  %24 = load %struct.process*, %struct.process** %2, align 8
  %25 = call %struct.process* @pgetcurr(%struct.process* %24)
  store %struct.process* %25, %struct.process** @pprevious, align 8
  br label %26

26:                                               ; preds = %23, %19
  br label %27

27:                                               ; preds = %26, %18
  ret void
}

declare dso_local %struct.process* @pgetcurr(%struct.process*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
