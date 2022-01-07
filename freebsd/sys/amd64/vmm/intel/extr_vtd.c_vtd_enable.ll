; ModuleID = '/home/carl/AnghaBench/freebsd/sys/amd64/vmm/intel/extr_vtd.c_vtd_enable.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/amd64/vmm/intel/extr_vtd.c_vtd_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vtdmap = type { i32, i32, i32 }

@drhd_num = common dso_local global i32 0, align 4
@vtdmaps = common dso_local global %struct.vtdmap** null, align 8
@root_table = common dso_local global i32 0, align 4
@VTD_GCR_SRTP = common dso_local global i32 0, align 4
@VTD_GSR_RTPS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @vtd_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vtd_enable() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.vtdmap*, align 8
  store i32 0, i32* %1, align 4
  br label %3

3:                                                ; preds = %37, %0
  %4 = load i32, i32* %1, align 4
  %5 = load i32, i32* @drhd_num, align 4
  %6 = icmp slt i32 %4, %5
  br i1 %6, label %7, label %40

7:                                                ; preds = %3
  %8 = load %struct.vtdmap**, %struct.vtdmap*** @vtdmaps, align 8
  %9 = load i32, i32* %1, align 4
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds %struct.vtdmap*, %struct.vtdmap** %8, i64 %10
  %12 = load %struct.vtdmap*, %struct.vtdmap** %11, align 8
  store %struct.vtdmap* %12, %struct.vtdmap** %2, align 8
  %13 = load %struct.vtdmap*, %struct.vtdmap** %2, align 8
  %14 = call i32 @vtd_wbflush(%struct.vtdmap* %13)
  %15 = load i32, i32* @root_table, align 4
  %16 = call i32 @vtophys(i32 %15)
  %17 = load %struct.vtdmap*, %struct.vtdmap** %2, align 8
  %18 = getelementptr inbounds %struct.vtdmap, %struct.vtdmap* %17, i32 0, i32 2
  store i32 %16, i32* %18, align 4
  %19 = load i32, i32* @VTD_GCR_SRTP, align 4
  %20 = load %struct.vtdmap*, %struct.vtdmap** %2, align 8
  %21 = getelementptr inbounds %struct.vtdmap, %struct.vtdmap* %20, i32 0, i32 1
  store i32 %19, i32* %21, align 4
  br label %22

22:                                               ; preds = %29, %7
  %23 = load %struct.vtdmap*, %struct.vtdmap** %2, align 8
  %24 = getelementptr inbounds %struct.vtdmap, %struct.vtdmap* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @VTD_GSR_RTPS, align 4
  %27 = and i32 %25, %26
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %22
  br label %22

30:                                               ; preds = %22
  %31 = load %struct.vtdmap*, %struct.vtdmap** %2, align 8
  %32 = call i32 @vtd_ctx_global_invalidate(%struct.vtdmap* %31)
  %33 = load %struct.vtdmap*, %struct.vtdmap** %2, align 8
  %34 = call i32 @vtd_iotlb_global_invalidate(%struct.vtdmap* %33)
  %35 = load %struct.vtdmap*, %struct.vtdmap** %2, align 8
  %36 = call i32 @vtd_translation_enable(%struct.vtdmap* %35)
  br label %37

37:                                               ; preds = %30
  %38 = load i32, i32* %1, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %1, align 4
  br label %3

40:                                               ; preds = %3
  ret void
}

declare dso_local i32 @vtd_wbflush(%struct.vtdmap*) #1

declare dso_local i32 @vtophys(i32) #1

declare dso_local i32 @vtd_ctx_global_invalidate(%struct.vtdmap*) #1

declare dso_local i32 @vtd_iotlb_global_invalidate(%struct.vtdmap*) #1

declare dso_local i32 @vtd_translation_enable(%struct.vtdmap*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
