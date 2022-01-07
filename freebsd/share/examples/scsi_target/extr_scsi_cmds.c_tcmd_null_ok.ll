; ModuleID = '/home/carl/AnghaBench/freebsd/share/examples/scsi_target/extr_scsi_cmds.c_tcmd_null_ok.c'
source_filename = "/home/carl/AnghaBench/freebsd/share/examples/scsi_target/extr_scsi_cmds.c_tcmd_null_ok.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ccb_accept_tio = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }
%struct.ccb_scsiio = type { i32, %struct.TYPE_4__, i64 }
%struct.TYPE_4__ = type { i32 }
%struct.atio_descr = type { i32 }

@debug = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [25 x i8] c"Sending null ok to %u : \00", align 1
@CAM_DIR_MASK = common dso_local global i32 0, align 4
@CAM_DIR_NONE = common dso_local global i32 0, align 4
@CAM_SEND_STATUS = common dso_local global i32 0, align 4
@SCSI_STATUS_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ccb_accept_tio*, %struct.ccb_scsiio*)* @tcmd_null_ok to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tcmd_null_ok(%struct.ccb_accept_tio* %0, %struct.ccb_scsiio* %1) #0 {
  %3 = alloca %struct.ccb_accept_tio*, align 8
  %4 = alloca %struct.ccb_scsiio*, align 8
  %5 = alloca %struct.atio_descr*, align 8
  store %struct.ccb_accept_tio* %0, %struct.ccb_accept_tio** %3, align 8
  store %struct.ccb_scsiio* %1, %struct.ccb_scsiio** %4, align 8
  %6 = load i64, i64* @debug, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %21

8:                                                ; preds = %2
  %9 = load %struct.ccb_accept_tio*, %struct.ccb_accept_tio** %3, align 8
  %10 = getelementptr inbounds %struct.ccb_accept_tio, %struct.ccb_accept_tio* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = inttoptr i64 %12 to %struct.atio_descr*
  store %struct.atio_descr* %13, %struct.atio_descr** %5, align 8
  %14 = load %struct.atio_descr*, %struct.atio_descr** %5, align 8
  %15 = getelementptr inbounds %struct.atio_descr, %struct.atio_descr* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.ccb_accept_tio*, %struct.ccb_accept_tio** %3, align 8
  %18 = getelementptr inbounds %struct.ccb_accept_tio, %struct.ccb_accept_tio* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @cdb_debug(i32 %16, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %19)
  br label %21

21:                                               ; preds = %8, %2
  %22 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %4, align 8
  %23 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %22, i32 0, i32 2
  store i64 0, i64* %23, align 8
  %24 = load i32, i32* @CAM_DIR_MASK, align 4
  %25 = xor i32 %24, -1
  %26 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %4, align 8
  %27 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = and i32 %29, %25
  store i32 %30, i32* %28, align 4
  %31 = load i32, i32* @CAM_DIR_NONE, align 4
  %32 = load i32, i32* @CAM_SEND_STATUS, align 4
  %33 = or i32 %31, %32
  %34 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %4, align 8
  %35 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = or i32 %37, %33
  store i32 %38, i32* %36, align 4
  %39 = load i32, i32* @SCSI_STATUS_OK, align 4
  %40 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %4, align 8
  %41 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 8
  ret i32 0
}

declare dso_local i32 @cdb_debug(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
