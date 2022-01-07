; ModuleID = '/home/carl/AnghaBench/freebsd/sys/amd64/amd64/extr_mp_machdep.c_invltlb_invpcid_pti_handler.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/amd64/amd64/extr_mp_machdep.c_invltlb_invpcid_pti_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.invpcid_descr = type { i32, i64, i64 }

@smp_tlb_generation = common dso_local global i32 0, align 4
@smp_tlb_pmap = common dso_local global %struct.TYPE_5__* null, align 8
@cpuid = common dso_local global i32 0, align 4
@kernel_pmap = common dso_local global %struct.TYPE_5__* null, align 8
@INVPCID_CTXGLOB = common dso_local global i32 0, align 4
@INVPCID_CTX = common dso_local global i32 0, align 4
@PMAP_PCID_USER_PT = common dso_local global i32 0, align 4
@smp_tlb_done = common dso_local global i32 0, align 4
@ipi_invltlb_counts = common dso_local global i32** null, align 8
@xhits_gbl = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @invltlb_invpcid_pti_handler() #0 {
  %1 = alloca %struct.invpcid_descr, align 8
  %2 = alloca i32, align 4
  %3 = load i32, i32* @smp_tlb_generation, align 4
  store i32 %3, i32* %2, align 4
  %4 = load %struct.TYPE_5__*, %struct.TYPE_5__** @smp_tlb_pmap, align 8
  %5 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 0
  %6 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %7 = load i32, i32* @cpuid, align 4
  %8 = call i64 @PCPU_GET(i32 %7)
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i64 %8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = getelementptr inbounds %struct.invpcid_descr, %struct.invpcid_descr* %1, i32 0, i32 0
  store i32 %11, i32* %12, align 8
  %13 = getelementptr inbounds %struct.invpcid_descr, %struct.invpcid_descr* %1, i32 0, i32 2
  store i64 0, i64* %13, align 8
  %14 = getelementptr inbounds %struct.invpcid_descr, %struct.invpcid_descr* %1, i32 0, i32 1
  store i64 0, i64* %14, align 8
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** @smp_tlb_pmap, align 8
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** @kernel_pmap, align 8
  %17 = icmp eq %struct.TYPE_5__* %15, %16
  br i1 %17, label %18, label %21

18:                                               ; preds = %0
  %19 = load i32, i32* @INVPCID_CTXGLOB, align 4
  %20 = call i32 @invpcid(%struct.invpcid_descr* %1, i32 %19)
  br label %30

21:                                               ; preds = %0
  %22 = load i32, i32* @INVPCID_CTX, align 4
  %23 = call i32 @invpcid(%struct.invpcid_descr* %1, i32 %22)
  %24 = load i32, i32* @PMAP_PCID_USER_PT, align 4
  %25 = getelementptr inbounds %struct.invpcid_descr, %struct.invpcid_descr* %1, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = or i32 %26, %24
  store i32 %27, i32* %25, align 8
  %28 = load i32, i32* @INVPCID_CTX, align 4
  %29 = call i32 @invpcid(%struct.invpcid_descr* %1, i32 %28)
  br label %30

30:                                               ; preds = %21, %18
  %31 = load i32, i32* @smp_tlb_done, align 4
  %32 = load i32, i32* %2, align 4
  %33 = call i32 @PCPU_SET(i32 %31, i32 %32)
  ret void
}

declare dso_local i64 @PCPU_GET(i32) #1

declare dso_local i32 @invpcid(%struct.invpcid_descr*, i32) #1

declare dso_local i32 @PCPU_SET(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
