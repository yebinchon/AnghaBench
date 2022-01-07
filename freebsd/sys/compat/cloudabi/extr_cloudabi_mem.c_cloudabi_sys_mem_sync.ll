; ModuleID = '/home/carl/AnghaBench/freebsd/sys/compat/cloudabi/extr_cloudabi_mem.c_cloudabi_sys_mem_sync.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/compat/cloudabi/extr_cloudabi_mem.c_cloudabi_sys_mem_sync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32 }
%struct.cloudabi_sys_mem_sync_args = type { i32, i32, i64 }

@MS_ASYNC = common dso_local global i32 0, align 4
@MS_SYNC = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@CLOUDABI_MS_INVALIDATE = common dso_local global i32 0, align 4
@MS_INVALIDATE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cloudabi_sys_mem_sync(%struct.thread* %0, %struct.cloudabi_sys_mem_sync_args* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.thread*, align 8
  %5 = alloca %struct.cloudabi_sys_mem_sync_args*, align 8
  %6 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %4, align 8
  store %struct.cloudabi_sys_mem_sync_args* %1, %struct.cloudabi_sys_mem_sync_args** %5, align 8
  %7 = load %struct.cloudabi_sys_mem_sync_args*, %struct.cloudabi_sys_mem_sync_args** %5, align 8
  %8 = getelementptr inbounds %struct.cloudabi_sys_mem_sync_args, %struct.cloudabi_sys_mem_sync_args* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = and i32 %9, 129
  switch i32 %10, label %15 [
    i32 129, label %11
    i32 128, label %13
  ]

11:                                               ; preds = %2
  %12 = load i32, i32* @MS_ASYNC, align 4
  store i32 %12, i32* %6, align 4
  br label %17

13:                                               ; preds = %2
  %14 = load i32, i32* @MS_SYNC, align 4
  store i32 %14, i32* %6, align 4
  br label %17

15:                                               ; preds = %2
  %16 = load i32, i32* @EINVAL, align 4
  store i32 %16, i32* %3, align 4
  br label %38

17:                                               ; preds = %13, %11
  %18 = load %struct.cloudabi_sys_mem_sync_args*, %struct.cloudabi_sys_mem_sync_args** %5, align 8
  %19 = getelementptr inbounds %struct.cloudabi_sys_mem_sync_args, %struct.cloudabi_sys_mem_sync_args* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @CLOUDABI_MS_INVALIDATE, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %17
  %25 = load i32, i32* @MS_INVALIDATE, align 4
  %26 = load i32, i32* %6, align 4
  %27 = or i32 %26, %25
  store i32 %27, i32* %6, align 4
  br label %28

28:                                               ; preds = %24, %17
  %29 = load %struct.thread*, %struct.thread** %4, align 8
  %30 = load %struct.cloudabi_sys_mem_sync_args*, %struct.cloudabi_sys_mem_sync_args** %5, align 8
  %31 = getelementptr inbounds %struct.cloudabi_sys_mem_sync_args, %struct.cloudabi_sys_mem_sync_args* %30, i32 0, i32 2
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.cloudabi_sys_mem_sync_args*, %struct.cloudabi_sys_mem_sync_args** %5, align 8
  %34 = getelementptr inbounds %struct.cloudabi_sys_mem_sync_args, %struct.cloudabi_sys_mem_sync_args* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* %6, align 4
  %37 = call i32 @kern_msync(%struct.thread* %29, i64 %32, i32 %35, i32 %36)
  store i32 %37, i32* %3, align 4
  br label %38

38:                                               ; preds = %28, %15
  %39 = load i32, i32* %3, align 4
  ret i32 %39
}

declare dso_local i32 @kern_msync(%struct.thread*, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
