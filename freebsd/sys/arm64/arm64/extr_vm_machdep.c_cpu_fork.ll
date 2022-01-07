; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm64/arm64/extr_vm_machdep.c_cpu_fork.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm64/arm64/extr_vm_machdep.c_cpu_fork.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32, %struct.TYPE_2__, %struct.trapframe*, %struct.trapframe*, i64 }
%struct.TYPE_2__ = type { i32, i32 }
%struct.trapframe = type { i32, i32, i64*, i64, i32, i32, i32*, i64*, i8*, i8* }
%struct.proc = type { i32 }
%struct.pcb = type { i32, i32, i64*, i64, i32, i32, i32*, i64*, i8*, i8* }

@RFPROC = common dso_local global i32 0, align 4
@curthread = common dso_local global %struct.thread* null, align 8
@tpidr_el0 = common dso_local global i32 0, align 4
@tpidrro_el0 = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@PSR_M_32 = common dso_local global i32 0, align 4
@PSR_DAIF = common dso_local global i32 0, align 4
@fork_return = common dso_local global i64 0, align 8
@fork_trampoline = common dso_local global i64 0, align 8
@PCB_LR = common dso_local global i64 0, align 8
@UINT_MAX = common dso_local global i32 0, align 4
@DAIF_I_MASKED = common dso_local global i32 0, align 4
@PCB_FP_STARTED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cpu_fork(%struct.thread* %0, %struct.proc* %1, %struct.thread* %2, i32 %3) #0 {
  %5 = alloca %struct.thread*, align 8
  %6 = alloca %struct.proc*, align 8
  %7 = alloca %struct.thread*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.pcb*, align 8
  %10 = alloca %struct.trapframe*, align 8
  store %struct.thread* %0, %struct.thread** %5, align 8
  store %struct.proc* %1, %struct.proc** %6, align 8
  store %struct.thread* %2, %struct.thread** %7, align 8
  store i32 %3, i32* %8, align 4
  %11 = load i32, i32* %8, align 4
  %12 = load i32, i32* @RFPROC, align 4
  %13 = and i32 %11, %12
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %4
  br label %145

16:                                               ; preds = %4
  %17 = load %struct.thread*, %struct.thread** %5, align 8
  %18 = load %struct.thread*, %struct.thread** @curthread, align 8
  %19 = icmp eq %struct.thread* %17, %18
  br i1 %19, label %20, label %33

20:                                               ; preds = %16
  %21 = load i32, i32* @tpidr_el0, align 4
  %22 = call i8* @READ_SPECIALREG(i32 %21)
  %23 = load %struct.thread*, %struct.thread** %5, align 8
  %24 = getelementptr inbounds %struct.thread, %struct.thread* %23, i32 0, i32 2
  %25 = load %struct.trapframe*, %struct.trapframe** %24, align 8
  %26 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %25, i32 0, i32 9
  store i8* %22, i8** %26, align 8
  %27 = load i32, i32* @tpidrro_el0, align 4
  %28 = call i8* @READ_SPECIALREG(i32 %27)
  %29 = load %struct.thread*, %struct.thread** %5, align 8
  %30 = getelementptr inbounds %struct.thread, %struct.thread* %29, i32 0, i32 2
  %31 = load %struct.trapframe*, %struct.trapframe** %30, align 8
  %32 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %31, i32 0, i32 8
  store i8* %28, i8** %32, align 8
  br label %33

