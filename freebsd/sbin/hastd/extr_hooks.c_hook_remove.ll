; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/hastd/extr_hooks.c_hook_remove.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/hastd/extr_hooks.c_hook_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hookproc = type { i64, i64 }

@HOOKPROC_MAGIC_ONLIST = common dso_local global i64 0, align 8
@hookprocs_lock = common dso_local global i32 0, align 4
@hookprocs = common dso_local global i32 0, align 4
@hp_next = common dso_local global i32 0, align 4
@HOOKPROC_MAGIC_ALLOCATED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hookproc*)* @hook_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hook_remove(%struct.hookproc* %0) #0 {
  %2 = alloca %struct.hookproc*, align 8
  store %struct.hookproc* %0, %struct.hookproc** %2, align 8
  %3 = load %struct.hookproc*, %struct.hookproc** %2, align 8
  %4 = getelementptr inbounds %struct.hookproc, %struct.hookproc* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = load i64, i64* @HOOKPROC_MAGIC_ONLIST, align 8
  %7 = icmp eq i64 %5, %6
  %8 = zext i1 %7 to i32
  %9 = call i32 @PJDLOG_ASSERT(i32 %8)
  %10 = load %struct.hookproc*, %struct.hookproc** %2, align 8
  %11 = getelementptr inbounds %struct.hookproc, %struct.hookproc* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = icmp sgt i64 %12, 0
  %14 = zext i1 %13 to i32
  %15 = call i32 @PJDLOG_ASSERT(i32 %14)
  %16 = call i32 @mtx_owned(i32* @hookprocs_lock)
  %17 = call i32 @PJDLOG_ASSERT(i32 %16)
  %18 = load %struct.hookproc*, %struct.hookproc** %2, align 8
  %19 = load i32, i32* @hp_next, align 4
  %20 = call i32 @TAILQ_REMOVE(i32* @hookprocs, %struct.hookproc* %18, i32 %19)
  %21 = load i64, i64* @HOOKPROC_MAGIC_ALLOCATED, align 8
  %22 = load %struct.hookproc*, %struct.hookproc** %2, align 8
  %23 = getelementptr inbounds %struct.hookproc, %struct.hookproc* %22, i32 0, i32 0
  store i64 %21, i64* %23, align 8
  ret void
}

declare dso_local i32 @PJDLOG_ASSERT(i32) #1

declare dso_local i32 @mtx_owned(i32*) #1

declare dso_local i32 @TAILQ_REMOVE(i32*, %struct.hookproc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
