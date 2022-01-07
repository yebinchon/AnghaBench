; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_sh.proc.c_pgetcurr.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_sh.proc.c_pgetcurr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.process* }
%struct.process = type { i64, i64, i32, %struct.process* }

@proclist = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@pcurrent = common dso_local global %struct.process* null, align 8
@PSTOPPED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.process* (%struct.process*)* @pgetcurr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.process* @pgetcurr(%struct.process* %0) #0 {
  %2 = alloca %struct.process*, align 8
  %3 = alloca %struct.process*, align 8
  %4 = alloca %struct.process*, align 8
  %5 = alloca %struct.process*, align 8
  store %struct.process* %0, %struct.process** %3, align 8
  store %struct.process* null, %struct.process** %5, align 8
  %6 = load %struct.process*, %struct.process** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @proclist, i32 0, i32 0), align 8
  store %struct.process* %6, %struct.process** %4, align 8
  br label %7

7:                                                ; preds = %47, %1
  %8 = load %struct.process*, %struct.process** %4, align 8
  %9 = icmp ne %struct.process* %8, null
  br i1 %9, label %10, label %51

10:                                               ; preds = %7
  %11 = load %struct.process*, %struct.process** %4, align 8
  %12 = load %struct.process*, %struct.process** @pcurrent, align 8
  %13 = icmp ne %struct.process* %11, %12
  br i1 %13, label %14, label %46

14:                                               ; preds = %10
  %15 = load %struct.process*, %struct.process** %4, align 8
  %16 = load %struct.process*, %struct.process** %3, align 8
  %17 = icmp ne %struct.process* %15, %16
  br i1 %17, label %18, label %46

18:                                               ; preds = %14
  %19 = load %struct.process*, %struct.process** %4, align 8
  %20 = getelementptr inbounds %struct.process, %struct.process* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %46

23:                                               ; preds = %18
  %24 = load %struct.process*, %struct.process** %4, align 8
  %25 = getelementptr inbounds %struct.process, %struct.process* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.process*, %struct.process** %4, align 8
  %28 = getelementptr inbounds %struct.process, %struct.process* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = icmp eq i64 %26, %29
  br i1 %30, label %31, label %46

31:                                               ; preds = %23
  %32 = load %struct.process*, %struct.process** %4, align 8
  %33 = getelementptr inbounds %struct.process, %struct.process* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @PSTOPPED, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %31
  %39 = load %struct.process*, %struct.process** %4, align 8
  store %struct.process* %39, %struct.process** %2, align 8
  br label %53

40:                                               ; preds = %31
  %41 = load %struct.process*, %struct.process** %5, align 8
  %42 = icmp eq %struct.process* %41, null
  br i1 %42, label %43, label %45

43:                                               ; preds = %40
  %44 = load %struct.process*, %struct.process** %4, align 8
  store %struct.process* %44, %struct.process** %5, align 8
  br label %45

45:                                               ; preds = %43, %40
  br label %46

46:                                               ; preds = %45, %23, %18, %14, %10
  br label %47

47:                                               ; preds = %46
  %48 = load %struct.process*, %struct.process** %4, align 8
  %49 = getelementptr inbounds %struct.process, %struct.process* %48, i32 0, i32 3
  %50 = load %struct.process*, %struct.process** %49, align 8
  store %struct.process* %50, %struct.process** %4, align 8
  br label %7

51:                                               ; preds = %7
  %52 = load %struct.process*, %struct.process** %5, align 8
  store %struct.process* %52, %struct.process** %2, align 8
  br label %53

53:                                               ; preds = %51, %38
  %54 = load %struct.process*, %struct.process** %2, align 8
  ret %struct.process* %54
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
