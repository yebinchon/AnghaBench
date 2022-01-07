; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm64/cloudabi32/extr_cloudabi32_sysvec.c_cloudabi32_set_syscall_retval.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm64/cloudabi32/extr_cloudabi32_sysvec.c_cloudabi32_set_syscall_retval.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32, %struct.trapframe* }
%struct.trapframe = type { i32, i32, i64* }

@PSR_C = common dso_local global i32 0, align 4
@CLOUDABI_EFAULT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.thread*, i32)* @cloudabi32_set_syscall_retval to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cloudabi32_set_syscall_retval(%struct.thread* %0, i32 %1) #0 {
  %3 = alloca %struct.thread*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.trapframe*, align 8
  store %struct.thread* %0, %struct.thread** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.thread*, %struct.thread** %3, align 8
  %7 = getelementptr inbounds %struct.thread, %struct.thread* %6, i32 0, i32 1
  %8 = load %struct.trapframe*, %struct.trapframe** %7, align 8
  store %struct.trapframe* %8, %struct.trapframe** %5, align 8
  %9 = load i32, i32* %4, align 4
  switch i32 %9, label %51 [
    i32 0, label %10
    i32 128, label %45
    i32 129, label %50
  ]

10:                                               ; preds = %2
  %11 = load %struct.thread*, %struct.thread** %3, align 8
  %12 = getelementptr inbounds %struct.thread, %struct.thread* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load %struct.trapframe*, %struct.trapframe** %5, align 8
  %15 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %14, i32 0, i32 2
  %16 = load i64*, i64** %15, align 8
  %17 = getelementptr inbounds i64, i64* %16, i64 2
  %18 = load i64, i64* %17, align 8
  %19 = inttoptr i64 %18 to i8*
  %20 = call i32 @copyout(i32 %13, i8* %19, i32 4)
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %33

22:                                               ; preds = %10
  %23 = load %struct.trapframe*, %struct.trapframe** %5, align 8
  %24 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %23, i32 0, i32 2
  %25 = load i64*, i64** %24, align 8
  %26 = getelementptr inbounds i64, i64* %25, i64 0
  store i64 0, i64* %26, align 8
  %27 = load i32, i32* @PSR_C, align 4
  %28 = xor i32 %27, -1
  %29 = load %struct.trapframe*, %struct.trapframe** %5, align 8
  %30 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = and i32 %31, %28
  store i32 %32, i32* %30, align 4
  br label %44

33:                                               ; preds = %10
  %34 = load i64, i64* @CLOUDABI_EFAULT, align 8
  %35 = load %struct.trapframe*, %struct.trapframe** %5, align 8
  %36 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %35, i32 0, i32 2
  %37 = load i64*, i64** %36, align 8
  %38 = getelementptr inbounds i64, i64* %37, i64 0
  store i64 %34, i64* %38, align 8
  %39 = load i32, i32* @PSR_C, align 4
  %40 = load %struct.trapframe*, %struct.trapframe** %5, align 8
  %41 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = or i32 %42, %39
  store i32 %43, i32* %41, align 4
  br label %44

44:                                               ; preds = %33, %22
  br label %63

45:                                               ; preds = %2
  %46 = load %struct.trapframe*, %struct.trapframe** %5, align 8
  %47 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = sub nsw i32 %48, 4
  store i32 %49, i32* %47, align 8
  br label %63

50:                                               ; preds = %2
  br label %63

51:                                               ; preds = %2
  %52 = load i32, i32* %4, align 4
  %53 = call i64 @cloudabi_convert_errno(i32 %52)
  %54 = load %struct.trapframe*, %struct.trapframe** %5, align 8
  %55 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %54, i32 0, i32 2
  %56 = load i64*, i64** %55, align 8
  %57 = getelementptr inbounds i64, i64* %56, i64 0
  store i64 %53, i64* %57, align 8
  %58 = load i32, i32* @PSR_C, align 4
  %59 = load %struct.trapframe*, %struct.trapframe** %5, align 8
  %60 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = or i32 %61, %58
  store i32 %62, i32* %60, align 4
  br label %63

63:                                               ; preds = %51, %50, %45, %44
  ret void
}

declare dso_local i32 @copyout(i32, i8*, i32) #1

declare dso_local i64 @cloudabi_convert_errno(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
