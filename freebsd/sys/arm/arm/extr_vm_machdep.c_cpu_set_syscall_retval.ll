; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/arm/extr_vm_machdep.c_cpu_set_syscall_retval.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/arm/extr_vm_machdep.c_cpu_set_syscall_retval.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i64*, i32, %struct.trapframe* }
%struct.trapframe = type { i64, i64, i64, i32, i32 }

@PSR_C = common dso_local global i32 0, align 4
@INSN_SIZE = common dso_local global i32 0, align 4
@PSR_T = common dso_local global i32 0, align 4
@SYS___syscall = common dso_local global i64 0, align 8
@SYS_lseek = common dso_local global i64 0, align 8
@THUMB_INSN_SIZE = common dso_local global i32 0, align 4
@_QUAD_LOWWORD = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cpu_set_syscall_retval(%struct.thread* %0, i32 %1) #0 {
  %3 = alloca %struct.thread*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.trapframe*, align 8
  %6 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.thread*, %struct.thread** %3, align 8
  %8 = getelementptr inbounds %struct.thread, %struct.thread* %7, i32 0, i32 2
  %9 = load %struct.trapframe*, %struct.trapframe** %8, align 8
  store %struct.trapframe* %9, %struct.trapframe** %5, align 8
  store i32 0, i32* %6, align 4
  %10 = load i32, i32* %4, align 4
  switch i32 %10, label %53 [
    i32 0, label %11
    i32 128, label %46
    i32 129, label %52
  ]

11:                                               ; preds = %2
  %12 = load i32, i32* %6, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %24

14:                                               ; preds = %11
  %15 = load %struct.trapframe*, %struct.trapframe** %5, align 8
  %16 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %15, i32 0, i32 1
  store i64 0, i64* %16, align 8
  %17 = load %struct.thread*, %struct.thread** %3, align 8
  %18 = getelementptr inbounds %struct.thread, %struct.thread* %17, i32 0, i32 0
  %19 = load i64*, i64** %18, align 8
  %20 = getelementptr inbounds i64, i64* %19, i64 0
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.trapframe*, %struct.trapframe** %5, align 8
  %23 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %22, i32 0, i32 2
  store i64 %21, i64* %23, align 8
  br label %39

24:                                               ; preds = %11
  %25 = load %struct.thread*, %struct.thread** %3, align 8
  %26 = getelementptr inbounds %struct.thread, %struct.thread* %25, i32 0, i32 0
  %27 = load i64*, i64** %26, align 8
  %28 = getelementptr inbounds i64, i64* %27, i64 0
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.trapframe*, %struct.trapframe** %5, align 8
  %31 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %30, i32 0, i32 1
  store i64 %29, i64* %31, align 8
  %32 = load %struct.thread*, %struct.thread** %3, align 8
  %33 = getelementptr inbounds %struct.thread, %struct.thread* %32, i32 0, i32 0
  %34 = load i64*, i64** %33, align 8
  %35 = getelementptr inbounds i64, i64* %34, i64 1
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.trapframe*, %struct.trapframe** %5, align 8
  %38 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %37, i32 0, i32 2
  store i64 %36, i64* %38, align 8
  br label %39

39:                                               ; preds = %24, %14
  %40 = load i32, i32* @PSR_C, align 4
  %41 = xor i32 %40, -1
  %42 = load %struct.trapframe*, %struct.trapframe** %5, align 8
  %43 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 8
  %45 = and i32 %44, %41
  store i32 %45, i32* %43, align 8
  br label %66

46:                                               ; preds = %2
  %47 = load i32, i32* @INSN_SIZE, align 4
  %48 = load %struct.trapframe*, %struct.trapframe** %5, align 8
  %49 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %48, i32 0, i32 4
  %50 = load i32, i32* %49, align 4
  %51 = sub nsw i32 %50, %47
  store i32 %51, i32* %49, align 4
  br label %66

52:                                               ; preds = %2
  br label %66

53:                                               ; preds = %2
  %54 = load %struct.thread*, %struct.thread** %3, align 8
  %55 = getelementptr inbounds %struct.thread, %struct.thread* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* %4, align 4
  %58 = call i64 @SV_ABI_ERRNO(i32 %56, i32 %57)
  %59 = load %struct.trapframe*, %struct.trapframe** %5, align 8
  %60 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %59, i32 0, i32 1
  store i64 %58, i64* %60, align 8
  %61 = load i32, i32* @PSR_C, align 4
  %62 = load %struct.trapframe*, %struct.trapframe** %5, align 8
  %63 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %62, i32 0, i32 3
  %64 = load i32, i32* %63, align 8
  %65 = or i32 %64, %61
  store i32 %65, i32* %63, align 8
  br label %66

66:                                               ; preds = %53, %52, %46, %39
  ret void
}

declare dso_local i64 @SV_ABI_ERRNO(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
