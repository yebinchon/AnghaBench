; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/nvme/extr_nvme_xpt.c_nvme_proto_debug_out.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/nvme/extr_nvme_xpt.c_nvme_proto_debug_out.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.ccb = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i32 }
%struct.TYPE_3__ = type { i32 }

@XPT_NVME_IO = common dso_local global i64 0, align 8
@XPT_NVME_ADMIN = common dso_local global i64 0, align 8
@CAM_DEBUG_CDB = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"%s. NCB: %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%union.ccb*)* @nvme_proto_debug_out to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nvme_proto_debug_out(%union.ccb* %0) #0 {
  %2 = alloca %union.ccb*, align 8
  %3 = alloca [13 x i8], align 1
  store %union.ccb* %0, %union.ccb** %2, align 8
  %4 = load %union.ccb*, %union.ccb** %2, align 8
  %5 = bitcast %union.ccb* %4 to %struct.TYPE_4__*
  %6 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @XPT_NVME_IO, align 8
  %9 = icmp ne i64 %7, %8
  br i1 %9, label %10, label %18

10:                                               ; preds = %1
  %11 = load %union.ccb*, %union.ccb** %2, align 8
  %12 = bitcast %union.ccb* %11 to %struct.TYPE_4__*
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @XPT_NVME_ADMIN, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %10
  br label %43

18:                                               ; preds = %10, %1
  %19 = load %union.ccb*, %union.ccb** %2, align 8
  %20 = bitcast %union.ccb* %19 to %struct.TYPE_4__*
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @CAM_DEBUG_CDB, align 4
  %24 = load %union.ccb*, %union.ccb** %2, align 8
  %25 = bitcast %union.ccb* %24 to %struct.TYPE_3__*
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load %union.ccb*, %union.ccb** %2, align 8
  %28 = bitcast %union.ccb* %27 to %struct.TYPE_4__*
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @XPT_NVME_ADMIN, align 8
  %32 = icmp eq i64 %30, %31
  %33 = zext i1 %32 to i32
  %34 = call i32 @nvme_op_string(i32* %26, i32 %33)
  %35 = load %union.ccb*, %union.ccb** %2, align 8
  %36 = bitcast %union.ccb* %35 to %struct.TYPE_3__*
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = getelementptr inbounds [13 x i8], [13 x i8]* %3, i64 0, i64 0
  %39 = call i32 @nvme_cmd_string(i32* %37, i8* %38, i32 13)
  %40 = sext i32 %39 to i64
  %41 = inttoptr i64 %40 to i8*
  %42 = call i32 @CAM_DEBUG(i32 %22, i32 %23, i8* %41)
  br label %43

43:                                               ; preds = %18, %17
  ret void
}

declare dso_local i32 @CAM_DEBUG(i32, i32, i8*) #1

declare dso_local i32 @nvme_op_string(i32*, i32) #1

declare dso_local i32 @nvme_cmd_string(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
