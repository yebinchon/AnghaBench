; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_target.c_store_waitstatus.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_target.c_store_waitstatus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.target_waitstatus = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i8*, i32 }

@TARGET_WAITKIND_EXITED = common dso_local global i32 0, align 4
@TARGET_WAITKIND_SIGNALLED = common dso_local global i32 0, align 4
@TARGET_WAITKIND_STOPPED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @store_waitstatus(%struct.target_waitstatus* %0, i32 %1) #0 {
  %3 = alloca %struct.target_waitstatus*, align 8
  %4 = alloca i32, align 4
  store %struct.target_waitstatus* %0, %struct.target_waitstatus** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = call i64 @WIFEXITED(i32 %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %17

8:                                                ; preds = %2
  %9 = load i32, i32* @TARGET_WAITKIND_EXITED, align 4
  %10 = load %struct.target_waitstatus*, %struct.target_waitstatus** %3, align 8
  %11 = getelementptr inbounds %struct.target_waitstatus, %struct.target_waitstatus* %10, i32 0, i32 1
  store i32 %9, i32* %11, align 8
  %12 = load i32, i32* %4, align 4
  %13 = call i32 @WEXITSTATUS(i32 %12)
  %14 = load %struct.target_waitstatus*, %struct.target_waitstatus** %3, align 8
  %15 = getelementptr inbounds %struct.target_waitstatus, %struct.target_waitstatus* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 1
  store i32 %13, i32* %16, align 8
  br label %42

17:                                               ; preds = %2
  %18 = load i32, i32* %4, align 4
  %19 = call i32 @WIFSTOPPED(i32 %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %31, label %21

21:                                               ; preds = %17
  %22 = load i32, i32* @TARGET_WAITKIND_SIGNALLED, align 4
  %23 = load %struct.target_waitstatus*, %struct.target_waitstatus** %3, align 8
  %24 = getelementptr inbounds %struct.target_waitstatus, %struct.target_waitstatus* %23, i32 0, i32 1
  store i32 %22, i32* %24, align 8
  %25 = load i32, i32* %4, align 4
  %26 = call i32 @WTERMSIG(i32 %25)
  %27 = call i8* @target_signal_from_host(i32 %26)
  %28 = load %struct.target_waitstatus*, %struct.target_waitstatus** %3, align 8
  %29 = getelementptr inbounds %struct.target_waitstatus, %struct.target_waitstatus* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  store i8* %27, i8** %30, align 8
  br label %41

31:                                               ; preds = %17
  %32 = load i32, i32* @TARGET_WAITKIND_STOPPED, align 4
  %33 = load %struct.target_waitstatus*, %struct.target_waitstatus** %3, align 8
  %34 = getelementptr inbounds %struct.target_waitstatus, %struct.target_waitstatus* %33, i32 0, i32 1
  store i32 %32, i32* %34, align 8
  %35 = load i32, i32* %4, align 4
  %36 = call i32 @WSTOPSIG(i32 %35)
  %37 = call i8* @target_signal_from_host(i32 %36)
  %38 = load %struct.target_waitstatus*, %struct.target_waitstatus** %3, align 8
  %39 = getelementptr inbounds %struct.target_waitstatus, %struct.target_waitstatus* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  store i8* %37, i8** %40, align 8
  br label %41

41:                                               ; preds = %31, %21
  br label %42

42:                                               ; preds = %41, %8
  ret void
}

declare dso_local i64 @WIFEXITED(i32) #1

declare dso_local i32 @WEXITSTATUS(i32) #1

declare dso_local i32 @WIFSTOPPED(i32) #1

declare dso_local i8* @target_signal_from_host(i32) #1

declare dso_local i32 @WTERMSIG(i32) #1

declare dso_local i32 @WSTOPSIG(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
