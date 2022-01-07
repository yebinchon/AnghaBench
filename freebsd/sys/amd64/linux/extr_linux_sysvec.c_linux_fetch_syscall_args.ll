; ModuleID = '/home/carl/AnghaBench/freebsd/sys/amd64/linux/extr_linux_sysvec.c_linux_fetch_syscall_args.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/amd64/linux/extr_linux_sysvec.c_linux_fetch_syscall_args.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i64*, %struct.syscall_args, %struct.trapframe*, %struct.proc* }
%struct.syscall_args = type { i64, %struct.TYPE_4__*, i32, i32* }
%struct.TYPE_4__ = type { i32 }
%struct.trapframe = type { i64, i32, i32, i32, i32, i32, i32 }
%struct.proc = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64, %struct.TYPE_4__* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.thread*)* @linux_fetch_syscall_args to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @linux_fetch_syscall_args(%struct.thread* %0) #0 {
  %2 = alloca %struct.thread*, align 8
  %3 = alloca %struct.proc*, align 8
  %4 = alloca %struct.trapframe*, align 8
  %5 = alloca %struct.syscall_args*, align 8
  store %struct.thread* %0, %struct.thread** %2, align 8
  %6 = load %struct.thread*, %struct.thread** %2, align 8
  %7 = getelementptr inbounds %struct.thread, %struct.thread* %6, i32 0, i32 3
  %8 = load %struct.proc*, %struct.proc** %7, align 8
  store %struct.proc* %8, %struct.proc** %3, align 8
  %9 = load %struct.thread*, %struct.thread** %2, align 8
  %10 = getelementptr inbounds %struct.thread, %struct.thread* %9, i32 0, i32 2
  %11 = load %struct.trapframe*, %struct.trapframe** %10, align 8
  store %struct.trapframe* %11, %struct.trapframe** %4, align 8
  %12 = load %struct.thread*, %struct.thread** %2, align 8
  %13 = getelementptr inbounds %struct.thread, %struct.thread* %12, i32 0, i32 1
  store %struct.syscall_args* %13, %struct.syscall_args** %5, align 8
  %14 = load %struct.trapframe*, %struct.trapframe** %4, align 8
  %15 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %14, i32 0, i32 6
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.syscall_args*, %struct.syscall_args** %5, align 8
  %18 = getelementptr inbounds %struct.syscall_args, %struct.syscall_args* %17, i32 0, i32 3
  %19 = load i32*, i32** %18, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 0
  store i32 %16, i32* %20, align 4
  %21 = load %struct.trapframe*, %struct.trapframe** %4, align 8
  %22 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %21, i32 0, i32 5
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.syscall_args*, %struct.syscall_args** %5, align 8
  %25 = getelementptr inbounds %struct.syscall_args, %struct.syscall_args* %24, i32 0, i32 3
  %26 = load i32*, i32** %25, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 1
  store i32 %23, i32* %27, align 4
  %28 = load %struct.trapframe*, %struct.trapframe** %4, align 8
  %29 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %28, i32 0, i32 4
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.syscall_args*, %struct.syscall_args** %5, align 8
  %32 = getelementptr inbounds %struct.syscall_args, %struct.syscall_args* %31, i32 0, i32 3
  %33 = load i32*, i32** %32, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 2
  store i32 %30, i32* %34, align 4
  %35 = load %struct.trapframe*, %struct.trapframe** %4, align 8
  %36 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.syscall_args*, %struct.syscall_args** %5, align 8
  %39 = getelementptr inbounds %struct.syscall_args, %struct.syscall_args* %38, i32 0, i32 3
  %40 = load i32*, i32** %39, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 3
  store i32 %37, i32* %41, align 4
  %42 = load %struct.trapframe*, %struct.trapframe** %4, align 8
  %43 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.syscall_args*, %struct.syscall_args** %5, align 8
  %46 = getelementptr inbounds %struct.syscall_args, %struct.syscall_args* %45, i32 0, i32 3
  %47 = load i32*, i32** %46, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 4
  store i32 %44, i32* %48, align 4
  %49 = load %struct.trapframe*, %struct.trapframe** %4, align 8
  %50 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.syscall_args*, %struct.syscall_args** %5, align 8
  %53 = getelementptr inbounds %struct.syscall_args, %struct.syscall_args* %52, i32 0, i32 3
  %54 = load i32*, i32** %53, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 5
  store i32 %51, i32* %55, align 4
  %56 = load %struct.trapframe*, %struct.trapframe** %4, align 8
  %57 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load %struct.syscall_args*, %struct.syscall_args** %5, align 8
  %60 = getelementptr inbounds %struct.syscall_args, %struct.syscall_args* %59, i32 0, i32 0
  store i64 %58, i64* %60, align 8
  %61 = load %struct.syscall_args*, %struct.syscall_args** %5, align 8
  %62 = getelementptr inbounds %struct.syscall_args, %struct.syscall_args* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load %struct.proc*, %struct.proc** %3, align 8
  %65 = getelementptr inbounds %struct.proc, %struct.proc* %64, i32 0, i32 0
  %66 = load %struct.TYPE_3__*, %struct.TYPE_3__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = icmp uge i64 %63, %68
  br i1 %69, label %70, label %85

