; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm64/cloudabi64/extr_cloudabi64_sysvec.c_cloudabi64_fetch_syscall_args.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm64/cloudabi64/extr_cloudabi64_sysvec.c_cloudabi64_fetch_syscall_args.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.thread = type { i64*, %struct.syscall_args, %struct.trapframe* }
%struct.syscall_args = type { i64, i64*, %struct.TYPE_2__*, i32 }
%struct.trapframe = type { i64* }

@CLOUDABI64_SYS_MAXSYSCALL = common dso_local global i64 0, align 8
@ENOSYS = common dso_local global i32 0, align 4
@cloudabi64_sysent = common dso_local global %struct.TYPE_2__* null, align 8
@MAXARGS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.thread*)* @cloudabi64_fetch_syscall_args to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cloudabi64_fetch_syscall_args(%struct.thread* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.thread*, align 8
  %4 = alloca %struct.trapframe*, align 8
  %5 = alloca %struct.syscall_args*, align 8
  %6 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %3, align 8
  %7 = load %struct.thread*, %struct.thread** %3, align 8
  %8 = getelementptr inbounds %struct.thread, %struct.thread* %7, i32 0, i32 2
  %9 = load %struct.trapframe*, %struct.trapframe** %8, align 8
  store %struct.trapframe* %9, %struct.trapframe** %4, align 8
  %10 = load %struct.thread*, %struct.thread** %3, align 8
  %11 = getelementptr inbounds %struct.thread, %struct.thread* %10, i32 0, i32 1
  store %struct.syscall_args* %11, %struct.syscall_args** %5, align 8
  %12 = load %struct.trapframe*, %struct.trapframe** %4, align 8
  %13 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %12, i32 0, i32 0
  %14 = load i64*, i64** %13, align 8
  %15 = getelementptr inbounds i64, i64* %14, i64 8
  %16 = load i64, i64* %15, align 8
  %17 = load %struct.syscall_args*, %struct.syscall_args** %5, align 8
  %18 = getelementptr inbounds %struct.syscall_args, %struct.syscall_args* %17, i32 0, i32 0
  store i64 %16, i64* %18, align 8
  %19 = load %struct.syscall_args*, %struct.syscall_args** %5, align 8
  %20 = getelementptr inbounds %struct.syscall_args, %struct.syscall_args* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @CLOUDABI64_SYS_MAXSYSCALL, align 8
  %23 = icmp uge i64 %21, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %1
  %25 = load i32, i32* @ENOSYS, align 4
  store i32 %25, i32* %2, align 4
  br label %76

26:                                               ; preds = %1
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cloudabi64_sysent, align 8
  %28 = load %struct.syscall_args*, %struct.syscall_args** %5, align 8
  %29 = getelementptr inbounds %struct.syscall_args, %struct.syscall_args* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i64 %30
  %32 = load %struct.syscall_args*, %struct.syscall_args** %5, align 8
  %33 = getelementptr inbounds %struct.syscall_args, %struct.syscall_args* %32, i32 0, i32 2
  store %struct.TYPE_2__* %31, %struct.TYPE_2__** %33, align 8
  %34 = load %struct.syscall_args*, %struct.syscall_args** %5, align 8
  %35 = getelementptr inbounds %struct.syscall_args, %struct.syscall_args* %34, i32 0, i32 2
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.syscall_args*, %struct.syscall_args** %5, align 8
  %40 = getelementptr inbounds %struct.syscall_args, %struct.syscall_args* %39, i32 0, i32 3
  store i32 %38, i32* %40, align 8
  store i32 0, i32* %6, align 4
  br label %41

41:                                               ; preds = %59, %26
  %42 = load i32, i32* %6, align 4
  %43 = load i32, i32* @MAXARGS, align 4
  %44 = icmp slt i32 %42, %43
  br i1 %44, label %45, label %62

45:                                               ; preds = %41
  %46 = load %struct.trapframe*, %struct.trapframe** %4, align 8
  %47 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %46, i32 0, i32 0
  %48 = load i64*, i64** %47, align 8
  %49 = load i32, i32* %6, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i64, i64* %48, i64 %50
  %52 = load i64, i64* %51, align 8
  %53 = load %struct.syscall_args*, %struct.syscall_args** %5, align 8
  %54 = getelementptr inbounds %struct.syscall_args, %struct.syscall_args* %53, i32 0, i32 1
  %55 = load i64*, i64** %54, align 8
  %56 = load i32, i32* %6, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i64, i64* %55, i64 %57
  store i64 %52, i64* %58, align 8
  br label %59

59:                                               ; preds = %45
  %60 = load i32, i32* %6, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %6, align 4
  br label %41

62:                                               ; preds = %41
  %63 = load %struct.thread*, %struct.thread** %3, align 8
  %64 = getelementptr inbounds %struct.thread, %struct.thread* %63, i32 0, i32 0
  %65 = load i64*, i64** %64, align 8
  %66 = getelementptr inbounds i64, i64* %65, i64 0
  store i64 0, i64* %66, align 8
  %67 = load %struct.trapframe*, %struct.trapframe** %4, align 8
  %68 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %67, i32 0, i32 0
  %69 = load i64*, i64** %68, align 8
  %70 = getelementptr inbounds i64, i64* %69, i64 1
  %71 = load i64, i64* %70, align 8
  %72 = load %struct.thread*, %struct.thread** %3, align 8
  %73 = getelementptr inbounds %struct.thread, %struct.thread* %72, i32 0, i32 0
  %74 = load i64*, i64** %73, align 8
  %75 = getelementptr inbounds i64, i64* %74, i64 1
  store i64 %71, i64* %75, align 8
  store i32 0, i32* %2, align 4
  br label %76

76:                                               ; preds = %62, %24
  %77 = load i32, i32* %2, align 4
  ret i32 %77
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
