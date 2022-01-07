; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_sh.proc.c_pwait.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_sh.proc.c_pwait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.process = type { i64, %struct.process* }

@proclist = common dso_local global %struct.process zeroinitializer, align 8
@pcurrjob = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pwait() #0 {
  %1 = alloca %struct.process*, align 8
  %2 = alloca %struct.process*, align 8
  store %struct.process* @proclist, %struct.process** %1, align 8
  %3 = load %struct.process*, %struct.process** getelementptr inbounds (%struct.process, %struct.process* @proclist, i32 0, i32 1), align 8
  store %struct.process* %3, %struct.process** %2, align 8
  br label %4

4:                                                ; preds = %22, %0
  %5 = load %struct.process*, %struct.process** %2, align 8
  %6 = icmp ne %struct.process* %5, null
  br i1 %6, label %7, label %26

7:                                                ; preds = %4
  %8 = load %struct.process*, %struct.process** %2, align 8
  %9 = getelementptr inbounds %struct.process, %struct.process* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %12, label %21

12:                                               ; preds = %7
  %13 = load %struct.process*, %struct.process** %2, align 8
  %14 = getelementptr inbounds %struct.process, %struct.process* %13, i32 0, i32 1
  %15 = load %struct.process*, %struct.process** %14, align 8
  %16 = load %struct.process*, %struct.process** %1, align 8
  %17 = getelementptr inbounds %struct.process, %struct.process* %16, i32 0, i32 1
  store %struct.process* %15, %struct.process** %17, align 8
  %18 = load %struct.process*, %struct.process** %2, align 8
  %19 = call i32 @pfree(%struct.process* %18)
  %20 = load %struct.process*, %struct.process** %1, align 8
  store %struct.process* %20, %struct.process** %2, align 8
  br label %21

21:                                               ; preds = %12, %7
  br label %22

22:                                               ; preds = %21
  %23 = load %struct.process*, %struct.process** %2, align 8
  store %struct.process* %23, %struct.process** %1, align 8
  %24 = getelementptr inbounds %struct.process, %struct.process* %23, i32 0, i32 1
  %25 = load %struct.process*, %struct.process** %24, align 8
  store %struct.process* %25, %struct.process** %2, align 8
  br label %4

26:                                               ; preds = %4
  %27 = load i32, i32* @pcurrjob, align 4
  %28 = call i32 @pjwait(i32 %27)
  ret void
}

declare dso_local i32 @pfree(%struct.process*) #1

declare dso_local i32 @pjwait(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
