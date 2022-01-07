; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_uw-thread.c_thr_to_lwp.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_uw-thread.c_thr_to_lwp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread_info = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@null_ptid = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"  thr_to_lwp(%s) = %s\00", align 1
@pid = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @thr_to_lwp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @thr_to_lwp(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.thread_info*, align 8
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  %6 = call i32 @ISTID(i32 %5)
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %1
  %9 = load i32, i32* %2, align 4
  store i32 %9, i32* %4, align 4
  br label %36

10:                                               ; preds = %1
  %11 = load i32, i32* %2, align 4
  %12 = call %struct.thread_info* @find_thread_pid(i32 %11)
  store %struct.thread_info* %12, %struct.thread_info** %3, align 8
  %13 = icmp ne %struct.thread_info* %12, null
  br i1 %13, label %16, label %14

14:                                               ; preds = %10
  %15 = load i32, i32* @null_ptid, align 4
  store i32 %15, i32* %4, align 4
  br label %35

16:                                               ; preds = %10
  %17 = load %struct.thread_info*, %struct.thread_info** %3, align 8
  %18 = getelementptr inbounds %struct.thread_info, %struct.thread_info* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %25, label %23

23:                                               ; preds = %16
  %24 = load i32, i32* @null_ptid, align 4
  store i32 %24, i32* %4, align 4
  br label %34

25:                                               ; preds = %16
  %26 = load i32, i32* %2, align 4
  %27 = call i32 @PIDGET(i32 %26)
  %28 = load %struct.thread_info*, %struct.thread_info** %3, align 8
  %29 = getelementptr inbounds %struct.thread_info, %struct.thread_info* %28, i32 0, i32 0
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @MKLID(i32 %27, i32 %32)
  store i32 %33, i32* %4, align 4
  br label %34

34:                                               ; preds = %25, %23
  br label %35

35:                                               ; preds = %34, %14
  br label %36

36:                                               ; preds = %35, %8
  %37 = load i32, i32* @pid, align 4
  %38 = call i32 @dbgpid(i32 %37)
  %39 = load i32, i32* %4, align 4
  %40 = call i32 @dbgpid(i32 %39)
  %41 = sext i32 %40 to i64
  %42 = inttoptr i64 %41 to i8*
  %43 = call i32 @DBG2(i8* %42)
  %44 = load i32, i32* %4, align 4
  ret i32 %44
}

declare dso_local i32 @ISTID(i32) #1

declare dso_local %struct.thread_info* @find_thread_pid(i32) #1

declare dso_local i32 @MKLID(i32, i32) #1

declare dso_local i32 @PIDGET(i32) #1

declare dso_local i32 @DBG2(i8*) #1

declare dso_local i32 @dbgpid(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
