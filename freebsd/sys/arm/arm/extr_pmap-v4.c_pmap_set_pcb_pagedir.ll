; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/arm/extr_pmap-v4.c_pmap_set_pcb_pagedir.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/arm/extr_pmap-v4.c_pmap_set_pcb_pagedir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32*, i32 }
%struct.pcb = type { i32, i32, i32*, i32 }
%struct.l2_bucket = type { i32 }

@DOMAIN_CLIENT = common dso_local global i32 0, align 4
@PMAP_DOMAIN_KERNEL = common dso_local global i32 0, align 4
@vector_page = common dso_local global i64 0, align 8
@KERNBASE = common dso_local global i64 0, align 8
@L1_C_PROTO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pmap_set_pcb_pagedir(%struct.TYPE_6__* %0, %struct.pcb* %1) #0 {
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca %struct.pcb*, align 8
  %5 = alloca %struct.l2_bucket*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  store %struct.pcb* %1, %struct.pcb** %4, align 8
  %6 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %7 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 1
  %8 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 8
  %11 = load %struct.pcb*, %struct.pcb** %4, align 8
  %12 = getelementptr inbounds %struct.pcb, %struct.pcb* %11, i32 0, i32 3
  store i32 %10, i32* %12, align 8
  %13 = load i32, i32* @DOMAIN_CLIENT, align 4
  %14 = load i32, i32* @PMAP_DOMAIN_KERNEL, align 4
  %15 = mul nsw i32 %14, 2
  %16 = shl i32 %13, %15
  %17 = load i32, i32* @DOMAIN_CLIENT, align 4
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = mul nsw i32 %20, 2
  %22 = shl i32 %17, %21
  %23 = or i32 %16, %22
  %24 = load %struct.pcb*, %struct.pcb** %4, align 8
  %25 = getelementptr inbounds %struct.pcb, %struct.pcb* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 8
  %26 = load i64, i64* @vector_page, align 8
  %27 = load i64, i64* @KERNBASE, align 8
  %28 = icmp slt i64 %26, %27
  br i1 %28, label %29, label %58

29:                                               ; preds = %2
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 1
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = load i64, i64* @vector_page, align 8
  %36 = call i64 @L1_IDX(i64 %35)
  %37 = getelementptr inbounds i32, i32* %34, i64 %36
  %38 = load %struct.pcb*, %struct.pcb** %4, align 8
  %39 = getelementptr inbounds %struct.pcb, %struct.pcb* %38, i32 0, i32 2
  store i32* %37, i32** %39, align 8
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %41 = load i64, i64* @vector_page, align 8
  %42 = call %struct.l2_bucket* @pmap_get_l2_bucket(%struct.TYPE_6__* %40, i64 %41)
  store %struct.l2_bucket* %42, %struct.l2_bucket** %5, align 8
  %43 = load %struct.l2_bucket*, %struct.l2_bucket** %5, align 8
  %44 = getelementptr inbounds %struct.l2_bucket, %struct.l2_bucket* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @L1_C_PROTO, align 4
  %47 = or i32 %45, %46
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @L1_C_DOM(i32 %50)
  %52 = or i32 %47, %51
  %53 = load i32, i32* @PMAP_DOMAIN_KERNEL, align 4
  %54 = call i32 @L1_C_DOM(i32 %53)
  %55 = or i32 %52, %54
  %56 = load %struct.pcb*, %struct.pcb** %4, align 8
  %57 = getelementptr inbounds %struct.pcb, %struct.pcb* %56, i32 0, i32 1
  store i32 %55, i32* %57, align 4
  br label %61

58:                                               ; preds = %2
  %59 = load %struct.pcb*, %struct.pcb** %4, align 8
  %60 = getelementptr inbounds %struct.pcb, %struct.pcb* %59, i32 0, i32 2
  store i32* null, i32** %60, align 8
  br label %61

61:                                               ; preds = %58, %29
  ret void
}

declare dso_local i64 @L1_IDX(i64) #1

declare dso_local %struct.l2_bucket* @pmap_get_l2_bucket(%struct.TYPE_6__*, i64) #1

declare dso_local i32 @L1_C_DOM(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
