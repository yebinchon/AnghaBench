; ModuleID = '/home/carl/AnghaBench/freebsd/sys/amd64/amd64/extr_vm_machdep.c_cpu_set_syscall_retval.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/amd64/amd64/extr_vm_machdep.c_cpu_set_syscall_retval.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32, i32, i32*, %struct.trapframe* }
%struct.trapframe = type { i32, i32, i32, i32, i32, i32, i32 }

@PSL_C = common dso_local global i32 0, align 4
@PCB_FULL_IRET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cpu_set_syscall_retval(%struct.thread* %0, i32 %1) #0 {
  %3 = alloca %struct.thread*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.trapframe*, align 8
  store %struct.thread* %0, %struct.thread** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.thread*, %struct.thread** %3, align 8
  %7 = getelementptr inbounds %struct.thread, %struct.thread* %6, i32 0, i32 3
  %8 = load %struct.trapframe*, %struct.trapframe** %7, align 8
  store %struct.trapframe* %8, %struct.trapframe** %5, align 8
  %9 = load i32, i32* %4, align 4
  %10 = icmp eq i32 %9, 0
  %11 = zext i1 %10 to i32
  %12 = call i64 @__predict_true(i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %35

14:                                               ; preds = %2
  %15 = load %struct.thread*, %struct.thread** %3, align 8
  %16 = getelementptr inbounds %struct.thread, %struct.thread* %15, i32 0, i32 2
  %17 = load i32*, i32** %16, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 0
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.trapframe*, %struct.trapframe** %5, align 8
  %21 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %20, i32 0, i32 1
  store i32 %19, i32* %21, align 4
  %22 = load %struct.thread*, %struct.thread** %3, align 8
  %23 = getelementptr inbounds %struct.thread, %struct.thread* %22, i32 0, i32 2
  %24 = load i32*, i32** %23, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 1
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.trapframe*, %struct.trapframe** %5, align 8
  %28 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %27, i32 0, i32 6
  store i32 %26, i32* %28, align 4
  %29 = load i32, i32* @PSL_C, align 4
  %30 = xor i32 %29, -1
  %31 = load %struct.trapframe*, %struct.trapframe** %5, align 8
  %32 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = and i32 %33, %30
  store i32 %34, i32* %32, align 4
  br label %69

35:                                               ; preds = %2
  %36 = load i32, i32* %4, align 4
  switch i32 %36, label %56 [
    i32 128, label %37
    i32 129, label %55
  ]

37:                                               ; preds = %35
  %38 = load %struct.trapframe*, %struct.trapframe** %5, align 8
  %39 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %38, i32 0, i32 4
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.trapframe*, %struct.trapframe** %5, align 8
  %42 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %41, i32 0, i32 5
  %43 = load i32, i32* %42, align 4
  %44 = sub nsw i32 %43, %40
  store i32 %44, i32* %42, align 4
  %45 = load %struct.trapframe*, %struct.trapframe** %5, align 8
  %46 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.trapframe*, %struct.trapframe** %5, align 8
  %49 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %48, i32 0, i32 3
  store i32 %47, i32* %49, align 4
  %50 = load %struct.thread*, %struct.thread** %3, align 8
  %51 = getelementptr inbounds %struct.thread, %struct.thread* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @PCB_FULL_IRET, align 4
  %54 = call i32 @set_pcb_flags(i32 %52, i32 %53)
  br label %69

55:                                               ; preds = %35
  br label %69

56:                                               ; preds = %35
  %57 = load %struct.thread*, %struct.thread** %3, align 8
  %58 = getelementptr inbounds %struct.thread, %struct.thread* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* %4, align 4
  %61 = call i32 @SV_ABI_ERRNO(i32 %59, i32 %60)
  %62 = load %struct.trapframe*, %struct.trapframe** %5, align 8
  %63 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %62, i32 0, i32 1
  store i32 %61, i32* %63, align 4
  %64 = load i32, i32* @PSL_C, align 4
  %65 = load %struct.trapframe*, %struct.trapframe** %5, align 8
  %66 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = or i32 %67, %64
  store i32 %68, i32* %66, align 4
  br label %69

69:                                               ; preds = %14, %56, %55, %37
  ret void
}

declare dso_local i64 @__predict_true(i32) #1

declare dso_local i32 @set_pcb_flags(i32, i32) #1

declare dso_local i32 @SV_ABI_ERRNO(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
