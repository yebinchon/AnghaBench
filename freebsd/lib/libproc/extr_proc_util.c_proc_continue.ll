; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libproc/extr_proc_util.c_proc_continue.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libproc/extr_proc_util.c_proc_continue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.proc_handle = type { i64, i32 }

@PS_STOP = common dso_local global i64 0, align 8
@SIGTRAP = common dso_local global i32 0, align 4
@PT_CONTINUE = common dso_local global i32 0, align 4
@PS_RUN = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @proc_continue(%struct.proc_handle* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.proc_handle*, align 8
  %4 = alloca i32, align 4
  store %struct.proc_handle* %0, %struct.proc_handle** %3, align 8
  %5 = load %struct.proc_handle*, %struct.proc_handle** %3, align 8
  %6 = icmp eq %struct.proc_handle* %5, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %39

8:                                                ; preds = %1
  %9 = load %struct.proc_handle*, %struct.proc_handle** %3, align 8
  %10 = getelementptr inbounds %struct.proc_handle, %struct.proc_handle* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @PS_STOP, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %26

14:                                               ; preds = %8
  %15 = load %struct.proc_handle*, %struct.proc_handle** %3, align 8
  %16 = getelementptr inbounds %struct.proc_handle, %struct.proc_handle* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @WSTOPSIG(i32 %17)
  %19 = load i32, i32* @SIGTRAP, align 4
  %20 = icmp ne i32 %18, %19
  br i1 %20, label %21, label %26

21:                                               ; preds = %14
  %22 = load %struct.proc_handle*, %struct.proc_handle** %3, align 8
  %23 = getelementptr inbounds %struct.proc_handle, %struct.proc_handle* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @WSTOPSIG(i32 %24)
  store i32 %25, i32* %4, align 4
  br label %27

26:                                               ; preds = %14, %8
  store i32 0, i32* %4, align 4
  br label %27

27:                                               ; preds = %26, %21
  %28 = load i32, i32* @PT_CONTINUE, align 4
  %29 = load %struct.proc_handle*, %struct.proc_handle** %3, align 8
  %30 = call i32 @proc_getpid(%struct.proc_handle* %29)
  %31 = load i32, i32* %4, align 4
  %32 = call i64 @ptrace(i32 %28, i32 %30, i32 1, i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %27
  store i32 -1, i32* %2, align 4
  br label %39

35:                                               ; preds = %27
  %36 = load i64, i64* @PS_RUN, align 8
  %37 = load %struct.proc_handle*, %struct.proc_handle** %3, align 8
  %38 = getelementptr inbounds %struct.proc_handle, %struct.proc_handle* %37, i32 0, i32 0
  store i64 %36, i64* %38, align 8
  store i32 0, i32* %2, align 4
  br label %39

39:                                               ; preds = %35, %34, %7
  %40 = load i32, i32* %2, align 4
  ret i32 %40
}

declare dso_local i32 @WSTOPSIG(i32) #1

declare dso_local i64 @ptrace(i32, i32, i32, i32) #1

declare dso_local i32 @proc_getpid(%struct.proc_handle*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
