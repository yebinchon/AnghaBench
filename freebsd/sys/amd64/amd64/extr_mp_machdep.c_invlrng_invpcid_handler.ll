; ModuleID = '/home/carl/AnghaBench/freebsd/sys/amd64/amd64/extr_mp_machdep.c_invlrng_invpcid_handler.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/amd64/amd64/extr_mp_machdep.c_invlrng_invpcid_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.invpcid_descr = type { i32, i64, i64 }

@smp_tlb_addr1 = common dso_local global i8* null, align 8
@smp_tlb_addr2 = common dso_local global i64 0, align 8
@smp_tlb_generation = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i64 0, align 8
@smp_tlb_pmap = common dso_local global %struct.TYPE_4__* null, align 8
@PMAP_NO_CR3 = common dso_local global i64 0, align 8
@cpuid = common dso_local global i32 0, align 4
@PMAP_PCID_USER_PT = common dso_local global i32 0, align 4
@INVPCID_ADDR = common dso_local global i32 0, align 4
@smp_tlb_done = common dso_local global i32 0, align 4
@ipi_invlrng_counts = common dso_local global i32** null, align 8
@xhits_rng = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @invlrng_invpcid_handler() #0 {
  %1 = alloca %struct.invpcid_descr, align 8
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = load i8*, i8** @smp_tlb_addr1, align 8
  %6 = ptrtoint i8* %5 to i64
  store i64 %6, i64* %2, align 8
  %7 = load i64, i64* @smp_tlb_addr2, align 8
  store i64 %7, i64* %3, align 8
  %8 = load i32, i32* @smp_tlb_generation, align 4
  store i32 %8, i32* %4, align 4
  br label %9

9:                                                ; preds = %15, %0
  %10 = load i64, i64* %2, align 8
  %11 = call i32 @invlpg(i64 %10)
  %12 = load i64, i64* @PAGE_SIZE, align 8
  %13 = load i64, i64* %2, align 8
  %14 = add nsw i64 %13, %12
  store i64 %14, i64* %2, align 8
  br label %15

15:                                               ; preds = %9
  %16 = load i64, i64* %2, align 8
  %17 = load i64, i64* %3, align 8
  %18 = icmp slt i64 %16, %17
  br i1 %18, label %9, label %19

19:                                               ; preds = %15
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** @smp_tlb_pmap, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @PMAP_NO_CR3, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %54

25:                                               ; preds = %19
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** @smp_tlb_pmap, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 1
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %27, align 8
  %29 = load i32, i32* @cpuid, align 4
  %30 = call i64 @PCPU_GET(i32 %29)
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @PMAP_PCID_USER_PT, align 4
  %35 = or i32 %33, %34
  %36 = getelementptr inbounds %struct.invpcid_descr, %struct.invpcid_descr* %1, i32 0, i32 0
  store i32 %35, i32* %36, align 8
  %37 = getelementptr inbounds %struct.invpcid_descr, %struct.invpcid_descr* %1, i32 0, i32 2
  store i64 0, i64* %37, align 8
  %38 = load i8*, i8** @smp_tlb_addr1, align 8
  %39 = ptrtoint i8* %38 to i64
  %40 = getelementptr inbounds %struct.invpcid_descr, %struct.invpcid_descr* %1, i32 0, i32 1
  store i64 %39, i64* %40, align 8
  br label %41

41:                                               ; preds = %48, %25
  %42 = load i32, i32* @INVPCID_ADDR, align 4
  %43 = call i32 @invpcid(%struct.invpcid_descr* %1, i32 %42)
  %44 = load i64, i64* @PAGE_SIZE, align 8
  %45 = getelementptr inbounds %struct.invpcid_descr, %struct.invpcid_descr* %1, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = add nsw i64 %46, %44
  store i64 %47, i64* %45, align 8
  br label %48

48:                                               ; preds = %41
  %49 = getelementptr inbounds %struct.invpcid_descr, %struct.invpcid_descr* %1, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* %3, align 8
  %52 = icmp slt i64 %50, %51
  br i1 %52, label %41, label %53

53:                                               ; preds = %48
  br label %54

54:                                               ; preds = %53, %19
  %55 = load i32, i32* @smp_tlb_done, align 4
  %56 = load i32, i32* %4, align 4
  %57 = call i32 @PCPU_SET(i32 %55, i32 %56)
  ret void
}

declare dso_local i32 @invlpg(i64) #1

declare dso_local i64 @PCPU_GET(i32) #1

declare dso_local i32 @invpcid(%struct.invpcid_descr*, i32) #1

declare dso_local i32 @PCPU_SET(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
