; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/ata/extr_ata_xpt.c_ata_proto_debug_out.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/ata/extr_ata_xpt.c_ata_proto_debug_out.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.ccb = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i32 }
%struct.TYPE_4__ = type { i32 }

@XPT_ATA_IO = common dso_local global i64 0, align 8
@CAM_DEBUG_CDB = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"%s. ACB: %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%union.ccb*)* @ata_proto_debug_out to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ata_proto_debug_out(%union.ccb* %0) #0 {
  %2 = alloca %union.ccb*, align 8
  %3 = alloca [13 x i8], align 1
  store %union.ccb* %0, %union.ccb** %2, align 8
  %4 = load %union.ccb*, %union.ccb** %2, align 8
  %5 = bitcast %union.ccb* %4 to %struct.TYPE_3__*
  %6 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @XPT_ATA_IO, align 8
  %9 = icmp ne i64 %7, %8
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  br label %29

11:                                               ; preds = %1
  %12 = load %union.ccb*, %union.ccb** %2, align 8
  %13 = bitcast %union.ccb* %12 to %struct.TYPE_3__*
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @CAM_DEBUG_CDB, align 4
  %17 = load %union.ccb*, %union.ccb** %2, align 8
  %18 = bitcast %union.ccb* %17 to %struct.TYPE_4__*
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = call i32 @ata_op_string(i32* %19)
  %21 = load %union.ccb*, %union.ccb** %2, align 8
  %22 = bitcast %union.ccb* %21 to %struct.TYPE_4__*
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = getelementptr inbounds [13 x i8], [13 x i8]* %3, i64 0, i64 0
  %25 = call i32 @ata_cmd_string(i32* %23, i8* %24, i32 13)
  %26 = sext i32 %25 to i64
  %27 = inttoptr i64 %26 to i8*
  %28 = call i32 @CAM_DEBUG(i32 %15, i32 %16, i8* %27)
  br label %29

29:                                               ; preds = %11, %10
  ret void
}

declare dso_local i32 @CAM_DEBUG(i32, i32, i8*) #1

declare dso_local i32 @ata_op_string(i32*) #1

declare dso_local i32 @ata_cmd_string(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