33:                                               ; preds = %20, %16
  %34 = load %struct.thread*, %struct.thread** %7, align 8
  %35 = getelementptr inbounds %struct.thread, %struct.thread* %34, i32 0, i32 4
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.thread*, %struct.thread** %7, align 8
  %38 = getelementptr inbounds %struct.thread, %struct.thread* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* @PAGE_SIZE, align 4
  %41 = mul nsw i32 %39, %40
  %42 = sext i32 %41 to i64
  %43 = add nsw i64 %36, %42
  %44 = inttoptr i64 %43 to %struct.pcb*
  %45 = getelementptr inbounds %struct.pcb, %struct.pcb* %44, i64 -1
  store %struct.pcb* %45, %struct.pcb** %9, align 8
  %46 = load %struct.pcb*, %struct.pcb** %9, align 8
  %47 = bitcast %struct.pcb* %46 to %struct.trapframe*
  %48 = load %struct.thread*, %struct.thread** %7, align 8
  %49 = getelementptr inbounds %struct.thread, %struct.thread* %48, i32 0, i32 2
  store %struct.trapframe* %47, %struct.trapframe** %49, align 8
  %50 = load %struct.thread*, %struct.thread** %5, align 8
  %51 = getelementptr inbounds %struct.thread, %struct.thread* %50, i32 0, i32 2
  %52 = load %struct.trapframe*, %struct.trapframe** %51, align 8
  %53 = load %struct.pcb*, %struct.pcb** %9, align 8
  %54 = bitcast %struct.pcb* %53 to %struct.trapframe*
  %55 = call i32 @bcopy(%struct.trapframe* %52, %struct.trapframe* %54, i32 64)
  %56 = load %struct.pcb*, %struct.pcb** %9, align 8
  %57 = bitcast %struct.pcb* %56 to %struct.trapframe*
  %58 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %57, i64 -1
  %59 = call i64 @STACKALIGN(%struct.trapframe* %58)
  %60 = inttoptr i64 %59 to %struct.trapframe*
  store %struct.trapframe* %60, %struct.trapframe** %10, align 8
  %61 = load %struct.thread*, %struct.thread** %5, align 8
  %62 = getelementptr inbounds %struct.thread, %struct.thread* %61, i32 0, i32 3
  %63 = load %struct.trapframe*, %struct.trapframe** %62, align 8
  %64 = load %struct.trapframe*, %struct.trapframe** %10, align 8
  %65 = call i32 @bcopy(%struct.trapframe* %63, %struct.trapframe* %64, i32 64)
  %66 = load %struct.trapframe*, %struct.trapframe** %10, align 8
  %67 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %66, i32 0, i32 7
  %68 = load i64*, i64** %67, align 8
  %69 = getelementptr inbounds i64, i64* %68, i64 0
  store i64 0, i64* %69, align 8
  %70 = load %struct.trapframe*, %struct.trapframe** %10, align 8
  %71 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %70, i32 0, i32 7
  %72 = load i64*, i64** %71, align 8
  %73 = getelementptr inbounds i64, i64* %72, i64 1
  store i64 0, i64* %73, align 8
  %74 = load %struct.thread*, %struct.thread** %5, align 8
  %75 = getelementptr inbounds %struct.thread, %struct.thread* %74, i32 0, i32 3
  %76 = load %struct.trapframe*, %struct.trapframe** %75, align 8
  %77 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* @PSR_M_32, align 4
  %80 = load i32, i32* @PSR_DAIF, align 4
  %81 = or i32 %79, %80
  %82 = and i32 %78, %81
  %83 = load %struct.trapframe*, %struct.trapframe** %10, align 8
  %84 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %83, i32 0, i32 1
  store i32 %82, i32* %84, align 4
  %85 = load %struct.trapframe*, %struct.trapframe** %10, align 8
  %86 = load %struct.thread*, %struct.thread** %7, align 8
  %87 = getelementptr inbounds %struct.thread, %struct.thread* %86, i32 0, i32 3
  store %struct.trapframe* %85, %struct.trapframe** %87, align 8
  %88 = load i64, i64* @fork_return, align 8
  %89 = load %struct.thread*, %struct.thread** %7, align 8
  %90 = getelementptr inbounds %struct.thread, %struct.thread* %89, i32 0, i32 2
  %91 = load %struct.trapframe*, %struct.trapframe** %90, align 8
  %92 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %91, i32 0, i32 2
  %93 = load i64*, i64** %92, align 8
  %94 = getelementptr inbounds i64, i64* %93, i64 8
  store i64 %88, i64* %94, align 8
  %95 = load %struct.thread*, %struct.thread** %7, align 8
  %96 = ptrtoint %struct.thread* %95 to i64
  %97 = load %struct.thread*, %struct.thread** %7, align 8
  %98 = getelementptr inbounds %struct.thread, %struct.thread* %97, i32 0, i32 2
  %99 = load %struct.trapframe*, %struct.trapframe** %98, align 8
  %100 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %99, i32 0, i32 2
  %101 = load i64*, i64** %100, align 8
  %102 = getelementptr inbounds i64, i64* %101, i64 9
  store i64 %96, i64* %102, align 8
  %103 = load i64, i64* @fork_trampoline, align 8
  %104 = load %struct.thread*, %struct.thread** %7, align 8
  %105 = getelementptr inbounds %struct.thread, %struct.thread* %104, i32 0, i32 2
  %106 = load %struct.trapframe*, %struct.trapframe** %105, align 8
  %107 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %106, i32 0, i32 2
  %108 = load i64*, i64** %107, align 8
  %109 = load i64, i64* @PCB_LR, align 8
  %110 = getelementptr inbounds i64, i64* %108, i64 %109
  store i64 %103, i64* %110, align 8
  %111 = load %struct.thread*, %struct.thread** %7, align 8
  %112 = getelementptr inbounds %struct.thread, %struct.thread* %111, i32 0, i32 3
  %113 = load %struct.trapframe*, %struct.trapframe** %112, align 8
  %114 = ptrtoint %struct.trapframe* %113 to i64
  %115 = load %struct.thread*, %struct.thread** %7, align 8
  %116 = getelementptr inbounds %struct.thread, %struct.thread* %115, i32 0, i32 2
  %117 = load %struct.trapframe*, %struct.trapframe** %116, align 8
  %118 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %117, i32 0, i32 3
  store i64 %114, i64* %118, align 8
  %119 = load %struct.thread*, %struct.thread** %7, align 8
  %120 = getelementptr inbounds %struct.thread, %struct.thread* %119, i32 0, i32 2
  %121 = load %struct.trapframe*, %struct.trapframe** %120, align 8
  %122 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %121, i32 0, i32 5
  %123 = load %struct.thread*, %struct.thread** %7, align 8
  %124 = getelementptr inbounds %struct.thread, %struct.thread* %123, i32 0, i32 2
  %125 = load %struct.trapframe*, %struct.trapframe** %124, align 8
  %126 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %125, i32 0, i32 6
  store i32* %122, i32** %126, align 8
  %127 = load i32, i32* @UINT_MAX, align 4
  %128 = load %struct.thread*, %struct.thread** %7, align 8
  %129 = getelementptr inbounds %struct.thread, %struct.thread* %128, i32 0, i32 2
  %130 = load %struct.trapframe*, %struct.trapframe** %129, align 8
  %131 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %130, i32 0, i32 4
  store i32 %127, i32* %131, align 8
  %132 = load %struct.thread*, %struct.thread** %7, align 8
  %133 = getelementptr inbounds %struct.thread, %struct.thread* %132, i32 0, i32 1
  %134 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %133, i32 0, i32 0
  store i32 1, i32* %134, align 4
  %135 = load %struct.thread*, %struct.thread** %5, align 8
  %136 = getelementptr inbounds %struct.thread, %struct.thread* %135, i32 0, i32 1
  %137 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 4
  %139 = load i32, i32* @DAIF_I_MASKED, align 4
  %140 = xor i32 %139, -1
  %141 = and i32 %138, %140
  %142 = load %struct.thread*, %struct.thread** %7, align 8
  %143 = getelementptr inbounds %struct.thread, %struct.thread* %142, i32 0, i32 1
  %144 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %143, i32 0, i32 1
  store i32 %141, i32* %144, align 4
  br label %145

145:                                              ; preds = %33, %15
  ret void
}

declare dso_local i8* @READ_SPECIALREG(i32) #1

declare dso_local i32 @bcopy(%struct.trapframe*, %struct.trapframe*, i32) #1

declare dso_local i64 @STACKALIGN(%struct.trapframe*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
