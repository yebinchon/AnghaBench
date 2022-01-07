; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/BM/extr_bm_portal.c_try_rel_start.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/BM/extr_bm_portal.c_try_rel_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bm_rcr_entry = type { i32 }
%struct.TYPE_7__ = type { i32 }

@RCR_THRESH = common dso_local global i64 0, align 8
@BM_RCR_RING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.bm_rcr_entry* (%struct.TYPE_7__*)* @try_rel_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.bm_rcr_entry* @try_rel_start(%struct.TYPE_7__* %0) #0 {
  %2 = alloca %struct.TYPE_7__*, align 8
  %3 = alloca %struct.bm_rcr_entry*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %2, align 8
  %4 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %5 = call i32 @NCSW_PLOCK(%struct.TYPE_7__* %4)
  %6 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %7 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call i64 @bm_rcr_get_avail(i32 %8)
  %10 = load i64, i64* @RCR_THRESH, align 8
  %11 = icmp slt i64 %9, %10
  br i1 %11, label %12, label %16

12:                                               ; preds = %1
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %14 = load i32, i32* @BM_RCR_RING, align 4
  %15 = call i32 @BmUpdate(%struct.TYPE_7__* %13, i32 %14)
  br label %16

16:                                               ; preds = %12, %1
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call %struct.bm_rcr_entry* @bm_rcr_start(i32 %19)
  store %struct.bm_rcr_entry* %20, %struct.bm_rcr_entry** %3, align 8
  %21 = load %struct.bm_rcr_entry*, %struct.bm_rcr_entry** %3, align 8
  %22 = icmp ne %struct.bm_rcr_entry* %21, null
  br i1 %22, label %28, label %23

23:                                               ; preds = %16
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %25 = call i32 @rel_set_thresh(%struct.TYPE_7__* %24, i32 1)
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %27 = call i32 @PUNLOCK(%struct.TYPE_7__* %26)
  br label %28

28:                                               ; preds = %23, %16
  %29 = load %struct.bm_rcr_entry*, %struct.bm_rcr_entry** %3, align 8
  ret %struct.bm_rcr_entry* %29
}

declare dso_local i32 @NCSW_PLOCK(%struct.TYPE_7__*) #1

declare dso_local i64 @bm_rcr_get_avail(i32) #1

declare dso_local i32 @BmUpdate(%struct.TYPE_7__*, i32) #1

declare dso_local %struct.bm_rcr_entry* @bm_rcr_start(i32) #1

declare dso_local i32 @rel_set_thresh(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @PUNLOCK(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
