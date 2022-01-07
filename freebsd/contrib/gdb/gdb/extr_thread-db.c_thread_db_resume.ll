; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_thread-db.c_thread_db_resume.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_thread-db.c_thread_db_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (i32, i32, i32)* }
%struct.cleanup = type { i32 }

@inferior_ptid = common dso_local global i32 0, align 4
@clear_lwpid_callback = common dso_local global i32 0, align 4
@target_beneath = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32)* @thread_db_resume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @thread_db_resume(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.cleanup*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = call %struct.cleanup* (...) @save_inferior_ptid()
  store %struct.cleanup* %8, %struct.cleanup** %7, align 8
  %9 = load i32, i32* %4, align 4
  %10 = call i32 @GET_PID(i32 %9)
  %11 = icmp eq i32 %10, -1
  br i1 %11, label %12, label %15

12:                                               ; preds = %3
  %13 = load i32, i32* @inferior_ptid, align 4
  %14 = call i32 @lwp_from_thread(i32 %13)
  store i32 %14, i32* @inferior_ptid, align 4
  br label %23

15:                                               ; preds = %3
  %16 = load i32, i32* %4, align 4
  %17 = call i64 @is_thread(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %15
  %20 = load i32, i32* %4, align 4
  %21 = call i32 @lwp_from_thread(i32 %20)
  store i32 %21, i32* %4, align 4
  br label %22

22:                                               ; preds = %19, %15
  br label %23

23:                                               ; preds = %22, %12
  %24 = load i32, i32* @clear_lwpid_callback, align 4
  %25 = call i32 @iterate_over_threads(i32 %24, i32* null)
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** @target_beneath, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32 (i32, i32, i32)*, i32 (i32, i32, i32)** %27, align 8
  %29 = load i32, i32* %4, align 4
  %30 = load i32, i32* %5, align 4
  %31 = load i32, i32* %6, align 4
  %32 = call i32 %28(i32 %29, i32 %30, i32 %31)
  %33 = load %struct.cleanup*, %struct.cleanup** %7, align 8
  %34 = call i32 @do_cleanups(%struct.cleanup* %33)
  ret void
}

declare dso_local %struct.cleanup* @save_inferior_ptid(...) #1

declare dso_local i32 @GET_PID(i32) #1

declare dso_local i32 @lwp_from_thread(i32) #1

declare dso_local i64 @is_thread(i32) #1

declare dso_local i32 @iterate_over_threads(i32, i32*) #1

declare dso_local i32 @do_cleanups(%struct.cleanup*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
