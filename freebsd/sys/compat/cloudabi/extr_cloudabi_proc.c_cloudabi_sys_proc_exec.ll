; ModuleID = '/home/carl/AnghaBench/freebsd/sys/compat/cloudabi/extr_cloudabi_proc.c_cloudabi_sys_proc_exec.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/compat/cloudabi/extr_cloudabi_proc.c_cloudabi_sys_proc_exec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32 }
%struct.cloudabi_sys_proc_exec_args = type { i32, i32, i32, i32, i32 }
%struct.image_args = type { i32 }
%struct.vmspace = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cloudabi_sys_proc_exec(%struct.thread* %0, %struct.cloudabi_sys_proc_exec_args* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.thread*, align 8
  %5 = alloca %struct.cloudabi_sys_proc_exec_args*, align 8
  %6 = alloca %struct.image_args, align 4
  %7 = alloca %struct.vmspace*, align 8
  %8 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %4, align 8
  store %struct.cloudabi_sys_proc_exec_args* %1, %struct.cloudabi_sys_proc_exec_args** %5, align 8
  %9 = load %struct.thread*, %struct.thread** %4, align 8
  %10 = call i32 @pre_execve(%struct.thread* %9, %struct.vmspace** %7)
  store i32 %10, i32* %8, align 4
  %11 = load i32, i32* %8, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %2
  %14 = load i32, i32* %8, align 4
  store i32 %14, i32* %3, align 4
  br label %45

15:                                               ; preds = %2
  %16 = load %struct.thread*, %struct.thread** %4, align 8
  %17 = load %struct.cloudabi_sys_proc_exec_args*, %struct.cloudabi_sys_proc_exec_args** %5, align 8
  %18 = getelementptr inbounds %struct.cloudabi_sys_proc_exec_args, %struct.cloudabi_sys_proc_exec_args* %17, i32 0, i32 4
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.cloudabi_sys_proc_exec_args*, %struct.cloudabi_sys_proc_exec_args** %5, align 8
  %21 = getelementptr inbounds %struct.cloudabi_sys_proc_exec_args, %struct.cloudabi_sys_proc_exec_args* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.cloudabi_sys_proc_exec_args*, %struct.cloudabi_sys_proc_exec_args** %5, align 8
  %24 = getelementptr inbounds %struct.cloudabi_sys_proc_exec_args, %struct.cloudabi_sys_proc_exec_args* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.cloudabi_sys_proc_exec_args*, %struct.cloudabi_sys_proc_exec_args** %5, align 8
  %27 = getelementptr inbounds %struct.cloudabi_sys_proc_exec_args, %struct.cloudabi_sys_proc_exec_args* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @exec_copyin_data_fds(%struct.thread* %16, %struct.image_args* %6, i32 %19, i32 %22, i32 %25, i32 %28)
  store i32 %29, i32* %8, align 4
  %30 = load i32, i32* %8, align 4
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %39

32:                                               ; preds = %15
  %33 = load %struct.cloudabi_sys_proc_exec_args*, %struct.cloudabi_sys_proc_exec_args** %5, align 8
  %34 = getelementptr inbounds %struct.cloudabi_sys_proc_exec_args, %struct.cloudabi_sys_proc_exec_args* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = getelementptr inbounds %struct.image_args, %struct.image_args* %6, i32 0, i32 0
  store i32 %35, i32* %36, align 4
  %37 = load %struct.thread*, %struct.thread** %4, align 8
  %38 = call i32 @kern_execve(%struct.thread* %37, %struct.image_args* %6, i32* null)
  store i32 %38, i32* %8, align 4
  br label %39

39:                                               ; preds = %32, %15
  %40 = load %struct.thread*, %struct.thread** %4, align 8
  %41 = load i32, i32* %8, align 4
  %42 = load %struct.vmspace*, %struct.vmspace** %7, align 8
  %43 = call i32 @post_execve(%struct.thread* %40, i32 %41, %struct.vmspace* %42)
  %44 = load i32, i32* %8, align 4
  store i32 %44, i32* %3, align 4
  br label %45

45:                                               ; preds = %39, %13
  %46 = load i32, i32* %3, align 4
  ret i32 %46
}

declare dso_local i32 @pre_execve(%struct.thread*, %struct.vmspace**) #1

declare dso_local i32 @exec_copyin_data_fds(%struct.thread*, %struct.image_args*, i32, i32, i32, i32) #1

declare dso_local i32 @kern_execve(%struct.thread*, %struct.image_args*, i32*) #1

declare dso_local i32 @post_execve(%struct.thread*, i32, %struct.vmspace*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
