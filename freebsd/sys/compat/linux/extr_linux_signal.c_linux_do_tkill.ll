; ModuleID = '/home/carl/AnghaBench/freebsd/sys/compat/linux/extr_linux_signal.c_linux_do_tkill.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/compat/linux/extr_linux_signal.c_linux_do_tkill.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { %struct.proc* }
%struct.proc = type { i32 }
%struct.TYPE_4__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.thread*, %struct.thread*, %struct.TYPE_4__*)* @linux_do_tkill to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @linux_do_tkill(%struct.thread* %0, %struct.thread* %1, %struct.TYPE_4__* %2) #0 {
  %4 = alloca %struct.thread*, align 8
  %5 = alloca %struct.thread*, align 8
  %6 = alloca %struct.TYPE_4__*, align 8
  %7 = alloca %struct.proc*, align 8
  %8 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %4, align 8
  store %struct.thread* %1, %struct.thread** %5, align 8
  store %struct.TYPE_4__* %2, %struct.TYPE_4__** %6, align 8
  %9 = load %struct.thread*, %struct.thread** %5, align 8
  %10 = getelementptr inbounds %struct.thread, %struct.thread* %9, i32 0, i32 0
  %11 = load %struct.proc*, %struct.proc** %10, align 8
  store %struct.proc* %11, %struct.proc** %7, align 8
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = call i32 @AUDIT_ARG_SIGNUM(i64 %14)
  %16 = load %struct.proc*, %struct.proc** %7, align 8
  %17 = getelementptr inbounds %struct.proc, %struct.proc* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @AUDIT_ARG_PID(i32 %18)
  %20 = load %struct.proc*, %struct.proc** %7, align 8
  %21 = call i32 @AUDIT_ARG_PROCESS(%struct.proc* %20)
  %22 = load %struct.thread*, %struct.thread** %4, align 8
  %23 = load %struct.proc*, %struct.proc** %7, align 8
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = call i32 @p_cansignal(%struct.thread* %22, %struct.proc* %23, i64 %26)
  store i32 %27, i32* %8, align 4
  %28 = load i32, i32* %8, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %35, label %30

30:                                               ; preds = %3
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %30, %3
  br label %43

36:                                               ; preds = %30
  %37 = load %struct.thread*, %struct.thread** %5, align 8
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %42 = call i32 @tdksignal(%struct.thread* %37, i64 %40, %struct.TYPE_4__* %41)
  br label %43

43:                                               ; preds = %36, %35
  %44 = load %struct.proc*, %struct.proc** %7, align 8
  %45 = call i32 @PROC_UNLOCK(%struct.proc* %44)
  %46 = load i32, i32* %8, align 4
  ret i32 %46
}

declare dso_local i32 @AUDIT_ARG_SIGNUM(i64) #1

declare dso_local i32 @AUDIT_ARG_PID(i32) #1

declare dso_local i32 @AUDIT_ARG_PROCESS(%struct.proc*) #1

declare dso_local i32 @p_cansignal(%struct.thread*, %struct.proc*, i64) #1

declare dso_local i32 @tdksignal(%struct.thread*, i64, %struct.TYPE_4__*) #1

declare dso_local i32 @PROC_UNLOCK(%struct.proc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
