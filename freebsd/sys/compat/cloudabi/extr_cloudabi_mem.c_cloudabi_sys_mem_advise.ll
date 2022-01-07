; ModuleID = '/home/carl/AnghaBench/freebsd/sys/compat/cloudabi/extr_cloudabi_mem.c_cloudabi_sys_mem_advise.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/compat/cloudabi/extr_cloudabi_mem.c_cloudabi_sys_mem_advise.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32 }
%struct.cloudabi_sys_mem_advise_args = type { i32, i32, i64 }

@MADV_DONTNEED = common dso_local global i32 0, align 4
@MADV_NORMAL = common dso_local global i32 0, align 4
@MADV_RANDOM = common dso_local global i32 0, align 4
@MADV_SEQUENTIAL = common dso_local global i32 0, align 4
@MADV_WILLNEED = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cloudabi_sys_mem_advise(%struct.thread* %0, %struct.cloudabi_sys_mem_advise_args* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.thread*, align 8
  %5 = alloca %struct.cloudabi_sys_mem_advise_args*, align 8
  %6 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %4, align 8
  store %struct.cloudabi_sys_mem_advise_args* %1, %struct.cloudabi_sys_mem_advise_args** %5, align 8
  %7 = load %struct.cloudabi_sys_mem_advise_args*, %struct.cloudabi_sys_mem_advise_args** %5, align 8
  %8 = getelementptr inbounds %struct.cloudabi_sys_mem_advise_args, %struct.cloudabi_sys_mem_advise_args* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  switch i32 %9, label %20 [
    i32 132, label %10
    i32 131, label %12
    i32 130, label %14
    i32 129, label %16
    i32 128, label %18
  ]

10:                                               ; preds = %2
  %11 = load i32, i32* @MADV_DONTNEED, align 4
  store i32 %11, i32* %6, align 4
  br label %22

12:                                               ; preds = %2
  %13 = load i32, i32* @MADV_NORMAL, align 4
  store i32 %13, i32* %6, align 4
  br label %22

14:                                               ; preds = %2
  %15 = load i32, i32* @MADV_RANDOM, align 4
  store i32 %15, i32* %6, align 4
  br label %22

16:                                               ; preds = %2
  %17 = load i32, i32* @MADV_SEQUENTIAL, align 4
  store i32 %17, i32* %6, align 4
  br label %22

18:                                               ; preds = %2
  %19 = load i32, i32* @MADV_WILLNEED, align 4
  store i32 %19, i32* %6, align 4
  br label %22

20:                                               ; preds = %2
  %21 = load i32, i32* @EINVAL, align 4
  store i32 %21, i32* %3, align 4
  br label %32

22:                                               ; preds = %18, %16, %14, %12, %10
  %23 = load %struct.thread*, %struct.thread** %4, align 8
  %24 = load %struct.cloudabi_sys_mem_advise_args*, %struct.cloudabi_sys_mem_advise_args** %5, align 8
  %25 = getelementptr inbounds %struct.cloudabi_sys_mem_advise_args, %struct.cloudabi_sys_mem_advise_args* %24, i32 0, i32 2
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.cloudabi_sys_mem_advise_args*, %struct.cloudabi_sys_mem_advise_args** %5, align 8
  %28 = getelementptr inbounds %struct.cloudabi_sys_mem_advise_args, %struct.cloudabi_sys_mem_advise_args* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* %6, align 4
  %31 = call i32 @kern_madvise(%struct.thread* %23, i64 %26, i32 %29, i32 %30)
  store i32 %31, i32* %3, align 4
  br label %32

32:                                               ; preds = %22, %20
  %33 = load i32, i32* %3, align 4
  ret i32 %33
}

declare dso_local i32 @kern_madvise(%struct.thread*, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
