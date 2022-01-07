; ModuleID = '/home/carl/AnghaBench/freebsd/sys/compat/freebsd32/extr_freebsd32_misc.c_freebsd32_execve.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/compat/freebsd32/extr_freebsd32_misc.c_freebsd32_execve.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32 }
%struct.freebsd32_execve_args = type { i32, i32, i32 }
%struct.image_args = type { i32 }
%struct.vmspace = type { i32 }

@UIO_USERSPACE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @freebsd32_execve(%struct.thread* %0, %struct.freebsd32_execve_args* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.thread*, align 8
  %5 = alloca %struct.freebsd32_execve_args*, align 8
  %6 = alloca %struct.image_args, align 4
  %7 = alloca %struct.vmspace*, align 8
  %8 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %4, align 8
  store %struct.freebsd32_execve_args* %1, %struct.freebsd32_execve_args** %5, align 8
  %9 = load %struct.thread*, %struct.thread** %4, align 8
  %10 = call i32 @pre_execve(%struct.thread* %9, %struct.vmspace** %7)
  store i32 %10, i32* %8, align 4
  %11 = load i32, i32* %8, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %2
  %14 = load i32, i32* %8, align 4
  store i32 %14, i32* %3, align 4
  br label %38

15:                                               ; preds = %2
  %16 = load %struct.freebsd32_execve_args*, %struct.freebsd32_execve_args** %5, align 8
  %17 = getelementptr inbounds %struct.freebsd32_execve_args, %struct.freebsd32_execve_args* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @UIO_USERSPACE, align 4
  %20 = load %struct.freebsd32_execve_args*, %struct.freebsd32_execve_args** %5, align 8
  %21 = getelementptr inbounds %struct.freebsd32_execve_args, %struct.freebsd32_execve_args* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.freebsd32_execve_args*, %struct.freebsd32_execve_args** %5, align 8
  %24 = getelementptr inbounds %struct.freebsd32_execve_args, %struct.freebsd32_execve_args* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @freebsd32_exec_copyin_args(%struct.image_args* %6, i32 %18, i32 %19, i32 %22, i32 %25)
  store i32 %26, i32* %8, align 4
  %27 = load i32, i32* %8, align 4
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %15
  %30 = load %struct.thread*, %struct.thread** %4, align 8
  %31 = call i32 @kern_execve(%struct.thread* %30, %struct.image_args* %6, i32* null)
  store i32 %31, i32* %8, align 4
  br label %32

32:                                               ; preds = %29, %15
  %33 = load %struct.thread*, %struct.thread** %4, align 8
  %34 = load i32, i32* %8, align 4
  %35 = load %struct.vmspace*, %struct.vmspace** %7, align 8
  %36 = call i32 @post_execve(%struct.thread* %33, i32 %34, %struct.vmspace* %35)
  %37 = load i32, i32* %8, align 4
  store i32 %37, i32* %3, align 4
  br label %38

38:                                               ; preds = %32, %13
  %39 = load i32, i32* %3, align 4
  ret i32 %39
}

declare dso_local i32 @pre_execve(%struct.thread*, %struct.vmspace**) #1

declare dso_local i32 @freebsd32_exec_copyin_args(%struct.image_args*, i32, i32, i32, i32) #1

declare dso_local i32 @kern_execve(%struct.thread*, %struct.image_args*, i32*) #1

declare dso_local i32 @post_execve(%struct.thread*, i32, %struct.vmspace*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
