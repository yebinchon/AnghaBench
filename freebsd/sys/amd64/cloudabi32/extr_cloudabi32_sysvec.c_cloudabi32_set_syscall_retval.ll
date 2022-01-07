; ModuleID = '/home/carl/AnghaBench/freebsd/sys/amd64/cloudabi32/extr_cloudabi32_sysvec.c_cloudabi32_set_syscall_retval.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/amd64/cloudabi32/extr_cloudabi32_sysvec.c_cloudabi32_set_syscall_retval.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32, i32, %struct.trapframe* }
%struct.trapframe = type { i32, i64, i64, i32, i32 }

@CLOUDABI_EFAULT = common dso_local global i32 0, align 4
@PCB_FULL_IRET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.thread*, i32)* @cloudabi32_set_syscall_retval to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cloudabi32_set_syscall_retval(%struct.thread* %0, i32 %1) #0 {
  %3 = alloca %struct.thread*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.trapframe*, align 8
  store %struct.thread* %0, %struct.thread** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.thread*, %struct.thread** %3, align 8
  %7 = getelementptr inbounds %struct.thread, %struct.thread* %6, i32 0, i32 2
  %8 = load %struct.trapframe*, %struct.trapframe** %7, align 8
  store %struct.trapframe* %8, %struct.trapframe** %5, align 8
  %9 = load i32, i32* %4, align 4
  switch i32 %9, label %46 [
    i32 0, label %10
    i32 128, label %27
    i32 129, label %45
  ]

10:                                               ; preds = %2
  %11 = load %struct.thread*, %struct.thread** %3, align 8
  %12 = getelementptr inbounds %struct.thread, %struct.thread* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.trapframe*, %struct.trapframe** %5, align 8
  %15 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = inttoptr i64 %16 to i8*
  %18 = call i32 @copyout(i32 %13, i8* %17, i32 4)
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %10
  br label %23

21:                                               ; preds = %10
  %22 = load i32, i32* @CLOUDABI_EFAULT, align 4
  br label %23

23:                                               ; preds = %21, %20
  %24 = phi i32 [ 0, %20 ], [ %22, %21 ]
  %25 = load %struct.trapframe*, %struct.trapframe** %5, align 8
  %26 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 8
  br label %51

27:                                               ; preds = %2
  %28 = load %struct.trapframe*, %struct.trapframe** %5, align 8
  %29 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.trapframe*, %struct.trapframe** %5, align 8
  %32 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %31, i32 0, i32 4
  %33 = load i32, i32* %32, align 4
  %34 = sub nsw i32 %33, %30
  store i32 %34, i32* %32, align 4
  %35 = load %struct.trapframe*, %struct.trapframe** %5, align 8
  %36 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.trapframe*, %struct.trapframe** %5, align 8
  %39 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %38, i32 0, i32 2
  store i64 %37, i64* %39, align 8
  %40 = load %struct.thread*, %struct.thread** %3, align 8
  %41 = getelementptr inbounds %struct.thread, %struct.thread* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* @PCB_FULL_IRET, align 4
  %44 = call i32 @set_pcb_flags(i32 %42, i32 %43)
  br label %51

45:                                               ; preds = %2
  br label %51

46:                                               ; preds = %2
  %47 = load i32, i32* %4, align 4
  %48 = call i32 @cloudabi_convert_errno(i32 %47)
  %49 = load %struct.trapframe*, %struct.trapframe** %5, align 8
  %50 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %49, i32 0, i32 0
  store i32 %48, i32* %50, align 8
  br label %51

51:                                               ; preds = %46, %45, %27, %23
  ret void
}

declare dso_local i32 @copyout(i32, i8*, i32) #1

declare dso_local i32 @set_pcb_flags(i32, i32) #1

declare dso_local i32 @cloudabi_convert_errno(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
