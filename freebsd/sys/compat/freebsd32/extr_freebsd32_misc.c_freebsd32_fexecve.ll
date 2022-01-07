; ModuleID = '/home/carl/AnghaBench/freebsd/sys/compat/freebsd32/extr_freebsd32_misc.c_freebsd32_fexecve.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/compat/freebsd32/extr_freebsd32_misc.c_freebsd32_fexecve.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32 }
%struct.freebsd32_fexecve_args = type { i32, i32, i32 }
%struct.image_args = type { i32 }
%struct.vmspace = type { i32 }

@UIO_SYSSPACE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @freebsd32_fexecve(%struct.thread* %0, %struct.freebsd32_fexecve_args* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.thread*, align 8
  %5 = alloca %struct.freebsd32_fexecve_args*, align 8
  %6 = alloca %struct.image_args, align 4
  %7 = alloca %struct.vmspace*, align 8
  %8 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %4, align 8
  store %struct.freebsd32_fexecve_args* %1, %struct.freebsd32_fexecve_args** %5, align 8
  %9 = load %struct.thread*, %struct.thread** %4, align 8
  %10 = call i32 @pre_execve(%struct.thread* %9, %struct.vmspace** %7)
  store i32 %10, i32* %8, align 4
  %11 = load i32, i32* %8, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %2
  %14 = load i32, i32* %8, align 4
  store i32 %14, i32* %3, align 4
  br label %39

15:                                               ; preds = %2
  %16 = load i32, i32* @UIO_SYSSPACE, align 4
  %17 = load %struct.freebsd32_fexecve_args*, %struct.freebsd32_fexecve_args** %5, align 8
  %18 = getelementptr inbounds %struct.freebsd32_fexecve_args, %struct.freebsd32_fexecve_args* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.freebsd32_fexecve_args*, %struct.freebsd32_fexecve_args** %5, align 8
  %21 = getelementptr inbounds %struct.freebsd32_fexecve_args, %struct.freebsd32_fexecve_args* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @freebsd32_exec_copyin_args(%struct.image_args* %6, i32* null, i32 %16, i32 %19, i32 %22)
  store i32 %23, i32* %8, align 4
  %24 = load i32, i32* %8, align 4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %33

26:                                               ; preds = %15
  %27 = load %struct.freebsd32_fexecve_args*, %struct.freebsd32_fexecve_args** %5, align 8
  %28 = getelementptr inbounds %struct.freebsd32_fexecve_args, %struct.freebsd32_fexecve_args* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = getelementptr inbounds %struct.image_args, %struct.image_args* %6, i32 0, i32 0
  store i32 %29, i32* %30, align 4
  %31 = load %struct.thread*, %struct.thread** %4, align 8
  %32 = call i32 @kern_execve(%struct.thread* %31, %struct.image_args* %6, i32* null)
  store i32 %32, i32* %8, align 4
  br label %33

33:                                               ; preds = %26, %15
  %34 = load %struct.thread*, %struct.thread** %4, align 8
  %35 = load i32, i32* %8, align 4
  %36 = load %struct.vmspace*, %struct.vmspace** %7, align 8
  %37 = call i32 @post_execve(%struct.thread* %34, i32 %35, %struct.vmspace* %36)
  %38 = load i32, i32* %8, align 4
  store i32 %38, i32* %3, align 4
  br label %39

39:                                               ; preds = %33, %13
  %40 = load i32, i32* %3, align 4
  ret i32 %40
}

declare dso_local i32 @pre_execve(%struct.thread*, %struct.vmspace**) #1

declare dso_local i32 @freebsd32_exec_copyin_args(%struct.image_args*, i32*, i32, i32, i32) #1

declare dso_local i32 @kern_execve(%struct.thread*, %struct.image_args*, i32*) #1

declare dso_local i32 @post_execve(%struct.thread*, i32, %struct.vmspace*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
