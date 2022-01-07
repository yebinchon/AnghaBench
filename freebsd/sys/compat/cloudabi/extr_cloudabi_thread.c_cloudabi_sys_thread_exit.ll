; ModuleID = '/home/carl/AnghaBench/freebsd/sys/compat/cloudabi/extr_cloudabi_thread.c_cloudabi_sys_thread_exit.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/compat/cloudabi/extr_cloudabi_thread.c_cloudabi_sys_thread_exit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32 }
%struct.cloudabi_sys_thread_exit_args = type { i32, i32 }
%struct.cloudabi_sys_lock_unlock_args = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cloudabi_sys_thread_exit(%struct.thread* %0, %struct.cloudabi_sys_thread_exit_args* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.thread*, align 8
  %5 = alloca %struct.cloudabi_sys_thread_exit_args*, align 8
  %6 = alloca %struct.cloudabi_sys_lock_unlock_args, align 4
  store %struct.thread* %0, %struct.thread** %4, align 8
  store %struct.cloudabi_sys_thread_exit_args* %1, %struct.cloudabi_sys_thread_exit_args** %5, align 8
  %7 = getelementptr inbounds %struct.cloudabi_sys_lock_unlock_args, %struct.cloudabi_sys_lock_unlock_args* %6, i32 0, i32 0
  %8 = load %struct.cloudabi_sys_thread_exit_args*, %struct.cloudabi_sys_thread_exit_args** %5, align 8
  %9 = getelementptr inbounds %struct.cloudabi_sys_thread_exit_args, %struct.cloudabi_sys_thread_exit_args* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  store i32 %10, i32* %7, align 4
  %11 = getelementptr inbounds %struct.cloudabi_sys_lock_unlock_args, %struct.cloudabi_sys_lock_unlock_args* %6, i32 0, i32 1
  %12 = load %struct.cloudabi_sys_thread_exit_args*, %struct.cloudabi_sys_thread_exit_args** %5, align 8
  %13 = getelementptr inbounds %struct.cloudabi_sys_thread_exit_args, %struct.cloudabi_sys_thread_exit_args* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %11, align 4
  %15 = load %struct.thread*, %struct.thread** %4, align 8
  %16 = call i32 @umtx_thread_exit(%struct.thread* %15)
  %17 = load %struct.thread*, %struct.thread** %4, align 8
  %18 = call i32 @cloudabi_sys_lock_unlock(%struct.thread* %17, %struct.cloudabi_sys_lock_unlock_args* %6)
  %19 = load %struct.thread*, %struct.thread** %4, align 8
  %20 = call i32 @kern_thr_exit(%struct.thread* %19)
  %21 = load %struct.thread*, %struct.thread** %4, align 8
  %22 = call i32 @exit1(%struct.thread* %21, i32 0, i32 0)
  %23 = load i32, i32* %3, align 4
  ret i32 %23
}

declare dso_local i32 @umtx_thread_exit(%struct.thread*) #1

declare dso_local i32 @cloudabi_sys_lock_unlock(%struct.thread*, %struct.cloudabi_sys_lock_unlock_args*) #1

declare dso_local i32 @kern_thr_exit(%struct.thread*) #1

declare dso_local i32 @exit1(%struct.thread*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
