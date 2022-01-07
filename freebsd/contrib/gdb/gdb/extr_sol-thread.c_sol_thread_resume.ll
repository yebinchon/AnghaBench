; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_sol-thread.c_sol_thread_resume.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_sol-thread.c_sol_thread_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 (i32, i32, i32)* }
%struct.cleanup = type { i32 }

@inferior_ptid = common dso_local global i32 0, align 4
@main_ph = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@.str = private unnamed_addr constant [54 x i8] c"This version of Solaris can't start inactive threads.\00", align 1
@info_verbose = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [46 x i8] c"Specified thread %ld seems to have terminated\00", align 1
@procfs_ops = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32)* @sol_thread_resume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sol_thread_resume(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.cleanup*, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = call %struct.cleanup* (...) @save_inferior_ptid()
  store %struct.cleanup* %9, %struct.cleanup** %7, align 8
  %10 = load i32, i32* @inferior_ptid, align 4
  %11 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @main_ph, i32 0, i32 0), align 4
  %12 = call i32 @PIDGET(i32 %11)
  %13 = call i32 @thread_to_lwp(i32 %10, i32 %12)
  store i32 %13, i32* @inferior_ptid, align 4
  %14 = load i32, i32* @inferior_ptid, align 4
  %15 = call i32 @PIDGET(i32 %14)
  %16 = icmp eq i32 %15, -1
  br i1 %16, label %17, label %19

17:                                               ; preds = %3
  %18 = call i32 (...) @procfs_first_available()
  store i32 %18, i32* @inferior_ptid, align 4
  br label %19

19:                                               ; preds = %17, %3
  %20 = load i32, i32* %4, align 4
  %21 = call i32 @PIDGET(i32 %20)
  %22 = icmp ne i32 %21, -1
  br i1 %22, label %23, label %44

23:                                               ; preds = %19
  %24 = load i32, i32* %4, align 4
  store i32 %24, i32* %8, align 4
  %25 = load i32, i32* %4, align 4
  %26 = call i32 @thread_to_lwp(i32 %25, i32 -2)
  store i32 %26, i32* %4, align 4
  %27 = load i32, i32* %4, align 4
  %28 = call i32 @PIDGET(i32 %27)
  %29 = icmp eq i32 %28, -2
  br i1 %29, label %30, label %32

30:                                               ; preds = %23
  %31 = call i32 @error(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0))
  br label %32

32:                                               ; preds = %30, %23
  %33 = load i64, i64* @info_verbose, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %43

35:                                               ; preds = %32
  %36 = load i32, i32* %4, align 4
  %37 = call i32 @PIDGET(i32 %36)
  %38 = icmp eq i32 %37, -1
  br i1 %38, label %39, label %43

39:                                               ; preds = %35
  %40 = load i32, i32* %8, align 4
  %41 = call i32 @GET_THREAD(i32 %40)
  %42 = call i32 @warning(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), i32 %41)
  br label %43

43:                                               ; preds = %39, %35, %32
  br label %44

44:                                               ; preds = %43, %19
  %45 = load i32 (i32, i32, i32)*, i32 (i32, i32, i32)** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @procfs_ops, i32 0, i32 0), align 8
  %46 = load i32, i32* %4, align 4
  %47 = load i32, i32* %5, align 4
  %48 = load i32, i32* %6, align 4
  %49 = call i32 %45(i32 %46, i32 %47, i32 %48)
  %50 = load %struct.cleanup*, %struct.cleanup** %7, align 8
  %51 = call i32 @do_cleanups(%struct.cleanup* %50)
  ret void
}

declare dso_local %struct.cleanup* @save_inferior_ptid(...) #1

declare dso_local i32 @thread_to_lwp(i32, i32) #1

declare dso_local i32 @PIDGET(i32) #1

declare dso_local i32 @procfs_first_available(...) #1

declare dso_local i32 @error(i8*) #1

declare dso_local i32 @warning(i8*, i32) #1

declare dso_local i32 @GET_THREAD(i32) #1

declare dso_local i32 @do_cleanups(%struct.cleanup*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
