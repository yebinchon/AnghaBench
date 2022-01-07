; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/hastd/extr_hooks.c_hook_fini.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/hastd/extr_hooks.c_hook_fini.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hookproc = type { i64, i64 }

@hooks_initialized = common dso_local global i32 0, align 4
@hookprocs_lock = common dso_local global i32 0, align 4
@hookprocs = common dso_local global i32 0, align 4
@HOOKPROC_MAGIC_ONLIST = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hook_fini() #0 {
  %1 = alloca %struct.hookproc*, align 8
  %2 = load i32, i32* @hooks_initialized, align 4
  %3 = call i32 @PJDLOG_ASSERT(i32 %2)
  %4 = call i32 @mtx_lock(i32* @hookprocs_lock)
  br label %5

5:                                                ; preds = %8, %0
  %6 = call %struct.hookproc* @TAILQ_FIRST(i32* @hookprocs)
  store %struct.hookproc* %6, %struct.hookproc** %1, align 8
  %7 = icmp ne %struct.hookproc* %6, null
  br i1 %7, label %8, label %26

8:                                                ; preds = %5
  %9 = load %struct.hookproc*, %struct.hookproc** %1, align 8
  %10 = getelementptr inbounds %struct.hookproc, %struct.hookproc* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @HOOKPROC_MAGIC_ONLIST, align 8
  %13 = icmp eq i64 %11, %12
  %14 = zext i1 %13 to i32
  %15 = call i32 @PJDLOG_ASSERT(i32 %14)
  %16 = load %struct.hookproc*, %struct.hookproc** %1, align 8
  %17 = getelementptr inbounds %struct.hookproc, %struct.hookproc* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = icmp sgt i64 %18, 0
  %20 = zext i1 %19 to i32
  %21 = call i32 @PJDLOG_ASSERT(i32 %20)
  %22 = load %struct.hookproc*, %struct.hookproc** %1, align 8
  %23 = call i32 @hook_remove(%struct.hookproc* %22)
  %24 = load %struct.hookproc*, %struct.hookproc** %1, align 8
  %25 = call i32 @hook_free(%struct.hookproc* %24)
  br label %5

26:                                               ; preds = %5
  %27 = call i32 @mtx_unlock(i32* @hookprocs_lock)
  %28 = call i32 @mtx_destroy(i32* @hookprocs_lock)
  %29 = call i32 @TAILQ_INIT(i32* @hookprocs)
  store i32 0, i32* @hooks_initialized, align 4
  ret void
}

declare dso_local i32 @PJDLOG_ASSERT(i32) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local %struct.hookproc* @TAILQ_FIRST(i32*) #1

declare dso_local i32 @hook_remove(%struct.hookproc*) #1

declare dso_local i32 @hook_free(%struct.hookproc*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @mtx_destroy(i32*) #1

declare dso_local i32 @TAILQ_INIT(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
