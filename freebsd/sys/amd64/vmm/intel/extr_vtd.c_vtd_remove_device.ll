; ModuleID = '/home/carl/AnghaBench/freebsd/sys/amd64/vmm/intel/extr_vtd.c_vtd_remove_device.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/amd64/vmm/intel/extr_vtd.c_vtd_remove_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vtdmap = type { i32 }

@ctx_tables = common dso_local global i64** null, align 8
@drhd_num = common dso_local global i32 0, align 4
@vtdmaps = common dso_local global %struct.vtdmap** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @vtd_remove_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vtd_remove_device(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64*, align 8
  %8 = alloca %struct.vtdmap*, align 8
  %9 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load i32, i32* %4, align 4
  %11 = call i64 @PCI_RID2BUS(i32 %10)
  store i64 %11, i64* %9, align 8
  %12 = load i64**, i64*** @ctx_tables, align 8
  %13 = load i64, i64* %9, align 8
  %14 = getelementptr inbounds i64*, i64** %12, i64 %13
  %15 = load i64*, i64** %14, align 8
  store i64* %15, i64** %7, align 8
  %16 = load i32, i32* %4, align 4
  %17 = call i32 @VTD_RID2IDX(i32 %16)
  store i32 %17, i32* %6, align 4
  %18 = load i64*, i64** %7, align 8
  %19 = load i32, i32* %6, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i64, i64* %18, i64 %20
  store i64 0, i64* %21, align 8
  %22 = load i64*, i64** %7, align 8
  %23 = load i32, i32* %6, align 4
  %24 = add nsw i32 %23, 1
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i64, i64* %22, i64 %25
  store i64 0, i64* %26, align 8
  store i32 0, i32* %5, align 4
  br label %27

27:                                               ; preds = %41, %2
  %28 = load i32, i32* %5, align 4
  %29 = load i32, i32* @drhd_num, align 4
  %30 = icmp slt i32 %28, %29
  br i1 %30, label %31, label %44

31:                                               ; preds = %27
  %32 = load %struct.vtdmap**, %struct.vtdmap*** @vtdmaps, align 8
  %33 = load i32, i32* %5, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.vtdmap*, %struct.vtdmap** %32, i64 %34
  %36 = load %struct.vtdmap*, %struct.vtdmap** %35, align 8
  store %struct.vtdmap* %36, %struct.vtdmap** %8, align 8
  %37 = load %struct.vtdmap*, %struct.vtdmap** %8, align 8
  %38 = call i32 @vtd_ctx_global_invalidate(%struct.vtdmap* %37)
  %39 = load %struct.vtdmap*, %struct.vtdmap** %8, align 8
  %40 = call i32 @vtd_iotlb_global_invalidate(%struct.vtdmap* %39)
  br label %41

41:                                               ; preds = %31
  %42 = load i32, i32* %5, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %5, align 4
  br label %27

44:                                               ; preds = %27
  ret void
}

declare dso_local i64 @PCI_RID2BUS(i32) #1

declare dso_local i32 @VTD_RID2IDX(i32) #1

declare dso_local i32 @vtd_ctx_global_invalidate(%struct.vtdmap*) #1

declare dso_local i32 @vtd_iotlb_global_invalidate(%struct.vtdmap*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
