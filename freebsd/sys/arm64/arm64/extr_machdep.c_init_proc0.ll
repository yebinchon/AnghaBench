; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm64/arm64/extr_machdep.c_init_proc0.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm64/arm64/extr_machdep.c_init_proc0.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcpu = type { %struct.pcb* }
%struct.pcb = type { i32, i32, i32*, i64 }
%struct.TYPE_3__ = type { i32, %struct.pcb*, i32*, i64 }

@__pcpu = common dso_local global %struct.pcpu* null, align 8
@proc0 = common dso_local global i32 0, align 4
@thread0 = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8
@KSTACK_PAGES = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@UINT_MAX = common dso_local global i32 0, align 4
@proc0_tf = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @init_proc0 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_proc0(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.pcpu*, align 8
  store i64 %0, i64* %2, align 8
  %4 = load %struct.pcpu*, %struct.pcpu** @__pcpu, align 8
  %5 = getelementptr inbounds %struct.pcpu, %struct.pcpu* %4, i64 0
  store %struct.pcpu* %5, %struct.pcpu** %3, align 8
  %6 = call i32 @proc_linkup0(i32* @proc0, %struct.TYPE_3__* @thread0)
  %7 = load i64, i64* %2, align 8
  store i64 %7, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @thread0, i32 0, i32 3), align 8
  %8 = load i32, i32* @KSTACK_PAGES, align 4
  store i32 %8, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @thread0, i32 0, i32 0), align 8
  %9 = load i64, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @thread0, i32 0, i32 3), align 8
  %10 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @thread0, i32 0, i32 0), align 8
  %11 = load i32, i32* @PAGE_SIZE, align 4
  %12 = mul nsw i32 %10, %11
  %13 = sext i32 %12 to i64
  %14 = add nsw i64 %9, %13
  %15 = inttoptr i64 %14 to %struct.pcb*
  %16 = getelementptr inbounds %struct.pcb, %struct.pcb* %15, i64 -1
  store %struct.pcb* %16, %struct.pcb** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @thread0, i32 0, i32 1), align 8
  %17 = load %struct.pcb*, %struct.pcb** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @thread0, i32 0, i32 1), align 8
  %18 = getelementptr inbounds %struct.pcb, %struct.pcb* %17, i32 0, i32 3
  store i64 0, i64* %18, align 8
  %19 = load %struct.pcb*, %struct.pcb** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @thread0, i32 0, i32 1), align 8
  %20 = getelementptr inbounds %struct.pcb, %struct.pcb* %19, i32 0, i32 1
  %21 = load %struct.pcb*, %struct.pcb** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @thread0, i32 0, i32 1), align 8
  %22 = getelementptr inbounds %struct.pcb, %struct.pcb* %21, i32 0, i32 2
  store i32* %20, i32** %22, align 8
  %23 = load i32, i32* @UINT_MAX, align 4
  %24 = load %struct.pcb*, %struct.pcb** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @thread0, i32 0, i32 1), align 8
  %25 = getelementptr inbounds %struct.pcb, %struct.pcb* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 8
  store i32* @proc0_tf, i32** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @thread0, i32 0, i32 2), align 8
  %26 = load %struct.pcb*, %struct.pcb** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @thread0, i32 0, i32 1), align 8
  %27 = load %struct.pcpu*, %struct.pcpu** %3, align 8
  %28 = getelementptr inbounds %struct.pcpu, %struct.pcpu* %27, i32 0, i32 0
  store %struct.pcb* %26, %struct.pcb** %28, align 8
  ret void
}

declare dso_local i32 @proc_linkup0(i32*, %struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
