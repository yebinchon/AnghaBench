; ModuleID = '/home/carl/AnghaBench/freebsd/sys/amd64/cloudabi64/extr_cloudabi64_sysvec.c_cloudabi64_fetch_syscall_args.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/amd64/cloudabi64/extr_cloudabi64_sysvec.c_cloudabi64_fetch_syscall_args.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.thread = type { i32*, %struct.syscall_args, %struct.trapframe* }
%struct.syscall_args = type { i64, i32*, %struct.TYPE_2__*, i32 }
%struct.trapframe = type { i64, i32, i32, i32, i32, i32, i32 }

@CLOUDABI64_SYS_MAXSYSCALL = common dso_local global i64 0, align 8
@ENOSYS = common dso_local global i32 0, align 4
@cloudabi64_sysent = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.thread*)* @cloudabi64_fetch_syscall_args to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cloudabi64_fetch_syscall_args(%struct.thread* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.thread*, align 8
  %4 = alloca %struct.trapframe*, align 8
  %5 = alloca %struct.syscall_args*, align 8
  store %struct.thread* %0, %struct.thread** %3, align 8
  %6 = load %struct.thread*, %struct.thread** %3, align 8
  %7 = getelementptr inbounds %struct.thread, %struct.thread* %6, i32 0, i32 2
  %8 = load %struct.trapframe*, %struct.trapframe** %7, align 8
  store %struct.trapframe* %8, %struct.trapframe** %4, align 8
  %9 = load %struct.thread*, %struct.thread** %3, align 8
  %10 = getelementptr inbounds %struct.thread, %struct.thread* %9, i32 0, i32 1
  store %struct.syscall_args* %10, %struct.syscall_args** %5, align 8
  %11 = load %struct.trapframe*, %struct.trapframe** %4, align 8
  %12 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load %struct.syscall_args*, %struct.syscall_args** %5, align 8
  %15 = getelementptr inbounds %struct.syscall_args, %struct.syscall_args* %14, i32 0, i32 0
  store i64 %13, i64* %15, align 8
  %16 = load %struct.syscall_args*, %struct.syscall_args** %5, align 8
  %17 = getelementptr inbounds %struct.syscall_args, %struct.syscall_args* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @CLOUDABI64_SYS_MAXSYSCALL, align 8
  %20 = icmp uge i64 %18, %19
  br i1 %20, label %21, label %23

21:                                               ; preds = %1
  %22 = load i32, i32* @ENOSYS, align 4
  store i32 %22, i32* %2, align 4
  br label %91

23:                                               ; preds = %1
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cloudabi64_sysent, align 8
  %25 = load %struct.syscall_args*, %struct.syscall_args** %5, align 8
  %26 = getelementptr inbounds %struct.syscall_args, %struct.syscall_args* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i64 %27
  %29 = load %struct.syscall_args*, %struct.syscall_args** %5, align 8
  %30 = getelementptr inbounds %struct.syscall_args, %struct.syscall_args* %29, i32 0, i32 2
  store %struct.TYPE_2__* %28, %struct.TYPE_2__** %30, align 8
  %31 = load %struct.syscall_args*, %struct.syscall_args** %5, align 8
  %32 = getelementptr inbounds %struct.syscall_args, %struct.syscall_args* %31, i32 0, i32 2
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.syscall_args*, %struct.syscall_args** %5, align 8
  %37 = getelementptr inbounds %struct.syscall_args, %struct.syscall_args* %36, i32 0, i32 3
  store i32 %35, i32* %37, align 8
  %38 = load %struct.trapframe*, %struct.trapframe** %4, align 8
  %39 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %38, i32 0, i32 6
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.syscall_args*, %struct.syscall_args** %5, align 8
  %42 = getelementptr inbounds %struct.syscall_args, %struct.syscall_args* %41, i32 0, i32 1
  %43 = load i32*, i32** %42, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 0
  store i32 %40, i32* %44, align 4
  %45 = load %struct.trapframe*, %struct.trapframe** %4, align 8
  %46 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %45, i32 0, i32 5
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.syscall_args*, %struct.syscall_args** %5, align 8
  %49 = getelementptr inbounds %struct.syscall_args, %struct.syscall_args* %48, i32 0, i32 1
  %50 = load i32*, i32** %49, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 1
  store i32 %47, i32* %51, align 4
  %52 = load %struct.trapframe*, %struct.trapframe** %4, align 8
  %53 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.syscall_args*, %struct.syscall_args** %5, align 8
  %56 = getelementptr inbounds %struct.syscall_args, %struct.syscall_args* %55, i32 0, i32 1
  %57 = load i32*, i32** %56, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 2
  store i32 %54, i32* %58, align 4
  %59 = load %struct.trapframe*, %struct.trapframe** %4, align 8
  %60 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %59, i32 0, i32 4
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.syscall_args*, %struct.syscall_args** %5, align 8
  %63 = getelementptr inbounds %struct.syscall_args, %struct.syscall_args* %62, i32 0, i32 1
  %64 = load i32*, i32** %63, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 3
  store i32 %61, i32* %65, align 4
  %66 = load %struct.trapframe*, %struct.trapframe** %4, align 8
  %67 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %66, i32 0, i32 3
  %68 = load i32, i32* %67, align 8
  %69 = load %struct.syscall_args*, %struct.syscall_args** %5, align 8
  %70 = getelementptr inbounds %struct.syscall_args, %struct.syscall_args* %69, i32 0, i32 1
  %71 = load i32*, i32** %70, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 4
  store i32 %68, i32* %72, align 4
  %73 = load %struct.trapframe*, %struct.trapframe** %4, align 8
  %74 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.syscall_args*, %struct.syscall_args** %5, align 8
  %77 = getelementptr inbounds %struct.syscall_args, %struct.syscall_args* %76, i32 0, i32 1
  %78 = load i32*, i32** %77, align 8
  %79 = getelementptr inbounds i32, i32* %78, i64 5
  store i32 %75, i32* %79, align 4
  %80 = load %struct.thread*, %struct.thread** %3, align 8
  %81 = getelementptr inbounds %struct.thread, %struct.thread* %80, i32 0, i32 0
  %82 = load i32*, i32** %81, align 8
  %83 = getelementptr inbounds i32, i32* %82, i64 0
  store i32 0, i32* %83, align 4
  %84 = load %struct.trapframe*, %struct.trapframe** %4, align 8
  %85 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 8
  %87 = load %struct.thread*, %struct.thread** %3, align 8
  %88 = getelementptr inbounds %struct.thread, %struct.thread* %87, i32 0, i32 0
  %89 = load i32*, i32** %88, align 8
  %90 = getelementptr inbounds i32, i32* %89, i64 1
  store i32 %86, i32* %90, align 4
  store i32 0, i32* %2, align 4
  br label %91

91:                                               ; preds = %23, %21
  %92 = load i32, i32* %2, align 4
  ret i32 %92
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
