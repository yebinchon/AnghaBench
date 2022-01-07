; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/arm/extr_vm_machdep.c_cpu_fork.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/arm/extr_vm_machdep.c_cpu_fork.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32, %struct.TYPE_7__, %struct.trapframe*, %struct.TYPE_5__*, %struct.pcb*, i64 }
%struct.TYPE_7__ = type { i32, i8*, i32 }
%struct.trapframe = type { i64, i64, i32 }
%struct.TYPE_5__ = type { %struct.pcb }
%struct.pcb = type { i32, %struct.TYPE_8__, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_6__ = type { i8*, i32, i8*, i8*, i8* }
%struct.proc = type { i32, %struct.pcb }
%struct.mdproc = type { i32, %struct.TYPE_8__, %struct.TYPE_6__ }

@RFPROC = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@fork_return = common dso_local global i64 0, align 8
@fork_trampoline = common dso_local global i64 0, align 8
@initial_fpscr = common dso_local global i32 0, align 4
@PSR_C = common dso_local global i32 0, align 4
@PSR_SVC32_MODE = common dso_local global i32 0, align 4
@ARM_TP_ADDRESS = common dso_local global i64 0, align 8
@curthread = common dso_local global %struct.thread* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cpu_fork(%struct.thread* %0, %struct.proc* %1, %struct.thread* %2, i32 %3) #0 {
  %5 = alloca %struct.thread*, align 8
  %6 = alloca %struct.proc*, align 8
  %7 = alloca %struct.thread*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.pcb*, align 8
  %10 = alloca %struct.trapframe*, align 8
  %11 = alloca %struct.mdproc*, align 8
  store %struct.thread* %0, %struct.thread** %5, align 8
  store %struct.proc* %1, %struct.proc** %6, align 8
  store %struct.thread* %2, %struct.thread** %7, align 8
  store i32 %3, i32* %8, align 4
  %12 = load i32, i32* %8, align 4
  %13 = load i32, i32* @RFPROC, align 4
  %14 = and i32 %12, %13
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %4
  br label %121

17:                                               ; preds = %4
  %18 = load %struct.thread*, %struct.thread** %7, align 8
  %19 = getelementptr inbounds %struct.thread, %struct.thread* %18, i32 0, i32 5
  %20 = load i64, i64* %19, align 8
  %21 = load %struct.thread*, %struct.thread** %7, align 8
  %22 = getelementptr inbounds %struct.thread, %struct.thread* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @PAGE_SIZE, align 4
  %25 = mul nsw i32 %23, %24
  %26 = sext i32 %25 to i64
  %27 = add nsw i64 %20, %26
  %28 = inttoptr i64 %27 to %struct.pcb*
  %29 = getelementptr inbounds %struct.pcb, %struct.pcb* %28, i64 -1
  store %struct.pcb* %29, %struct.pcb** %9, align 8
  %30 = load %struct.pcb*, %struct.pcb** %9, align 8
  %31 = load %struct.thread*, %struct.thread** %7, align 8
  %32 = getelementptr inbounds %struct.thread, %struct.thread* %31, i32 0, i32 4
  store %struct.pcb* %30, %struct.pcb** %32, align 8
  %33 = load %struct.thread*, %struct.thread** %5, align 8
  %34 = getelementptr inbounds %struct.thread, %struct.thread* %33, i32 0, i32 4
  %35 = load %struct.pcb*, %struct.pcb** %34, align 8
  %36 = load %struct.pcb*, %struct.pcb** %9, align 8
  %37 = call i32 @bcopy(%struct.pcb* %35, %struct.pcb* %36, i32 48)
  %38 = load %struct.proc*, %struct.proc** %6, align 8
  %39 = getelementptr inbounds %struct.proc, %struct.proc* %38, i32 0, i32 1
  %40 = bitcast %struct.pcb* %39 to %struct.mdproc*
  store %struct.mdproc* %40, %struct.mdproc** %11, align 8
  %41 = load %struct.thread*, %struct.thread** %5, align 8
  %42 = getelementptr inbounds %struct.thread, %struct.thread* %41, i32 0, i32 3
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  %45 = load %struct.mdproc*, %struct.mdproc** %11, align 8
  %46 = bitcast %struct.mdproc* %45 to %struct.pcb*
  %47 = call i32 @bcopy(%struct.pcb* %44, %struct.pcb* %46, i32 48)
  %48 = load %struct.pcb*, %struct.pcb** %9, align 8
  %49 = bitcast %struct.pcb* %48 to %struct.trapframe*
  %50 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %49, i64 -1
  %51 = load %struct.thread*, %struct.thread** %7, align 8
  %52 = getelementptr inbounds %struct.thread, %struct.thread* %51, i32 0, i32 2
  store %struct.trapframe* %50, %struct.trapframe** %52, align 8
  %53 = load %struct.thread*, %struct.thread** %7, align 8
  %54 = getelementptr inbounds %struct.thread, %struct.thread* %53, i32 0, i32 2
  %55 = load %struct.trapframe*, %struct.trapframe** %54, align 8
  %56 = load %struct.thread*, %struct.thread** %5, align 8
  %57 = getelementptr inbounds %struct.thread, %struct.thread* %56, i32 0, i32 2
  %58 = load %struct.trapframe*, %struct.trapframe** %57, align 8
  %59 = bitcast %struct.trapframe* %55 to i8*
  %60 = bitcast %struct.trapframe* %58 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %59, i8* align 8 %60, i64 24, i1 false)
  %61 = load %struct.proc*, %struct.proc** %6, align 8
  %62 = getelementptr inbounds %struct.proc, %struct.proc* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = call i32 @vmspace_pmap(i32 %63)
  %65 = load %struct.pcb*, %struct.pcb** %9, align 8
  %66 = call i32 @pmap_set_pcb_pagedir(i32 %64, %struct.pcb* %65)
  %67 = load i64, i64* @fork_return, align 8
  %68 = inttoptr i64 %67 to i8*
  %69 = load %struct.pcb*, %struct.pcb** %9, align 8
  %70 = getelementptr inbounds %struct.pcb, %struct.pcb* %69, i32 0, i32 2
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 4
  store i8* %68, i8** %71, align 8
  %72 = load %struct.thread*, %struct.thread** %7, align 8
  %73 = bitcast %struct.thread* %72 to i8*
  %74 = load %struct.pcb*, %struct.pcb** %9, align 8
  %75 = getelementptr inbounds %struct.pcb, %struct.pcb* %74, i32 0, i32 2
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 3
  store i8* %73, i8** %76, align 8
  %77 = load i64, i64* @fork_trampoline, align 8
  %78 = inttoptr i64 %77 to i8*
  %79 = load %struct.pcb*, %struct.pcb** %9, align 8
  %80 = getelementptr inbounds %struct.pcb, %struct.pcb* %79, i32 0, i32 2
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 2
  store i8* %78, i8** %81, align 8
  %82 = load %struct.thread*, %struct.thread** %7, align 8
  %83 = getelementptr inbounds %struct.thread, %struct.thread* %82, i32 0, i32 2
  %84 = load %struct.trapframe*, %struct.trapframe** %83, align 8
  %85 = call i32 @STACKALIGN(%struct.trapframe* %84)
  %86 = load %struct.pcb*, %struct.pcb** %9, align 8
  %87 = getelementptr inbounds %struct.pcb, %struct.pcb* %86, i32 0, i32 2
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 1
  store i32 %85, i32* %88, align 8
  %89 = load %struct.pcb*, %struct.pcb** %9, align 8
  %90 = getelementptr inbounds %struct.pcb, %struct.pcb* %89, i32 0, i32 0
  store i32 -1, i32* %90, align 8
  %91 = load i32, i32* @initial_fpscr, align 4
  %92 = load %struct.pcb*, %struct.pcb** %9, align 8
  %93 = getelementptr inbounds %struct.pcb, %struct.pcb* %92, i32 0, i32 1
  %94 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %93, i32 0, i32 0
  store i32 %91, i32* %94, align 4
  %95 = load %struct.thread*, %struct.thread** %7, align 8
  %96 = getelementptr inbounds %struct.thread, %struct.thread* %95, i32 0, i32 2
  %97 = load %struct.trapframe*, %struct.trapframe** %96, align 8
  store %struct.trapframe* %97, %struct.trapframe** %10, align 8
  %98 = load i32, i32* @PSR_C, align 4
  %99 = xor i32 %98, -1
  %100 = load %struct.trapframe*, %struct.trapframe** %10, align 8
  %101 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 8
  %103 = and i32 %102, %99
  store i32 %103, i32* %101, align 8
  %104 = load %struct.trapframe*, %struct.trapframe** %10, align 8
  %105 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %104, i32 0, i32 1
  store i64 0, i64* %105, align 8
  %106 = load %struct.trapframe*, %struct.trapframe** %10, align 8
  %107 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %106, i32 0, i32 0
  store i64 0, i64* %107, align 8
  %108 = load %struct.thread*, %struct.thread** %7, align 8
  %109 = getelementptr inbounds %struct.thread, %struct.thread* %108, i32 0, i32 1
  %110 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %109, i32 0, i32 0
  store i32 1, i32* %110, align 8
  %111 = load i32, i32* @PSR_SVC32_MODE, align 4
  %112 = load %struct.thread*, %struct.thread** %7, align 8
  %113 = getelementptr inbounds %struct.thread, %struct.thread* %112, i32 0, i32 1
  %114 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %113, i32 0, i32 2
  store i32 %111, i32* %114, align 8
  %115 = load i64, i64* @ARM_TP_ADDRESS, align 8
  %116 = inttoptr i64 %115 to i8**
  %117 = load i8*, i8** %116, align 8
  %118 = load %struct.thread*, %struct.thread** %7, align 8
  %119 = getelementptr inbounds %struct.thread, %struct.thread* %118, i32 0, i32 1
  %120 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %119, i32 0, i32 1
  store i8* %117, i8** %120, align 8
  br label %121

121:                                              ; preds = %17, %16
  ret void
}

declare dso_local i32 @bcopy(%struct.pcb*, %struct.pcb*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @pmap_set_pcb_pagedir(i32, %struct.pcb*) #1

declare dso_local i32 @vmspace_pmap(i32) #1

declare dso_local i32 @STACKALIGN(%struct.trapframe*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
