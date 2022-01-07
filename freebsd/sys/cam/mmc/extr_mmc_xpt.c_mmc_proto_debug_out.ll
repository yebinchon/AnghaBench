; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/mmc/extr_mmc_xpt.c_mmc_proto_debug_out.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/mmc/extr_mmc_xpt.c_mmc_proto_debug_out.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.ccb = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32 }

@XPT_MMC_IO = common dso_local global i64 0, align 8
@CAM_DEBUG_CDB = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"mmc_proto_debug_out\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%union.ccb*)* @mmc_proto_debug_out to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mmc_proto_debug_out(%union.ccb* %0) #0 {
  %2 = alloca %union.ccb*, align 8
  store %union.ccb* %0, %union.ccb** %2, align 8
  %3 = load %union.ccb*, %union.ccb** %2, align 8
  %4 = bitcast %union.ccb* %3 to %struct.TYPE_2__*
  %5 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @XPT_MMC_IO, align 8
  %8 = icmp ne i64 %6, %7
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  br label %17

10:                                               ; preds = %1
  %11 = load %union.ccb*, %union.ccb** %2, align 8
  %12 = bitcast %union.ccb* %11 to %struct.TYPE_2__*
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* @CAM_DEBUG_CDB, align 4
  %16 = call i32 @CAM_DEBUG(i32 %14, i32 %15, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  br label %17

17:                                               ; preds = %10, %9
  ret void
}

declare dso_local i32 @CAM_DEBUG(i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
