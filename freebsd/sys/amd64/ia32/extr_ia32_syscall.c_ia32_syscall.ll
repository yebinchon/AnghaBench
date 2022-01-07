; ModuleID = '/home/carl/AnghaBench/freebsd/sys/amd64/ia32/extr_ia32_syscall.c_ia32_syscall.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/amd64/ia32/extr_ia32_syscall.c_ia32_syscall.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32, %struct.trapframe* }
%struct.trapframe = type { i32, i64 }
%struct.TYPE_4__ = type { i8*, i32, i32 }

@curthread = common dso_local global %struct.thread* null, align 8
@PSL_T = common dso_local global i32 0, align 4
@SIGTRAP = common dso_local global i32 0, align 4
@TRAP_TRACE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ia32_syscall(%struct.trapframe* %0) #0 {
  %2 = alloca %struct.trapframe*, align 8
  %3 = alloca %struct.thread*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_4__, align 8
  store %struct.trapframe* %0, %struct.trapframe** %2, align 8
  %6 = load %struct.trapframe*, %struct.trapframe** %2, align 8
  %7 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  store i32 %8, i32* %4, align 4
  %9 = load %struct.thread*, %struct.thread** @curthread, align 8
  store %struct.thread* %9, %struct.thread** %3, align 8
  %10 = load %struct.trapframe*, %struct.trapframe** %2, align 8
  %11 = load %struct.thread*, %struct.thread** %3, align 8
  %12 = getelementptr inbounds %struct.thread, %struct.thread* %11, i32 0, i32 1
  store %struct.trapframe* %10, %struct.trapframe** %12, align 8
  %13 = load %struct.thread*, %struct.thread** %3, align 8
  %14 = call i32 @syscallenter(%struct.thread* %13)
  %15 = load i32, i32* %4, align 4
  %16 = load i32, i32* @PSL_T, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %38

19:                                               ; preds = %1
  %20 = load i32, i32* @PSL_T, align 4
  %21 = xor i32 %20, -1
  %22 = load %struct.trapframe*, %struct.trapframe** %2, align 8
  %23 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = and i32 %24, %21
  store i32 %25, i32* %23, align 8
  %26 = call i32 @ksiginfo_init_trap(%struct.TYPE_4__* %5)
  %27 = load i32, i32* @SIGTRAP, align 4
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 2
  store i32 %27, i32* %28, align 4
  %29 = load i32, i32* @TRAP_TRACE, align 4
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 1
  store i32 %29, i32* %30, align 8
  %31 = load %struct.trapframe*, %struct.trapframe** %2, align 8
  %32 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = inttoptr i64 %33 to i8*
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 0
  store i8* %34, i8** %35, align 8
  %36 = load %struct.thread*, %struct.thread** %3, align 8
  %37 = call i32 @trapsignal(%struct.thread* %36, %struct.TYPE_4__* %5)
  br label %38

38:                                               ; preds = %19, %1
  %39 = load %struct.thread*, %struct.thread** %3, align 8
  %40 = call i32 @syscallret(%struct.thread* %39)
  %41 = load %struct.thread*, %struct.thread** %3, align 8
  %42 = getelementptr inbounds %struct.thread, %struct.thread* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @amd64_syscall_ret_flush_l1d(i32 %43)
  ret void
}

declare dso_local i32 @syscallenter(%struct.thread*) #1

declare dso_local i32 @ksiginfo_init_trap(%struct.TYPE_4__*) #1

declare dso_local i32 @trapsignal(%struct.thread*, %struct.TYPE_4__*) #1

declare dso_local i32 @syscallret(%struct.thread*) #1

declare dso_local i32 @amd64_syscall_ret_flush_l1d(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
