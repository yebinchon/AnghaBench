; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/scsi/extr_scsi_xpt.c_scsi_action.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/scsi/extr_scsi_xpt.c_scsi_action.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.ccb = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_5__ = type { i32 }

@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%union.ccb*)* @scsi_action to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @scsi_action(%union.ccb* %0) #0 {
  %2 = alloca %union.ccb*, align 8
  store %union.ccb* %0, %union.ccb** %2, align 8
  %3 = load %union.ccb*, %union.ccb** %2, align 8
  %4 = bitcast %union.ccb* %3 to %struct.TYPE_6__*
  %5 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  switch i32 %6, label %45 [
    i32 128, label %7
    i32 131, label %16
    i32 129, label %16
    i32 130, label %25
    i32 132, label %42
  ]

7:                                                ; preds = %1
  %8 = load %union.ccb*, %union.ccb** %2, align 8
  %9 = bitcast %union.ccb* %8 to i32*
  %10 = load %union.ccb*, %union.ccb** %2, align 8
  %11 = bitcast %union.ccb* %10 to %struct.TYPE_6__*
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 1
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %14 = load i32, i32* @FALSE, align 4
  %15 = call i32 @scsi_set_transfer_settings(i32* %9, %struct.TYPE_7__* %13, i32 %14)
  br label %48

16:                                               ; preds = %1, %1
  %17 = load %union.ccb*, %union.ccb** %2, align 8
  %18 = bitcast %union.ccb* %17 to %struct.TYPE_6__*
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 1
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load %union.ccb*, %union.ccb** %2, align 8
  %24 = call i32 @scsi_scan_bus(i32 %22, %union.ccb* %23)
  br label %48

25:                                               ; preds = %1
  %26 = load %union.ccb*, %union.ccb** %2, align 8
  %27 = bitcast %union.ccb* %26 to %struct.TYPE_6__*
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 1
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load %union.ccb*, %union.ccb** %2, align 8
  %33 = bitcast %union.ccb* %32 to %struct.TYPE_6__*
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 1
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %34, align 8
  %36 = load %union.ccb*, %union.ccb** %2, align 8
  %37 = bitcast %union.ccb* %36 to %struct.TYPE_5__*
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load %union.ccb*, %union.ccb** %2, align 8
  %41 = call i32 @scsi_scan_lun(i32 %31, %struct.TYPE_7__* %35, i32 %39, %union.ccb* %40)
  br label %48

42:                                               ; preds = %1
  %43 = load %union.ccb*, %union.ccb** %2, align 8
  %44 = call i32 @scsi_dev_advinfo(%union.ccb* %43)
  br label %48

45:                                               ; preds = %1
  %46 = load %union.ccb*, %union.ccb** %2, align 8
  %47 = call i32 @xpt_action_default(%union.ccb* %46)
  br label %48

48:                                               ; preds = %45, %42, %25, %16, %7
  ret void
}

declare dso_local i32 @scsi_set_transfer_settings(i32*, %struct.TYPE_7__*, i32) #1

declare dso_local i32 @scsi_scan_bus(i32, %union.ccb*) #1

declare dso_local i32 @scsi_scan_lun(i32, %struct.TYPE_7__*, i32, %union.ccb*) #1

declare dso_local i32 @scsi_dev_advinfo(%union.ccb*) #1

declare dso_local i32 @xpt_action_default(%union.ccb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
