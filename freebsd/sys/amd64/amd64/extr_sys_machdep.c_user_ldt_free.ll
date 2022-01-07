; ModuleID = '/home/carl/AnghaBench/freebsd/sys/amd64/amd64/extr_sys_machdep.c_user_ldt_free.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/amd64/amd64/extr_sys_machdep.c_user_ldt_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { %struct.proc* }
%struct.proc = type { %struct.mdproc }
%struct.mdproc = type { i32, %struct.proc_ldt* }
%struct.proc_ldt = type { i32 }

@dt_lock = common dso_local global i32 0, align 4
@curthread = common dso_local global %struct.thread* null, align 8
@GNULL_SEL = common dso_local global i32 0, align 4
@SEL_KPL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @user_ldt_free(%struct.thread* %0) #0 {
  %2 = alloca %struct.thread*, align 8
  %3 = alloca %struct.proc*, align 8
  %4 = alloca %struct.mdproc*, align 8
  %5 = alloca %struct.proc_ldt*, align 8
  store %struct.thread* %0, %struct.thread** %2, align 8
  %6 = load %struct.thread*, %struct.thread** %2, align 8
  %7 = getelementptr inbounds %struct.thread, %struct.thread* %6, i32 0, i32 0
  %8 = load %struct.proc*, %struct.proc** %7, align 8
  store %struct.proc* %8, %struct.proc** %3, align 8
  %9 = load %struct.proc*, %struct.proc** %3, align 8
  %10 = getelementptr inbounds %struct.proc, %struct.proc* %9, i32 0, i32 0
  store %struct.mdproc* %10, %struct.mdproc** %4, align 8
  %11 = call i32 @mtx_lock(i32* @dt_lock)
  %12 = load %struct.mdproc*, %struct.mdproc** %4, align 8
  %13 = getelementptr inbounds %struct.mdproc, %struct.mdproc* %12, i32 0, i32 1
  %14 = load %struct.proc_ldt*, %struct.proc_ldt** %13, align 8
  store %struct.proc_ldt* %14, %struct.proc_ldt** %5, align 8
  %15 = icmp eq %struct.proc_ldt* %14, null
  br i1 %15, label %16, label %18

16:                                               ; preds = %1
  %17 = call i32 @mtx_unlock(i32* @dt_lock)
  br label %38

18:                                               ; preds = %1
  %19 = call i32 (...) @critical_enter()
  %20 = load %struct.mdproc*, %struct.mdproc** %4, align 8
  %21 = getelementptr inbounds %struct.mdproc, %struct.mdproc* %20, i32 0, i32 1
  store %struct.proc_ldt* null, %struct.proc_ldt** %21, align 8
  %22 = call i32 (...) @atomic_thread_fence_rel()
  %23 = load %struct.mdproc*, %struct.mdproc** %4, align 8
  %24 = getelementptr inbounds %struct.mdproc, %struct.mdproc* %23, i32 0, i32 0
  %25 = call i32 @bzero(i32* %24, i32 4)
  %26 = load %struct.thread*, %struct.thread** %2, align 8
  %27 = load %struct.thread*, %struct.thread** @curthread, align 8
  %28 = icmp eq %struct.thread* %26, %27
  br i1 %28, label %29, label %34

29:                                               ; preds = %18
  %30 = load i32, i32* @GNULL_SEL, align 4
  %31 = load i32, i32* @SEL_KPL, align 4
  %32 = call i32 @GSEL(i32 %30, i32 %31)
  %33 = call i32 @lldt(i32 %32)
  br label %34

34:                                               ; preds = %29, %18
  %35 = call i32 (...) @critical_exit()
  %36 = load %struct.proc_ldt*, %struct.proc_ldt** %5, align 8
  %37 = call i32 @user_ldt_deref(%struct.proc_ldt* %36)
  br label %38

38:                                               ; preds = %34, %16
  ret void
}

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @critical_enter(...) #1

declare dso_local i32 @atomic_thread_fence_rel(...) #1

declare dso_local i32 @bzero(i32*, i32) #1

declare dso_local i32 @lldt(i32) #1

declare dso_local i32 @GSEL(i32, i32) #1

declare dso_local i32 @critical_exit(...) #1

declare dso_local i32 @user_ldt_deref(%struct.proc_ldt*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
