; ModuleID = '/home/carl/AnghaBench/freebsd/sys/compat/cloudabi64/extr_cloudabi64_fd.c_cloudabi64_sys_fd_pwrite.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/compat/cloudabi64/extr_cloudabi64_fd.c_cloudabi64_sys_fd_pwrite.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32 }
%struct.cloudabi64_sys_fd_pwrite_args = type { i32, i32, i32, i32 }
%struct.uio = type { i32 }

@M_IOV = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cloudabi64_sys_fd_pwrite(%struct.thread* %0, %struct.cloudabi64_sys_fd_pwrite_args* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.thread*, align 8
  %5 = alloca %struct.cloudabi64_sys_fd_pwrite_args*, align 8
  %6 = alloca %struct.uio*, align 8
  %7 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %4, align 8
  store %struct.cloudabi64_sys_fd_pwrite_args* %1, %struct.cloudabi64_sys_fd_pwrite_args** %5, align 8
  %8 = load %struct.cloudabi64_sys_fd_pwrite_args*, %struct.cloudabi64_sys_fd_pwrite_args** %5, align 8
  %9 = getelementptr inbounds %struct.cloudabi64_sys_fd_pwrite_args, %struct.cloudabi64_sys_fd_pwrite_args* %8, i32 0, i32 3
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @TO_PTR(i32 %10)
  %12 = load %struct.cloudabi64_sys_fd_pwrite_args*, %struct.cloudabi64_sys_fd_pwrite_args** %5, align 8
  %13 = getelementptr inbounds %struct.cloudabi64_sys_fd_pwrite_args, %struct.cloudabi64_sys_fd_pwrite_args* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @cloudabi64_copyinuio(i32 %11, i32 %14, %struct.uio** %6)
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* %7, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %2
  %19 = load i32, i32* %7, align 4
  store i32 %19, i32* %3, align 4
  br label %34

20:                                               ; preds = %2
  %21 = load %struct.thread*, %struct.thread** %4, align 8
  %22 = load %struct.cloudabi64_sys_fd_pwrite_args*, %struct.cloudabi64_sys_fd_pwrite_args** %5, align 8
  %23 = getelementptr inbounds %struct.cloudabi64_sys_fd_pwrite_args, %struct.cloudabi64_sys_fd_pwrite_args* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.uio*, %struct.uio** %6, align 8
  %26 = load %struct.cloudabi64_sys_fd_pwrite_args*, %struct.cloudabi64_sys_fd_pwrite_args** %5, align 8
  %27 = getelementptr inbounds %struct.cloudabi64_sys_fd_pwrite_args, %struct.cloudabi64_sys_fd_pwrite_args* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @kern_pwritev(%struct.thread* %21, i32 %24, %struct.uio* %25, i32 %28)
  store i32 %29, i32* %7, align 4
  %30 = load %struct.uio*, %struct.uio** %6, align 8
  %31 = load i32, i32* @M_IOV, align 4
  %32 = call i32 @free(%struct.uio* %30, i32 %31)
  %33 = load i32, i32* %7, align 4
  store i32 %33, i32* %3, align 4
  br label %34

34:                                               ; preds = %20, %18
  %35 = load i32, i32* %3, align 4
  ret i32 %35
}

declare dso_local i32 @cloudabi64_copyinuio(i32, i32, %struct.uio**) #1

declare dso_local i32 @TO_PTR(i32) #1

declare dso_local i32 @kern_pwritev(%struct.thread*, i32, %struct.uio*, i32) #1

declare dso_local i32 @free(%struct.uio*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
