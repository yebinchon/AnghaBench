; ModuleID = '/home/carl/AnghaBench/freebsd/sys/compat/cloudabi/extr_cloudabi_fd.c_cloudabi_sys_fd_seek.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/compat/cloudabi/extr_cloudabi_fd.c_cloudabi_sys_fd_seek.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32 }
%struct.cloudabi_sys_fd_seek_args = type { i32, i32, i32 }

@SEEK_CUR = common dso_local global i32 0, align 4
@SEEK_END = common dso_local global i32 0, align 4
@SEEK_SET = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cloudabi_sys_fd_seek(%struct.thread* %0, %struct.cloudabi_sys_fd_seek_args* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.thread*, align 8
  %5 = alloca %struct.cloudabi_sys_fd_seek_args*, align 8
  %6 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %4, align 8
  store %struct.cloudabi_sys_fd_seek_args* %1, %struct.cloudabi_sys_fd_seek_args** %5, align 8
  %7 = load %struct.cloudabi_sys_fd_seek_args*, %struct.cloudabi_sys_fd_seek_args** %5, align 8
  %8 = getelementptr inbounds %struct.cloudabi_sys_fd_seek_args, %struct.cloudabi_sys_fd_seek_args* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  switch i32 %9, label %16 [
    i32 130, label %10
    i32 129, label %12
    i32 128, label %14
  ]

10:                                               ; preds = %2
  %11 = load i32, i32* @SEEK_CUR, align 4
  store i32 %11, i32* %6, align 4
  br label %18

12:                                               ; preds = %2
  %13 = load i32, i32* @SEEK_END, align 4
  store i32 %13, i32* %6, align 4
  br label %18

14:                                               ; preds = %2
  %15 = load i32, i32* @SEEK_SET, align 4
  store i32 %15, i32* %6, align 4
  br label %18

16:                                               ; preds = %2
  %17 = load i32, i32* @EINVAL, align 4
  store i32 %17, i32* %3, align 4
  br label %28

18:                                               ; preds = %14, %12, %10
  %19 = load %struct.thread*, %struct.thread** %4, align 8
  %20 = load %struct.cloudabi_sys_fd_seek_args*, %struct.cloudabi_sys_fd_seek_args** %5, align 8
  %21 = getelementptr inbounds %struct.cloudabi_sys_fd_seek_args, %struct.cloudabi_sys_fd_seek_args* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.cloudabi_sys_fd_seek_args*, %struct.cloudabi_sys_fd_seek_args** %5, align 8
  %24 = getelementptr inbounds %struct.cloudabi_sys_fd_seek_args, %struct.cloudabi_sys_fd_seek_args* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* %6, align 4
  %27 = call i32 @kern_lseek(%struct.thread* %19, i32 %22, i32 %25, i32 %26)
  store i32 %27, i32* %3, align 4
  br label %28

28:                                               ; preds = %18, %16
  %29 = load i32, i32* %3, align 4
  ret i32 %29
}

declare dso_local i32 @kern_lseek(%struct.thread*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
