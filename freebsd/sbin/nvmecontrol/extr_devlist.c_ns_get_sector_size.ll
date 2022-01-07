; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/nvmecontrol/extr_devlist.c_ns_get_sector_size.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/nvmecontrol/extr_devlist.c_ns_get_sector_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvme_namespace_data = type { i64, i64* }

@NVME_NS_DATA_FLBAS_FORMAT_SHIFT = common dso_local global i64 0, align 8
@NVME_NS_DATA_FLBAS_FORMAT_MASK = common dso_local global i64 0, align 8
@NVME_NS_DATA_LBAF_LBADS_SHIFT = common dso_local global i64 0, align 8
@NVME_NS_DATA_LBAF_LBADS_MASK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvme_namespace_data*)* @ns_get_sector_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ns_get_sector_size(%struct.nvme_namespace_data* %0) #0 {
  %2 = alloca %struct.nvme_namespace_data*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store %struct.nvme_namespace_data* %0, %struct.nvme_namespace_data** %2, align 8
  %5 = load %struct.nvme_namespace_data*, %struct.nvme_namespace_data** %2, align 8
  %6 = getelementptr inbounds %struct.nvme_namespace_data, %struct.nvme_namespace_data* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @NVME_NS_DATA_FLBAS_FORMAT_SHIFT, align 8
  %9 = lshr i64 %7, %8
  %10 = load i64, i64* @NVME_NS_DATA_FLBAS_FORMAT_MASK, align 8
  %11 = and i64 %9, %10
  store i64 %11, i64* %3, align 8
  %12 = load %struct.nvme_namespace_data*, %struct.nvme_namespace_data** %2, align 8
  %13 = getelementptr inbounds %struct.nvme_namespace_data, %struct.nvme_namespace_data* %12, i32 0, i32 1
  %14 = load i64*, i64** %13, align 8
  %15 = load i64, i64* %3, align 8
  %16 = getelementptr inbounds i64, i64* %14, i64 %15
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @NVME_NS_DATA_LBAF_LBADS_SHIFT, align 8
  %19 = lshr i64 %17, %18
  %20 = load i64, i64* @NVME_NS_DATA_LBAF_LBADS_MASK, align 8
  %21 = and i64 %19, %20
  store i64 %21, i64* %4, align 8
  %22 = load i64, i64* %4, align 8
  %23 = trunc i64 %22 to i32
  %24 = shl i32 1, %23
  ret i32 %24
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
