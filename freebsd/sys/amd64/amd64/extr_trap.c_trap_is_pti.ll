; ModuleID = '/home/carl/AnghaBench/freebsd/sys/amd64/amd64/extr_trap.c_trap_is_pti.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/amd64/amd64/extr_trap.c_trap_is_pti.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }
%struct.trapframe = type { i32 }
%struct.TYPE_4__ = type { i64, i32 }

@curpmap = common dso_local global i32 0, align 4
@PMAP_NO_CR3 = common dso_local global i64 0, align 8
@pg_nx = common dso_local global i64 0, align 8
@PGEX_P = common dso_local global i32 0, align 4
@PGEX_W = common dso_local global i32 0, align 4
@PGEX_U = common dso_local global i32 0, align 4
@PGEX_I = common dso_local global i32 0, align 4
@curpcb = common dso_local global %struct.TYPE_3__* null, align 8
@CR3_PCID_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.trapframe*)* @trap_is_pti to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @trap_is_pti(%struct.trapframe* %0) #0 {
  %2 = alloca %struct.trapframe*, align 8
  store %struct.trapframe* %0, %struct.trapframe** %2, align 8
  %3 = load i32, i32* @curpmap, align 4
  %4 = call %struct.TYPE_4__* @PCPU_GET(i32 %3)
  %5 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @PMAP_NO_CR3, align 8
  %8 = icmp ne i64 %6, %7
  br i1 %8, label %9, label %45

9:                                                ; preds = %1
  %10 = load i64, i64* @pg_nx, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %45

12:                                               ; preds = %9
  %13 = load %struct.trapframe*, %struct.trapframe** %2, align 8
  %14 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @PGEX_P, align 4
  %17 = load i32, i32* @PGEX_W, align 4
  %18 = or i32 %16, %17
  %19 = load i32, i32* @PGEX_U, align 4
  %20 = or i32 %18, %19
  %21 = load i32, i32* @PGEX_I, align 4
  %22 = or i32 %20, %21
  %23 = and i32 %15, %22
  %24 = load i32, i32* @PGEX_P, align 4
  %25 = load i32, i32* @PGEX_U, align 4
  %26 = or i32 %24, %25
  %27 = load i32, i32* @PGEX_I, align 4
  %28 = or i32 %26, %27
  %29 = icmp eq i32 %23, %28
  br i1 %29, label %30, label %45

30:                                               ; preds = %12
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** @curpcb, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @CR3_PCID_MASK, align 4
  %35 = xor i32 %34, -1
  %36 = and i32 %33, %35
  %37 = load i32, i32* @curpmap, align 4
  %38 = call %struct.TYPE_4__* @PCPU_GET(i32 %37)
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @CR3_PCID_MASK, align 4
  %42 = xor i32 %41, -1
  %43 = and i32 %40, %42
  %44 = icmp eq i32 %36, %43
  br label %45

45:                                               ; preds = %30, %12, %9, %1
  %46 = phi i1 [ false, %12 ], [ false, %9 ], [ false, %1 ], [ %44, %30 ]
  %47 = zext i1 %46 to i32
  ret i32 %47
}

declare dso_local %struct.TYPE_4__* @PCPU_GET(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
