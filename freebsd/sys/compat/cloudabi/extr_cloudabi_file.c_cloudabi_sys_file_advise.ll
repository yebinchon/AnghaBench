; ModuleID = '/home/carl/AnghaBench/freebsd/sys/compat/cloudabi/extr_cloudabi_file.c_cloudabi_sys_file_advise.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/compat/cloudabi/extr_cloudabi_file.c_cloudabi_sys_file_advise.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32 }
%struct.cloudabi_sys_file_advise_args = type { i32, i32, i32, i32 }

@POSIX_FADV_DONTNEED = common dso_local global i32 0, align 4
@POSIX_FADV_NOREUSE = common dso_local global i32 0, align 4
@POSIX_FADV_NORMAL = common dso_local global i32 0, align 4
@POSIX_FADV_RANDOM = common dso_local global i32 0, align 4
@POSIX_FADV_SEQUENTIAL = common dso_local global i32 0, align 4
@POSIX_FADV_WILLNEED = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cloudabi_sys_file_advise(%struct.thread* %0, %struct.cloudabi_sys_file_advise_args* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.thread*, align 8
  %5 = alloca %struct.cloudabi_sys_file_advise_args*, align 8
  %6 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %4, align 8
  store %struct.cloudabi_sys_file_advise_args* %1, %struct.cloudabi_sys_file_advise_args** %5, align 8
  %7 = load %struct.cloudabi_sys_file_advise_args*, %struct.cloudabi_sys_file_advise_args** %5, align 8
  %8 = getelementptr inbounds %struct.cloudabi_sys_file_advise_args, %struct.cloudabi_sys_file_advise_args* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  switch i32 %9, label %22 [
    i32 133, label %10
    i32 132, label %12
    i32 131, label %14
    i32 130, label %16
    i32 129, label %18
    i32 128, label %20
  ]

10:                                               ; preds = %2
  %11 = load i32, i32* @POSIX_FADV_DONTNEED, align 4
  store i32 %11, i32* %6, align 4
  br label %24

12:                                               ; preds = %2
  %13 = load i32, i32* @POSIX_FADV_NOREUSE, align 4
  store i32 %13, i32* %6, align 4
  br label %24

14:                                               ; preds = %2
  %15 = load i32, i32* @POSIX_FADV_NORMAL, align 4
  store i32 %15, i32* %6, align 4
  br label %24

16:                                               ; preds = %2
  %17 = load i32, i32* @POSIX_FADV_RANDOM, align 4
  store i32 %17, i32* %6, align 4
  br label %24

18:                                               ; preds = %2
  %19 = load i32, i32* @POSIX_FADV_SEQUENTIAL, align 4
  store i32 %19, i32* %6, align 4
  br label %24

20:                                               ; preds = %2
  %21 = load i32, i32* @POSIX_FADV_WILLNEED, align 4
  store i32 %21, i32* %6, align 4
  br label %24

22:                                               ; preds = %2
  %23 = load i32, i32* @EINVAL, align 4
  store i32 %23, i32* %3, align 4
  br label %37

24:                                               ; preds = %20, %18, %16, %14, %12, %10
  %25 = load %struct.thread*, %struct.thread** %4, align 8
  %26 = load %struct.cloudabi_sys_file_advise_args*, %struct.cloudabi_sys_file_advise_args** %5, align 8
  %27 = getelementptr inbounds %struct.cloudabi_sys_file_advise_args, %struct.cloudabi_sys_file_advise_args* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.cloudabi_sys_file_advise_args*, %struct.cloudabi_sys_file_advise_args** %5, align 8
  %30 = getelementptr inbounds %struct.cloudabi_sys_file_advise_args, %struct.cloudabi_sys_file_advise_args* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.cloudabi_sys_file_advise_args*, %struct.cloudabi_sys_file_advise_args** %5, align 8
  %33 = getelementptr inbounds %struct.cloudabi_sys_file_advise_args, %struct.cloudabi_sys_file_advise_args* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* %6, align 4
  %36 = call i32 @kern_posix_fadvise(%struct.thread* %25, i32 %28, i32 %31, i32 %34, i32 %35)
  store i32 %36, i32* %3, align 4
  br label %37

37:                                               ; preds = %24, %22
  %38 = load i32, i32* %3, align 4
  ret i32 %38
}

declare dso_local i32 @kern_posix_fadvise(%struct.thread*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