70:                                               ; preds = %1
  %71 = load %struct.proc*, %struct.proc** %3, align 8
  %72 = getelementptr inbounds %struct.proc, %struct.proc* %71, i32 0, i32 0
  %73 = load %struct.TYPE_3__*, %struct.TYPE_3__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 1
  %75 = load %struct.TYPE_4__*, %struct.TYPE_4__** %74, align 8
  %76 = load %struct.proc*, %struct.proc** %3, align 8
  %77 = getelementptr inbounds %struct.proc, %struct.proc* %76, i32 0, i32 0
  %78 = load %struct.TYPE_3__*, %struct.TYPE_3__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = sub i64 %80, 1
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i64 %81
  %83 = load %struct.syscall_args*, %struct.syscall_args** %5, align 8
  %84 = getelementptr inbounds %struct.syscall_args, %struct.syscall_args* %83, i32 0, i32 1
  store %struct.TYPE_4__* %82, %struct.TYPE_4__** %84, align 8
  br label %97

85:                                               ; preds = %1
  %86 = load %struct.proc*, %struct.proc** %3, align 8
  %87 = getelementptr inbounds %struct.proc, %struct.proc* %86, i32 0, i32 0
  %88 = load %struct.TYPE_3__*, %struct.TYPE_3__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i32 0, i32 1
  %90 = load %struct.TYPE_4__*, %struct.TYPE_4__** %89, align 8
  %91 = load %struct.syscall_args*, %struct.syscall_args** %5, align 8
  %92 = getelementptr inbounds %struct.syscall_args, %struct.syscall_args* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i64 %93
  %95 = load %struct.syscall_args*, %struct.syscall_args** %5, align 8
  %96 = getelementptr inbounds %struct.syscall_args, %struct.syscall_args* %95, i32 0, i32 1
  store %struct.TYPE_4__* %94, %struct.TYPE_4__** %96, align 8
  br label %97

97:                                               ; preds = %85, %70
  %98 = load %struct.syscall_args*, %struct.syscall_args** %5, align 8
  %99 = getelementptr inbounds %struct.syscall_args, %struct.syscall_args* %98, i32 0, i32 1
  %100 = load %struct.TYPE_4__*, %struct.TYPE_4__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.syscall_args*, %struct.syscall_args** %5, align 8
  %104 = getelementptr inbounds %struct.syscall_args, %struct.syscall_args* %103, i32 0, i32 2
  store i32 %102, i32* %104, align 8
  %105 = load %struct.thread*, %struct.thread** %2, align 8
  %106 = getelementptr inbounds %struct.thread, %struct.thread* %105, i32 0, i32 0
  %107 = load i64*, i64** %106, align 8
  %108 = getelementptr inbounds i64, i64* %107, i64 0
  store i64 0, i64* %108, align 8
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
