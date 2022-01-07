; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/arm/extr_machdep.c_init_proc0.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/arm/extr_machdep.c_init_proc0.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, %struct.pcb*, i32*, i64 }
%struct.pcb = type { i32, %struct.TYPE_5__, i64 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_7__ = type { %struct.pcb* }

@proc0 = common dso_local global i32 0, align 4
@thread0 = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@kstack_pages = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@VFPSCR_DN = common dso_local global i32 0, align 4
@proc0_tf = common dso_local global i32 0, align 4
@pcpup = common dso_local global %struct.TYPE_7__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @init_proc0(i64 %0) #0 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %3 = call i32 @proc_linkup0(i32* @proc0, %struct.TYPE_6__* @thread0)
  %4 = load i64, i64* %2, align 8
  store i64 %4, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @thread0, i32 0, i32 3), align 8
  %5 = load i32, i32* @kstack_pages, align 4
  store i32 %5, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @thread0, i32 0, i32 0), align 8
  %6 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @thread0, i32 0, i32 3), align 8
  %7 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @thread0, i32 0, i32 0), align 8
  %8 = load i32, i32* @PAGE_SIZE, align 4
  %9 = mul nsw i32 %7, %8
  %10 = sext i32 %9 to i64
  %11 = add nsw i64 %6, %10
  %12 = inttoptr i64 %11 to %struct.pcb*
  %13 = getelementptr inbounds %struct.pcb, %struct.pcb* %12, i64 -1
  store %struct.pcb* %13, %struct.pcb** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @thread0, i32 0, i32 1), align 8
  %14 = load %struct.pcb*, %struct.pcb** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @thread0, i32 0, i32 1), align 8
  %15 = getelementptr inbounds %struct.pcb, %struct.pcb* %14, i32 0, i32 2
  store i64 0, i64* %15, align 8
  %16 = load %struct.pcb*, %struct.pcb** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @thread0, i32 0, i32 1), align 8
  %17 = getelementptr inbounds %struct.pcb, %struct.pcb* %16, i32 0, i32 0
  store i32 -1, i32* %17, align 8
  %18 = load i32, i32* @VFPSCR_DN, align 4
  %19 = load %struct.pcb*, %struct.pcb** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @thread0, i32 0, i32 1), align 8
  %20 = getelementptr inbounds %struct.pcb, %struct.pcb* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  store i32 %18, i32* %21, align 4
  store i32* @proc0_tf, i32** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @thread0, i32 0, i32 2), align 8
  %22 = load %struct.pcb*, %struct.pcb** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @thread0, i32 0, i32 1), align 8
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** @pcpup, align 8
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 0
  store %struct.pcb* %22, %struct.pcb** %24, align 8
  ret void
}

declare dso_local i32 @proc_linkup0(i32*, %struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
