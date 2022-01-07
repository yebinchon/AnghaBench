; ModuleID = '/home/carl/AnghaBench/freebsd/sys/amd64/amd64/extr_mp_machdep.c_invlpg_invpcid_handler.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/amd64/amd64/extr_mp_machdep.c_invlpg_invpcid_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.invpcid_descr = type { i32, i32, i64 }

@smp_tlb_generation = common dso_local global i32 0, align 4
@smp_tlb_addr1 = common dso_local global i32 0, align 4
@smp_tlb_pmap = common dso_local global %struct.TYPE_4__* null, align 8
@PMAP_NO_CR3 = common dso_local global i64 0, align 8
@cpuid = common dso_local global i32 0, align 4
@PMAP_PCID_USER_PT = common dso_local global i32 0, align 4
@INVPCID_ADDR = common dso_local global i32 0, align 4
@smp_tlb_done = common dso_local global i32 0, align 4
@ipi_invlpg_counts = common dso_local global i32** null, align 8
@xhits_pg = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @invlpg_invpcid_handler() #0 {
  %1 = alloca %struct.invpcid_descr, align 8
  %2 = alloca i32, align 4
  %3 = load i32, i32* @smp_tlb_generation, align 4
  store i32 %3, i32* %2, align 4
  %4 = load i32, i32* @smp_tlb_addr1, align 4
  %5 = call i32 @invlpg(i32 %4)
  %6 = load %struct.TYPE_4__*, %struct.TYPE_4__** @smp_tlb_pmap, align 8
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @PMAP_NO_CR3, align 8
  %10 = icmp ne i64 %8, %9
  br i1 %10, label %11, label %28

11:                                               ; preds = %0
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** @smp_tlb_pmap, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 1
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %15 = load i32, i32* @cpuid, align 4
  %16 = call i64 @PCPU_GET(i32 %15)
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i64 %16
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @PMAP_PCID_USER_PT, align 4
  %21 = or i32 %19, %20
  %22 = getelementptr inbounds %struct.invpcid_descr, %struct.invpcid_descr* %1, i32 0, i32 0
  store i32 %21, i32* %22, align 8
  %23 = getelementptr inbounds %struct.invpcid_descr, %struct.invpcid_descr* %1, i32 0, i32 2
  store i64 0, i64* %23, align 8
  %24 = load i32, i32* @smp_tlb_addr1, align 4
  %25 = getelementptr inbounds %struct.invpcid_descr, %struct.invpcid_descr* %1, i32 0, i32 1
  store i32 %24, i32* %25, align 4
  %26 = load i32, i32* @INVPCID_ADDR, align 4
  %27 = call i32 @invpcid(%struct.invpcid_descr* %1, i32 %26)
  br label %28

28:                                               ; preds = %11, %0
  %29 = load i32, i32* @smp_tlb_done, align 4
  %30 = load i32, i32* %2, align 4
  %31 = call i32 @PCPU_SET(i32 %29, i32 %30)
  ret void
}

declare dso_local i32 @invlpg(i32) #1

declare dso_local i64 @PCPU_GET(i32) #1

declare dso_local i32 @invpcid(%struct.invpcid_descr*, i32) #1

declare dso_local i32 @PCPU_SET(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
