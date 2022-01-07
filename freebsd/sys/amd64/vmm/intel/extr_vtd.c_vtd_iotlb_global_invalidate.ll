; ModuleID = '/home/carl/AnghaBench/freebsd/sys/amd64/vmm/intel/extr_vtd.c_vtd_iotlb_global_invalidate.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/amd64/vmm/intel/extr_vtd.c_vtd_iotlb_global_invalidate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vtdmap = type { i32 }

@VTD_IIR_IVT = common dso_local global i32 0, align 4
@VTD_IIR_IIRG_GLOBAL = common dso_local global i32 0, align 4
@VTD_IIR_DRAIN_READS = common dso_local global i32 0, align 4
@VTD_IIR_DRAIN_WRITES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vtdmap*)* @vtd_iotlb_global_invalidate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vtd_iotlb_global_invalidate(%struct.vtdmap* %0) #0 {
  %2 = alloca %struct.vtdmap*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  store %struct.vtdmap* %0, %struct.vtdmap** %2, align 8
  %6 = load %struct.vtdmap*, %struct.vtdmap** %2, align 8
  %7 = call i32 @vtd_wbflush(%struct.vtdmap* %6)
  %8 = load %struct.vtdmap*, %struct.vtdmap** %2, align 8
  %9 = getelementptr inbounds %struct.vtdmap, %struct.vtdmap* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @VTD_ECAP_IRO(i32 %10)
  %12 = mul nsw i32 %11, 16
  store i32 %12, i32* %3, align 4
  %13 = load %struct.vtdmap*, %struct.vtdmap** %2, align 8
  %14 = ptrtoint %struct.vtdmap* %13 to i64
  %15 = load i32, i32* %3, align 4
  %16 = sext i32 %15 to i64
  %17 = add nsw i64 %14, %16
  %18 = add nsw i64 %17, 8
  %19 = inttoptr i64 %18 to i32*
  store i32* %19, i32** %4, align 8
  %20 = load volatile i32, i32* @VTD_IIR_IVT, align 4
  %21 = load volatile i32, i32* @VTD_IIR_IIRG_GLOBAL, align 4
  %22 = or i32 %20, %21
  %23 = load volatile i32, i32* @VTD_IIR_DRAIN_READS, align 4
  %24 = or i32 %22, %23
  %25 = load volatile i32, i32* @VTD_IIR_DRAIN_WRITES, align 4
  %26 = or i32 %24, %25
  %27 = load i32*, i32** %4, align 8
  store volatile i32 %26, i32* %27, align 4
  br label %28

28:                                               ; preds = %1, %36
  %29 = load i32*, i32** %4, align 8
  %30 = load volatile i32, i32* %29, align 4
  store volatile i32 %30, i32* %5, align 4
  %31 = load volatile i32, i32* %5, align 4
  %32 = load volatile i32, i32* @VTD_IIR_IVT, align 4
  %33 = and i32 %31, %32
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %28
  br label %37

36:                                               ; preds = %28
  br label %28

37:                                               ; preds = %35
  ret void
}

declare dso_local i32 @vtd_wbflush(%struct.vtdmap*) #1

declare dso_local i32 @VTD_ECAP_IRO(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
